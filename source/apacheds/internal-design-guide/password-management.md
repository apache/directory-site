---
Title: Apache DS - Password Management
Notice: Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at
    .
    http://www.apache.org/licenses/LICENSE-2.0
    .
    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.
---

# Password Management

There are four places where passwords are manipulated in ApacheDS:

* **authn** interceptor
* **hash** interceptor
* **PasswordPolicy**
* **PasswordModify** extended operation

It's all about having those four piece of code to work well together, considering the requirements are different, somehow.

## Default password storage

The password we use to authenticate a user when using a _SimpleBind_ request is _userPassword_. Ther eis no requirement that it is the attribute to use, per [RFC 4513, appendix B.2.5](https://tools.ietf.org/html/rfc4513#appendix-B.2.5) though :

    ::: text
    Removed the implication that the userPassword attribute is the sole
    location for storage of password values to be used in
    authentication.  There is no longer any implied requirement for how
    or where passwords are stored at the server for use in
    authentication.

This was like that for historical reasons, especially [RFC 2829, section 6.2](https://tools.ietf.org/html/rfc2829#section-6.2) :

    ::: text
    The server will, for each value of the userPassword attribute in the
    named user's entry, compare these for case-sensitive equality with
    the client's presented password.  If there is a match, then the
    server will respond with resultCode success, otherwise the server
    will respond with resultCode invalidCredentials.

So we keep going with _userPassword_.

Up to a point, changing that is not really a big deal: it's all about adding a new _Authenticator_ that does not check against the _userPassword_ attribute.

## Authentication with password

We aren't going to talk about other authentication mechanisms here (Anonymous, **SASL**, etc).

So the server receives a _BindRequest_ which contains the **DN** of a user that is expected to have a _userPassword_ attribute with the same value that the one contained in the request. The deal is to check that this user exists, and has the proper password. The algorithm is pretty simple :

    ::: text
    receive a BindReques with a DN and a password
    check if the DN user exists
    if not
      generate an error
    check that the user has a userPassword attribute
    if not
      generate an error
    for each value in this attribite
      check if it macthes with the provided password
      if so
        return success
    if we haven't matched any password
      generate an error

This is pretty straightforward, except that we may have more than one store password, because the _userPassword_ attributeType is multi-valued.

We have one more complication : we can store hashed passwords (actually, this *should* be the default). In thsi case, the hashed password is prefixed by the algorithm used to hash the password :

    ::: text
    {SHA512}XXXXXXXXXX...

So for each stored password, we first extract the algorithm, and use it to hash the provided password, and compare it with the stored hashed password.

This is implemented through the use of _Authenticator_ instances. There are 4 flavors of authenticators :

* _AnonymousAuthenticator_ : basically does nothing but create a _LdapSession_ if anonymous binds are allowed.
* _SimpleAuthenticator_ : checks that the bind DN and password fits, following the previously shown algorithm.
* _StrongAuthenticator_ : Only used when a SASL authentication has been done. It just creates the _LDapSession_
* _DelegatedAuthenticator_ : Delegate authentication to a remote **LDAP** server. Nothing fancy, it just does a _SimpleBind_.


In any case, the verification is done by the _authenticate()_ method.

Side note: We have a cache to speedup the authentication, and we also check the _PasswordPolicy_ if there is one that can be applied.

## Bind Request processing

When a _BindRequest_ is received by the server, it's handled by the _BindRequestHandler_ class, and in our case, its _handleSimpleAuth()_ method is called. We create a _BindOperationContext_ instance which contains all that is necessary during the **Bind** process. This context contains various informations :

* the _principal_ (ie the entry associated with the provided **DN**)
* the credentials (aka provided password), as a byte array
* the _IoSession_ instance (because we need to get some information related to the connection)
* plus some SASL information that are not useful here

Regardless of some subtilities (like dealing with referrals), we first load the target entry (it it exists !), then we call the interceptor chain with the created context. The **BIND** operation is processed by the two following interceptors :

* _AuthenticationInterceptor_ : manage the authentication
* _TimerInterceptor_ : compute the time it takes to process an operation (not active unless requested)

So all the work is done in the _AuthenticationInterceptor_ class. It selects the _authenticator_ instance to use, and calls the _authenticate()_ method.

TBC

# PasswordModify extended operation

When it comes to modify a password, one way to do it is to use the **Modify** operation, or to use the [PasswordModify](https://tools.ietf.org/html/rfc3062) extended operation. The second extends the semantic of the **Modify** operation, which must be applied to an entry. Typically, the _userIdentity_ that is used to describe the user which password must be changed can be a **DN**, or something else. It's up to the server to find out what this identify resolves to. For the same reason, the password isn't expected to be stored in a specific attribute, again it's up to the implemented to decide which filed has to store this password (assuming this information has to be stored in teh **DIT**, which is not mandated by the RFC...)

regarding **ApacheDS**, however, we currently expect the user identity to be the **DN** of an existing entry withing the **DIT**, and the modified password is _userPassword_. In some ways, it's pretty much a dedicated **Modify** operation, where you don't have to care about the attribute or the logic. All in all, it will do one of the following operations:

* If the identity is not provided, then the current user's password will be modified
* Otherwise, assuming the current user has the right to modify another entry's password, this will apply the modification to the identified entry
* If the old password is provided, the first thing the operation will do is to check that this password is valid, ie it can be used to bind the user subject to this password modification
* If the new password is not provided,  **ApacheDS** will **NOT** generate a password - the RFC suggest the implements **SHALL** generate a new password, or generate an error, we have chosen the second option
* If the new password is provided, it will replace the old password if provided, or will replace all the existing values of the _userPassword_ attribute (which can be multi-valued).

# PasswordPolicy management

The _PasswordPolicy_ is activated when we have an active subtree defining it (there is a default configuration, but one can set as many configuration as wanted). At the moment, such a configuration is either defined in the main configuration file, or as a subtree.

We use a _PpolicyConfigContainer_ instance to store all the existing _PasswordPolicy_ configuration. A call to the addPolicy( Dn, PasswordPolicyConfiguration )_ method will store those configuration in a _Map_.

The initialization of the default configuration is done in the _ServiceBuilder.createInterceptors()_ method, while processing the _AuthenticationInterceptorBean_ component.

## Execution

When a **Bind** operation occurs, the server will check the PasswordPolicy rules. This is done in the _SimpleAuthenticator.authenticate()_ method (note that we don't enforce the password policy for any other authentication mchanism : )

