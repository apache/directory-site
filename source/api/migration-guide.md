---
title: API 1.0 to 2.0 migration guide
---

# Apache LDAP API 1.0 to 2.0 migration guide

## Main differences

The *Apache LDAP API V 2.0* is not very different from the *1.0* version. However, a few classes have been renamed, removed or added.

### Value

Those classes/interface were removed :

* AbstractValue
* BinaryValue
* StringValue

They are all replaced by a single class, *Value*, that is not anymore parametered.

We now have to use the *Value* class only. That is not a really big trouble, as everywhere you were using *Value<?>*, you just have to remove the *<?>*.

Do not anymore use *new BinaryValue( byte[] )* or *new StringValue( String )*, just do *new Value( byte[] )* and *new Value( String )*.

There are a few methods that has changed, like *getValues()* that now always returns a *String* (even for a *byte[]*, which will be dumped as a hexadecimal string). If you want to get the *byte[]* from the *Value*, use *getBytes()*.

### Connection pool

We have moved to *commons-pool* 2.5, which means there is some incompatibility with the previous pool configuration.

Typically, when configuring a *LdapConnectionPool*, you have to pass a *PooledObjectFactory* instead of a *PoolableObjectFactory*.
