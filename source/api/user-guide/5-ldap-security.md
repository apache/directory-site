---
title: 5 - LDAP Security
navPrev: 4-schema-management.html
navPrevText: 4 - Schema Management
navUp: ../user-guide.html
navUpText: User Guide
navNext: 6-ldap-data-structures.html
navNextText: 6 - LDAP Data Structures
---

# 5 - LDAP Security

**LDAP** databases store critical information that must be kept secure.  The **Apache LDAP API** can access the data securely while in flight but can't protect it while at rest -- that's for the database system itself to do.

Generally speaking when it comes to securing a system, we are addressing the three **A**s: Authentication, Authorization and Auditing.

The only aspect we will focus on is the **Authentication** part, because the **LDAP** protocol does not address the other two, when it comes to an **API**. We will talk about authorization a little bit in the last chapter.

Another aspect of security is encryption:
- securing the communication between the client and the server
- password hash

Last, but not least, we have seen how to perform a simple bind to an **LDAP** server using a name and a password.  There are other ways to bind, using **SASL**. We will also explain how to use certificates in **SSL/StartTLS**.

## Contents

*  [5.1 - LDAPS](5.1-ldaps.html)
*  [5.2 - StartTLS (e)](5.2-start-tls.html)
*  [5.3 - SASL Bind](5.3-sasl-bind.html)
*  [5.4 - Password handling](5.4-password-handling.html)
*  [5.5 - Certificates](5.5-certificates.html)
*  [5.6 - ACI and ACLs (e)](5.6-aci-and-acls.html)
