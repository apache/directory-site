aci : 				10
adminRole: 			 3
alias: 				 4
authn: 				 9
authz: 			 	 2
backend: 			 2
build: 				 1
changepw: 		 	 1
config: 			 1
control: 			 5
core: 				 9
core-integ: 		 2
dhcp: 				 2
doc: 				 2
extop: 				 1
hash interceptor: 	 1
http: 				 1
index: 				 2
installer: 			24
installer-plugin: 	 5
jdbm: 				27
jdk: 		 		 1
ldap: 				25
mavibot: 			 6
network: 			 2
persistent search:   2
ppolicy: 			17
pwd interceptor: 	 1
referral: 			 1
replication: 		20
schema: 			 9
script: 			 1
search: 			10
security: 			 2
sp: 				 1
test: 				 1
upgrade: 			 5


PasswordPolicy
--------------

Password management and control is mst generally based on the RFC draft first published in 20 April 2000, with the latest version dated February 2022: https://datatracker.ietf.org/doc/html/draft-behera-ldap-password-policy-11

P.Behera, Nescape
V. Chu, Nescape
L. Poitou, Sun Microsystems
J. Sermersheim, Novell
J. Chu, Symas
O. Kuzník, Symas

## PasswordPolicy definition

A PasswordPolicy can be set globally or locally. We use the PpolicyConfigContainer class to store all the server's PasswordPolicies.

This instance is associated with the AuthenticationInterceptor instance. It may be empty if no PasswordPolicy is defined. Otherwise, it contains all of them.

Here is a default passwordPolicy as defined in the configuration:

```
ou=config
  |
  +-- ads-directoryServiceId=default
        |
        +-- ou=interceptors
             |
             +-- ads-interceptorId=authenticationInterceptor
                   |
                   +-- ou=passwordPolicies
                         |
                         +-- ads-pwdId=default
```

The associated entry looks like:

```
dn: ads-pwdId=default...
objectClass: top
objectClass: ads-base
objectClass: ads-passwordPolicy
ads-pwdId: default
ads-pwdSafeModify: FALSE
ads-pwdMaxAge: 0
ads-pwdFailureCountInterval: 30
ads-pwdAttribute: userPassword
ads-pwdMaxFailure: 5
ads-pwdLockout: TRUE
ads-pwdMustChange: FALSE
ads-pwdLockoutDuration: 0
ads-pwdMinLength: 5
ads-pwdInHistory: 5
ads-pwdExpireWarning: 600
ads-pwdMinAge: 0
ads-pwdAllowUserChange: TRUE
ads-pwdGraceAuthNLimit: 5
ads-pwdCheckQuality: 1
ads-pwdMaxLength: 0 
ads-pwdGraceExpire: 0
ads-pwdMinDelay: 0
ads-pwdMaxDelay: 0
ads-pwdMaxIdle: 0
ads-pwdValidator: org.apache.directory.server.core.api.authn.ppolicy.DefaultPasswordValidator
ads-enabled: TRUE
```

Note that you may define more than one, assuming he ads-pwId is different. 

The default PasswordPolicy will apply to the entire DIT, but may be overloaded by a local one.

### AttributeTypes

There are some new AttributeTypes which are declared. We have two sets:
- The first set is used to define how the PasswordPolicy should behaves, regardless of the user status
- The second set directely applies to each user.

#### Global attributeTypes:

Here is the set of configuration attributeTypes:
- pwdAttribute: The attribute that holds the password 
- pwdMinAge
- pwdMaxAge
- pwdInHistory
- pwdCheckQuality
- pwdMinLength
- pwdMaxLength
- pwdExpireWarning
- pwdGraceAuthNLimit
- pwdGraceExpiry
- pwdLockout
- pwdLockoutDuration
- pwdMaxFailure
- pwdFailureCountInterval
- pwdMustChange
- pwdAllowUserChange
- pwdSafeModify
- pwdMinDelay
- pwdMaxDelay
- pwdMaxIdle
- pwdMaxRecordedFailure

#### Entries attributeTypes:

Here is the set of AttributeTypes which are associated with every entry subject to the PasswordPolicy system (ie those which has an attribute as defined in pwdAttribute):
	- pwdChangedTime: The last time the entry's password was changed (stored in the entry)
	- pwdAccountLockedTime: The time that the user's account was locked (stored in the entry)
	- pwdFailureTime: The timestamps of the consecutive authentication failures (stored in the entry)
	- pwdHistory: A history of previously used passwords (stored in the entry)
	- pwdGraceUseTime: the timestamps of grace authentications after a password has expired (stored in the entry)
	- pwdReset: A flag to indicate (when TRUE) that the password has been updated by the password administrator and must be changed by the user (stored in the entry)
	- pwdPolicySubentry: The pwdPolicy subentry in effect for this object (Stored in the entry)
	- pwdStartTime: The time the entry's password becomes valid for authentication (stored in the entry)
	- pwdEndTime: The time the entry's password becomes invalid for authentication (stored in the entry)
	- pwdLastSuccess: holds the timestamp of the last successful authentication (stored in the entry)

