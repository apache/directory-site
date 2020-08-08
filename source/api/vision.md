---
title: LDAP API - Vision
---

# Vision

When we started to work on replication implementation, we needed a client **API** in order to communicate using the **LDAP** protocol with remote **LDAP** servers. We could have used some existing **LDAP API**, but as we have already defined a lot of base classes we would have had to convert back and forth, we thought it would be better to build the missing pieces and define our own complete LDAP API.

This is one of the reasons we started this sub-project.

Another reason is that we worked with **Sun***a few years ago (2006) to draw a new version of **JNDI**, an aborted effort, sadly. We also have been contacted by the **OpenLDAP** team as they wanted to know if we were ready to maintain **jLDAP**, as it needed some patches, and as they didn't have enough workforce to do so. Last, not least, **OpenDS** team was also interested to see if we can avoid duplication of efforts, as they were also defining an **LDAP API**. Both **OpenDS** and **ApacheDS** teams collaborated, as proven by this [talk](https://directory.staging.apache.org/conference-materials.data/towards_a_common_java_ldap_api-slides.pdf) given during the **2009 Ldap Conference** in Portland.

All those events make it interesting to try to find a common way to define a new **LDAP API**, gathering the interest of the largest developer base possible. We have to tank the **OpenDS** people who were very helpfull in defining the very first version of the **API**, .

As we have not finished to implement all the needed features, it's easy for us to try to figure which parts can be shared with other projects, and which parts must be configurable. A clear example is the underlying network layer: **OpenDS** will use **Grizzly**, while we will use **Apache MINA**. This should be transparent for developers.

Last, not least, no one can claim to be better than all the other great people out there, and claim to be able to define the best possible **LDAP API**. We at **The ASF** believe that collaboration within a community is better than working alone. We are pleased to share what we have already done, ready to move forward in better directions if it allows the API to be more reliable, usable and at the end, easier to use for developers.
