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

A **DN**, or **Distingusished Name** is a data structure that is composed of a list of **RDN** (**Relative DN**). Each **RDN** is composed of a list of **AVA** (**AttributeType And Value**).

In a **DN**, the list of **RDN** is ordered from the most significant to the least significant **RDN**. For instance:

    ::: text
	cn=JohnDoe,ou=apache,dc=com

The most significant **RDN** is ```cn=JohnDoe```.


