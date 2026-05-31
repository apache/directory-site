---
title: 2 - Basic LDAP API usage
navPrev: 1-introduction.html
navPrevText: 1 - Introduction
navUp: ../user-guide.html
navUpText: User Guide
navNext: 3-advanced-ldap-api-usage.html
navNextText: 3 - Advanced LDAP API Usage
---

# 2 - Basic LDAP API usage (...)

Each LDAP operations are requests that may get a response (except the _Abandon_ or _Unbind_ requests).

Some request though may get more than one response, like the _Search_ operation (which may get one or more _SearchResult Entry_, _SearchResultReference_ and _SearchResultDone_).

Last, not least, in specific cases an _IntermediateResponse_ may be sent as a reponse to an _ExtendedRequest_ (which will receive an _ExtendedResponse_ at some point later).

We will explain some of the most used operations in this chapter.

## Contents

* [2.1 - Connection and disconnection](2.1-connection-disconnection.html)
* [2.2 - Binding and unbinding (...)](2.2-binding-unbinding.html)
* [2.3 - Searching (...)](2.3-searching.html)
* [2.4 - Adding entries](2.4-adding.html)
* [2.5 - Deleting entries](2.5-deleting.html)
* [2.6 - Modifying entries](2.6-modifying.html)
* [2.7 - Moving an renaming entries (e)](2.7-moving-renaming.html)
* [2.8 - Comparing entries (e)](2.8-comparing.html)
* [2.9 - Exception management (...)](2.9-exception-management.html)
* [2.10 - The LdapConnectionTemplate](2.10-ldap-connection-template.html)
* [2.11 - The FilterBuilder](2.11-filter-builder.html)
