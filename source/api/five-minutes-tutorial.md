---
title: Five Minute Tutorial
---

# Five Minute Tutorial

## Introduction

> *Warning*: This is a very preliminary tutorial, the user must be informed that the current implementation will evolve a **lot** in the near future. So will the tutorial, hopefully...

This new API has been created in order to offer a better API than what we currently use, namely JNDI or older API like LdapSDK or jldap. It benefits from some improvements brought by **ApacheDS** and **OpenDS**.

This 5-minutes tutorial will present the way to use this API when working with a LDAP server.

## Base principles

LDAP is a connected protocol, so you need to create a connection in order to send request and receive response from a Ldap server. This is the main point : you have to create a connection first.

Each operation can have one or more responses, and produce exceptions when something went wrong.

The API is schema ware, ie the manipulated objects will be controlled on the client side, assuming you have brought back the schema from the server, or by using a default schema configuration

## Connection

In order to create a connection, you first have to provide the name of the server, and the port to use. Those parameters will be defaulted to **localHost** and **389** if nothing is defined. 

### Opening a connection
Here is an example :

```java
LdapConnection connection = new LdapNetworkConnection( "localhost", 389 );
```

It's important to note that the connection has nothing to do with being bound, and this is a major difference with JNDI, where you create some context and provide the principalDN. A Connection is just a channel opened with the server, here.

Another important thing to understand is that the connection is not explicitly opened. In fact, the **bind** operation will open the connection.

### Secure connection

>TODO

## Bind operation
Now that the connection has been created, you can call the **bind()** method. This will create a identified connection between a client and the server. The **bind** operation has nothing to do with the **JNDI** bind, as no entry will be created.

### Anonymous bind
You can bind using no identifier, and in this case, you'll create an anonymous LDAP session. This is done this way :

```java
connection.bind();
```

### Simple bind
The most common bind uses an identifier and a password. The identifier must be a *DN*, and the password can be encrypted. Here is an example of a bind operation :

```java
// Don't do that ! Password in clear text = danger !
connection.bind( "ou=example, dc=com", "secret" );

// The password is encrypted, but it does not protect against a MITM attack
connection.bind( "ou=example, dc=com", "{crypt}wSiewPyxdEC2c" );
```

## Search operation

We have tried to make it easy to search information in a LDAP server, as this is the most frequently used operation.

Many parameters can be used in a search. The most commonly used are :
* The base DN
* The filter
* The scope
* The returning attributes list

### Simple search operation

Here is a simple search, done using only those four parameters :

```java
EntryCursor cursor = connection.search( "ou=system", "(objectclass=*)", SearchScope.ONELEVEL, "*" );

while ( cursor.next() )
{
    Entry entry = cursor.get();

    // Process the entry
    ...
}
```

Here, we call the search operation, and we get back a cursor. Reading search result from the cursor is done with the **get()** method, moving forward uses the **next()** method.

## Unbinding
When you are done with the operation, you can unbind. This is done by calling the **unbind()** method, this way :

```java
connection.unbind();
```

## Closing the connection
Once you are done with the connection, don't forget to close it. It's done by calling the **close()** method :

```java
connection.close();
```

If you explicitly call the **unbind()** method, the connection will also be closed, and in this case, you wont have to close it explicitly.

## Conclusion

This very limited presentation was written to give users a quick insight about how to use the **API**. In order to get some further information, please check the **[User Guide](user-guide.html)**
