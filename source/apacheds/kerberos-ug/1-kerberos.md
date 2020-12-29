---
title: 1 - What is Kerberos ?
navUp: ../kerberos-user-guide.html
navUpText: Kerberos User Guide
navNext: 1.1-introduction.html
navNextText: 1.1 - Introduction
---

## Table of content

* [1.1 - Introduction](1.1-introduction.html)
    * [1.1.1 - Realms](1.1.1-realms.html)
    * [1.1.2 - Principal](1.1.2-principals.html)
    * [1.1.3 - Keys](1.1.3-keys.html)
    * [1.1.4 - KDC (Key Distribution Center)](1.1.4-kdc.html)
    * [1.1.5 - Database](1.1.5-database.html)
    * [1.1.6 - AS (Authentication Server)](1.1.6-as.html)
    * [1.1.7 - TGS (Ticket Granting Server)](1.1.7-tgs.html)
    * [1.1.8 - Tickets](1.1.8-tickets.html)
* [1.2 - Resources](1.2-resources.html)
    * [1.2.1 - Kerberos Articles](1.2.1-kerberos-articles.html)
    * [1.2.2 - Microsoft compatibility](1.2.2-microsoft-compatibility.html)
    * [1.2.3 - Standards](1.2.3-standards.html)

# 1 - What is Kerberos ?

**Kerberos** is the result of an effort by the MIT, known as **Project Athena**. It started in May 1983, and resulted in many internal versions at the MIT, and finally, **Kerberos V4** was openly released in January 1989. **Kerberos V5* is available since 1993.

**Kerberos** is a computer network authentication protocol, which provides a secure Single Sign On(SSO) based on a trusted third-party mutual authentication service.

* It is secure because the user's password is never transmitted over the wire. **Kerberos** uses **Tickets** which are negociated with the server, with a limited time to live.

* It is a SSO system, a single ticket can be used by all the services till its validity expires.

* It acts as a trusted third party cause all the keys of users and services are managed by the **Kerberos** server. 

* It is a mutual authentication system that guarantees not only that the user is who he is pretending to be, but also because each user is guaranteed that the services he has access to are the expected services.

**Kerberos** is widely used in the **Microsoft&trade;** world, as all the authentication mechanisms on **Microsoft&trade;** are done through this protocol.