If the PasswordPolicy configuration is defined *after* the entries have been created, some of those entries will have to be set. Typically:

- pwdChangedTime: should be set to the current time (8.2.7)
- pwdAccountLockedTime


##### pwdChangedTime

Should be added to the entry, as 5.3.2 says that if this Attribute is not present, then the password never expires.

* pwdMaxIdle: used when the pwdLastSuccess attribute is absent to check if the passwod is locked
* pwdMaxAge
* pwdMinAge

##### pwdAccountLockedTime

The following attributes and characteristics are related to the pwdAccountLockedTime one:

* Locked account: 000001010000Z
* Associated AT:  pwdLockoutDuration
* pwdLockoutDuration set to current time (8.1.3.2) when locking the user
* Policy state update: pwdLockoutDuration is removed from the entry

##### pwdFailureTime

* pwdFailureCountInterval
* pwdFailureTime
* pwdMinDelay
* pwdMaxDelay
* Policy state update: pwdFailureTime is removed from the entry

##### pwdHistory

* Policy state update: Add the new password to the pwdHistory attribute
* pwdInHistory

##### pwdGraceUseTime

* pwdGraceAuthNLimit
* Policy state update: the attribute is remoed from the entry

##### pwdReset

* pwdMustChange
* Policy state update: if pwdMustChange is TRUE, and the modification is done, pwdReset is set to TRUE, otherwise pwdReset is removved from the entry

##### pwdPolicySubentry

Computed on the fly when requested

##### pwdPolicySubentry

* pwdMustChange

##### pwdStartTime

* pwdEndTime

##### pwdEndTime

* pwdStartTime

##### pwdLastSuccess

* pwdMaxIdle
* Policy state update: pwdLastSuccess is set to current 

## Initialisation

When the server starts, it should initialize the Authentication interceptor, which will be added into the processing chain. This interceptor will contain all the logic assoiated with the passwordPolocy handling.

There are three use cases:

1) There is no defined PasswordPolicy: The authenticator will simply do nothing related when dealing with the operation.
2) There is a default PasswordPolicy (the one defined in the configuration): In this case, we willm have to check if this PasswordPolicy has been added *after* some entries that will be impacted by it.

typically, a use was pre-existing, and the PasswordPolicy efines some time limit on the userPassword. We will need to search the whole tree searchung for entries having the userPassword attribute 
and update the entry accordingly to the PasswordPolicy configuration.

3) There are subentries containing local definition of PasswordPolicies. 

## Declaration

The Password Policies are defined by using a subentry that contains a subtreeSpecification which describes the entries subject to this passwordPolicy. The PP subentries are stored into
the subentry cache. 

There are two options here:
-1- each entry points to the subentry that contains the passwordPolicy to use (in the pwdPolicySubentry attribute)
-2- the subtreeSpecification automatically selects the entry subject to a passwordPolicy

The first approach is simple, but requires that new users are created with the pwdPolicySubentry filled with the proper reference. This is demanding and error prone. 
Another possibility is that the added user is checked against the PP subentries, and if it fits one or many, then the pwdPolicySubentry attribute is added accordingly.
It also generates a huge load if the password policy subentry subtree specification covers different entries, as each of these entries will have to be updated, and this will be
the case if we add, change or delete a PP subentry, as all the associated entries will have to be updated.

The second approach is way simpler from the user PoV, because the pwdPolicySubentry is not necessary. OTOH, the impact is that checking if the entry belongs to a PP is way more complex as it requires to 
check each PP to see if the entry belongs to it. That being said, there are not necessarily hundreds of PP to apply (generally speaking, only one). Still, this is an operation to process for every search 
that requested the operational attributes.

Considering the extra cost of feeding the entry with the pwdPolicySubentry attribute when requested if it's niot present in the entry (typically for search operations), the first approach is likely to be better.

## Operations

Each operation will check if the session is still valid, at the very beginning. The password may have expired, or being locked. 

Note: a use may execute an operation without being athenticated, as anonymous. The server should prevent that.

For each operations but bind, we check if the password is locked or expired or not yet valid. If so, we return with an error code. Basicaly, the user account should be OK. 

We will need to access the LdapPrincipal information at this stage, and it should contain the PP operational attributes for the associated user. That means the Bind operation should fetch the user, and store the data in the LdapSession. 
If the user was already bound, then the new Bind operation will replace those data.


For a bind, we call the authn interceptor first, and on return, we check the possible conditions

### Add

#### Current implementation

We first check if the user is authenticated. If the user is anonymous and the serevr does not allow anonymous users, then we reject the operation.

