---
title: 3 - Building
navPrev: 2-general-structure.html
navPrevText: 2 - General Structure
navUp: ../internal-design-guide.html
navUpText: Internal Design Guide
navNext: 4-asn1.html
navNextText: 4 - ASN/1
---

# 3 - Building

The project is based on **Apache Maven** (version 3.x), so you'll have to install it first.

That being said, building the **LDAP API** is pretty straightforward :

```Text
    $ mvn clean install
    Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=256M; support was removed in 8.0
    [INFO] Scanning for projects...
    [INFO] ------------------------------------------------------------------------
    [INFO] Reactor Build Order:
    [INFO] 
    [INFO] Apache Directory LDAP API
    [INFO] Apache Directory LDAP API I18n
    [INFO] Apache Directory LDAP API Utilities
    ...
    [INFO] Apache Directory LDAP API Model
    [INFO] Apache Directory LDAP API Codec Parent
    [INFO] Apache Directory API Integration Tests
    [INFO] Apache Directory API OSGi Integration Tests
    [INFO] Apache Directory LDAP API Distribution
    [INFO]                                                                         
    [INFO] ------------------------------------------------------------------------
    [INFO] Building Apache Directory LDAP API 2.0.0.AM1-SNAPSHOT
    [INFO] ------------------------------------------------------------------------
    ...
```

It takes around 1 min to build it all (a bit longer the first time, as some dependencies wil have to be pulled from the net).


The top level _pom.xml_ depends on teh special _project_ 'project', which is used by all the **ApacheDS** projects. It gathers information about maven plugin dependenies and someother things. You don't really need to touch it anyway...

Remember to use **Java 8** !!

