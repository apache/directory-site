---
title: LDAP Java API - Internal Design Guide
---

# Internal Design Guide

This guide expose the internal structure of the *Apache LDAP API* : how it is designed, achitectural choices made, implementation decisions, in general it offers an isnsight of the existing code.

Although it's not exhaustive, it should allow a new commer interested in loking into teh code to have a better understanding on its design, and hopefully help her/him to jump in and add new features/fix bugs.

Note that is a on-going effort, so please don't jump to conclusion when you find a 'TODO' or some erros : you can help adding the missing pieces, or fix the current content.

Keep in mind that it's a 10+ years effort, and obviously some parts of the code might be aging...

Thanks !

Here is the content :

*  [1 - Introduction](internal-design-guide/1-introduction.html)
*  [2 - General structure](internal-design-guide/2-general-structure.html)
*  [3 - Building](internal-design-guide/3-building.html)
*  [4 - ASN/1](internal-design-guide/4-asn1.html)
* *  [4.1 - ASN/1 TLV](internal-design-guide/4.1-asn1-tlv.html)
*  [5 - Network](internal-design-guide/5-network.html)
*  [6 - Encoding/Decoding](internal-design-guide/6-codec.html)
*  [7 - LDAP Messages](internal-design-guide/7-ldap-messages.html)
*  [8 - Schema](internal-design-guide/8-schema.html)
*  [9 - Dn](internal-design-guide/9-dn.html)
*  [10 - Entry](internal-design-guide/10-entry.html)
*  [11 - Filter](internal-design-guide/11-filter.html)
*  [12 - Cursor](internal-design-guide/12-cursor.html)
*  [13 - Controls](internal-design-guide/13-controls.html)
*  [14 - Extended Operations](internal-design-guide/14-extended-operations.html)
*  [15 - LDIF](internal-design-guide/15-ldif.html)
*  [16 - DSML](internal-design-guide/16-dsml.html)
*  [17 - OSGi](internal-design-guide/17-osgi.html)