Assuming the PPolicy is enabled, we get it based on the entry:
- we get the PPolicy DN from the pwdPolicySubentry AT
- we fetch the PPolicy from the DiT
- If we can't find it, we use the default PPolicy

If the user's Password must be reset (ie the pwdReset AT *AND* the pwdMustChange PPolicy configuration are set to TRUE), then throw a LdapNoPermissionException is sent back.
OTOH, if the pwdMustChange PPolicy configuration is set to FALSE or absent, then we can keep going

The next step is to get the password attribute from the PPolicy's pwdAttribute AT. If it's not present in the entry, we ignore the following steps, otherwise:
- we get the attribute's value
- we check the password quality
  - if the entry has a pwdCheckQuality AT then
    - if its value is 0, bypass the quality check
	- if its value is 1, 
	  - if the password is hashed, ignore it
	  - else 
	    - check the password length, based on the PPolicy pwdMinLength and pwdMaxLength values
		- use the PasxwwordValidator associated with the PPolicy to check the password
	- if the value is 2,
	  - if the password is hashed, return an error
	  - else 
	    - check the password length, based on the PPolicy pwdMinLength and pwdMaxLength values
		- use the PasswordValidator associated with the PPolicy to check the password
- we check the password validity, based on time
  - if we have a PwdMinAge or a pwdMaxAge configured in the PPolicy, add the pwdChangedTime attribute with a value set to the current time
  - if the PPolicy PwdMustChange is set to TRUE, and if the addition is made by an administrator, then the pwdReset attribute must be added with a value TRUE
  - if the pwdInHistory PPolicy configuration exists and is > 0, then 

Note: The PasswordValidator is a Java class that is defined by configuration, as a classname. We currently have only one implementation, the DefaultPasswordValidator class, which
verifies that the username is not part of the password. 




#### New implementation

This is the addition of a new entry. We have to check if the entry is related to a PP. This can be done automatically by checking the existing PP and their associated subtreeSpecification.
If the entry is covered by a PP, then we update the pwdPolicySubEntry. (note: only one value is allowed, so the choice would be the closest PP in the DiT).
One complementary condition is that the entry contains the proper password attribute.

The very first step is to get the PP reference. If it's an Add operation, we have to check if the entry is part of a PPolicy adminsitrative area. Otherwise the entry will contain a pwdPolicySubentry

getPwdPolicy(Entry, add) <-
  if the entry contains a pwdPolicySubentry 
    // Every operation
    then
      if the pwdPolicySubentry reference exist
        then
          (check that the entry is contained by the area defined by the subtreeSpecification) <-- Optional. It's a costly operation
          check if the PP declared password attribute is present in the entry
          if ok
            then
              return the PP
    else if add
      // It's an Add operation
      check that the entry is contained by the area defined by the subtreeSpecification
      if ok
        check if the PP declared password attribute is present in the entry
        if ok
          then
            return the PP
  
  // No PPolicy for this entry,
  return null;

  

If this entry does not contain the attribute defined in the pwdAttribute for this area, we ignore it. If the entry is not associated to a PasswordPolicy area, we ignore it too.

Otherwise we add the required operational attributes.

### Bind

When a 'bind' is done, it's either for a new LDAP Session, or with an existing LDAP session. 

If this is for a new session, the  we have to check a few things related to the password:


#### New LDAP session

This is the first authentication to be done for the given user. If this is a Simple bind, the credentials contain the user DN and the password to check. 
There are many use cases, assuming the DN is for a valid user, that has a 'userPassword' attribute:
- There is no PasswordPolicy set
  - The password does not match -> we get out immediately
  - The password matches -> A LdapSession is created
- There is a passwordPolicy set
  - The password does not match -> we get out immediately
  - The password matches
    

The following things will be checked while processing a bind operation, assuming the entry exists.

If any of thses conditions are met, the account is locked and the Bind should fail.

* pwdAccountLockedTime is 000001010000Z
* pwdEndTime <= current time < pwdStartTime
* if pwdLastSuccess is present
	currentTime >= pwdLastSuccess + pwdMaxIdle
  else
	currenTime >= pwdChangedTime + pwdMaxIdle
* current time < pwdAccountLockedTime + pwdLockoutDuration

If any of those conditions are met, the password must be changed:

* pwdMustChange is TRUE
* pwdReset is TRUE

If any of this condition is met, the password has expired:

* current time - pwdChangeTime > pwdMaxAge

If any of those conditions are met, the operation should fail:

* pwdLockout is TRUE
* n(pwdfailureTime < pwdFailureCountInterval) > = pwdMaxfailure

### Compare

### Delete

### GetRootDSE

### HasEntry

### Lookup

### Modify

### Move

### MoveAndRename

### Rename

### Search

### Unbind



