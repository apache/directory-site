---
title: 9 - DN
navPrev: 8-schema.html
navPrevText: 8 - Schema
navUp: ../internal-design-guide.html
navUpText: Internal Design Guide
navNext: 10-entry.html
navNextText: 10 - Entry
---

# 9 - DN

A **DN**, or **Distinguished Name** is a data structure that is composed of a list of **RDN** (**Relative DN**). Each **RDN** is composed of a list of **AVA** (**AttributeType And Value**).

In a **DN**, the list of **RDN** is ordered from the most significant to the least significant **RDN**. For instance:

	cn=JohnDoe,ou=apache,dc=com

The most significant **RDN** is ```cn=JohnDoe```.

## RDN

A **RDN** can be composed of many **AVAs**, which are ordered in two ways:
* Lexicograpgically, if we don't have a schema
* By **OID**, if we have a schema

Typically, a **DN** like:

	gn=Kate+cn=Bush,ou=apache,dc=com

will be ordered internally as :

	cn=Bush+gn=Kate,ou=apache,dc=com	

if we don't have a schema (because ```cn``` is lexicographically before ```gn```), or if we have a schema (because ```2.5.4.3``` is the ```cn```'s **OID** and ```2.5.4.42``` is the ```gn```'s **OID**)

### Internal structure

We keep the following data inside a **RDN**:

* ```upName```: a ```String``` containing the **RDN** user provided value
* ```normName```: a ```String``` containing the normalized **RDN** value
* ```avas```: A list of ordered **AVAs**
* ```avaTypes```: A map of the **RDN** ```AttributeTypes``` (each **AVA** has an ```AttributeType```) for a quick search
* ```avaType```: If we have only one **AVA**, we store its ```AttributeType``` here, not in the Map
* ```ava```: If we have only one **AVA**, we store it here, not in the list
* ```nbAvas```: The number of **AVAs** in this **RDN**.
* ```normalized```: A boolean indicating if the **RDN** has been normalized
* ```h```: The integer hascode for this instance


**Note**: When a **RDN** is initially created, we don't allocate the ```List``` or ```Map```, because most of the time, the **RDN** contains a single **AVA**. We could extend the **RDN** class to manage those with multiple **AVAs** instead of managing all in one single class, but that would require having a **RdnFactory** class.

### Processing

We have two parsers that get called:
* The ```FastParserRdn``` for simpler **RDNs**
* The ```ComplexDnParser``` for composed **RDNs** (or more specific use cases)

If the first parser fails to parse the **RDN**, we call back to the second parser. That means we are fast in 99,9% of the time, and longer otherwise.

Here is how it's handled:

  
    private static void parse( SchemaManager schemaManager, String dn, Rdn rdn ) throws LdapInvalidDnException
    {
        try
        {
            FastDnParser.parseRdn( schemaManager, dn, rdn );
        }
        catch ( TooComplexDnException e )
        {
            rdn.clear();
            new ComplexDnParser().parseRdn( schemaManager, dn, rdn );
        }
    }

The ```FastDnParser``` is basically a recursive descent: we consider we have a single ```AttributeType```, an ```=``` sign, and the value. If we have a Schema, we will use it to process the ```AttributeType``` and the value, normalizing it (that is done at the ```Ava``` level). At the end, we get back an ```Rdn``` instance, with one ```Ava```, where the following class' fields are updated:

* ```upName:```: The user provided form (the provided String)
* ```normName```: The normalized form
* ```avas```: null
* ```avaTypes```: null
* ```avaType```: The ```AttributeType```
* ```ava```: The ```Ava``` instance
* ```nbAvas```: 1
* ```normalized```: true or false (depends on the schema being present)
* ```h```: The integer hascode for this instance

As we can see, the List and Map are null.

The ```ComplexDnParser``` is an **antlr** based parser. It's much slower. We start with an inner production of this parser, the ```relativeDistinguishedName``` part:

 	relativeDistinguishedName [SchemaManager schemaManager, Rdn rdn]
    :
    (
        attributeTypeAndValue[schemaManager, rdn] 
        (
            PLUS 
            attributeTypeAndValue[schemaManager, rdn] 
        )*
    )

As we can see, we can have to process one or more ```attributeTypeAndValue``` (aka **AVA**), and we need to do it in a way that allows the comparison of **RDNs** in a simple way.

For that, as a **RDN** contain multiples **AVAs**, we need to order them. There are two use cases:
* The **RDN** is Schema aware
* The **RDN** is not schema aware


#### Schema aware RDN

This is the simplest case, because we have a standard way to 'normalize' each element:
* The ```AttributeType``` is always represented as an **OID**
* The value is always normalized accordingly to its ```AttributeType```

For instance, a **RDN** like:

```
gn=Kate+cn=Bush
```

uses two **AVAs** (separated by the **+** sign), one with the **cn** ```AttributeType``` and the other with the **gn** ```AttributeType```.

The **cn** ```AttributeType```  is normalized as ```2.5.4.3```, and the **gn** ```AttributeType```  is normalized as 2.5.4.42.

Now, if we use those **OID**, the **RDN** becomes:

```
2.5.4.3=Bush+2.5.4.42=Kate
```

We have a way to order the **AVA** using the **OIDs** numeric values (```2.5.4.3``` < ```2.5.4.42```).


However, we still have to deal with the case where the **RDN** contains many times the same ```AttributeType```, like in:

```
cn=john+cn=doe
```

This is possible because the ```cn``` ```AttributeType``` accept more than one value:

```
( 2.5.4.3 NAME 'cn' SUP name )

( 2.5.4.41 NAME 'name'
         EQUALITY caseIgnoreMatch
         SUBSTR caseIgnoreSubstringsMatch
         SYNTAX 1.3.6.1.4.1.1466.115.121.1.15 )
```

(Neither the ```name```  or the ```cn``` ```AttributeTypes``` has the **SINGLE-VALUE** property)

So we need to be able to order such **RDN**. We do that by keeping a **Map<AttributeType, List<Ava>>** in the **RDN** structure. For instance, for the ```cn=john+cn=doe+gn=jo``` **RDN**, the **Map** will look like:

	<cn> -> {'doe', 'john'}
	<gn> -> {'jo'}

The value are ordered in the **List**.

#### Non Schema aware RDN

This is slightly different, because we can't normalize the ```AttributeTypes``` as **OIDs**. 

What we do is that we use the lowercase representation of the ```AttributeTypes```, assuming we won't be able to deal with aliases (ie ```cn``` and ```commonName``` are teh same ```AttributeTypes```). Then we use a lexicographic order.
