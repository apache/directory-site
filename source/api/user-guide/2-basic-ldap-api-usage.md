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

We provide three different sets of methods to send requests to the **LDAP** server:

* The first set is the simplest.  Its methods don't return a response but may throw a LdapOperationException if the operation was not successful.
* The second set is for advanced users.  It works with dedicated Request and Response objects and allows fine-grained control at the LDAP protocol level.
* The third set allows users to send asynchronous requests.

The first set of methods covers all basic LDAP operations: Bind, Add, Delete, Modify, Move/Rename/MoveAndRename, Compare, and Unbind operations

The second and third sets cover all basic LDAP operations, Extended operations, and LDAP Controls.

## Contents

* [2.1 - Connection and disconnection](2.1-connection-disconnection.html)
* [2.2 - Binding and unbinding](2.2-binding-unbinding.html)
* [2.3 - Searching (...)](2.3-searching.html)
* [2.4 - Adding entries](2.4-adding.html)
* [2.5 - Deleting entries](2.5-deleting.html)
* [2.6 - Modifying entries](2.6-modifying.html)
* [2.7 - Moving an renaming entries (e)](2.7-moving-renaming.html)
* [2.8 - Comparing entries (e)](2.8-comparing.html)
* [2.9 - Exception management (...)](2.9-exception-management.html)
* [2.10 - The LdapConnectionTemplate](2.10-ldap-connection-template.html)
* [2.11 - The FilterBuilder](2.11-filter-builder.html)
