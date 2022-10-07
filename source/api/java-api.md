---
title: LDAP Java API
---

# LDAP Java API
This is the **Java** implementation of a new **LDAP API**. This effort was initially conducted with the **OpenDS** team.

## Background
There are a few existing **Java LDAP API** around there. Here is a short list and description.

| API | Version | License | Description |
|---|---|---|---|
| [Apache Directory Client API 1.0](https://directory.apache.org/api/) | 1.0.0 | ASL 2.0 | The Apache Directory Server CLient API. |
| [Apache Directory Client API 2.0](https://directory.apache.org/api/) | 2.0.0 | ASL 2.0 | The Apache Directory Server CLient API, V2. |
| [jLDAP](https://www.openldap.org/jldap/) | 2008_03-01-1 | OpenLDAP Public License | A Novell&trade; contribution to the OpenLDAP project |
| [JNDI](https://docs.oracle.com/javase/tutorial/jndi/index.html) | 1.2 | Sun license | This is not a pure LDAP API, however it's included in J2SE since Java 5. (Probably the API selected by many developers |
| [ldapSDK](https://wiki.mozilla.org/Mozilla_LDAP_SDK_Programmer%27s_Guide) | 4.17 (discontinued) | Netscape Public License| The Mozilla&trade; API, formally the Netscape LDAP API |
| [OpenDJ LDAP SDK](https://backstage.forgerock.com/docs/opendj/2.6/dev-guide/) | 2.6.4 (discontinued) | CDDL | The ForgeRock&trade; OpenDJ LDAP SDK |  
| OpenDS client API | Discontinued | CDDL | The OpenDS&trade; API |
| [UnboundID API](https://github.com/pingidentity/ldapsdk) | 3.2.0 | Apache License API 2.0, GNU GPLv2 or LGPLv2.1  | A new API developed by the UnboundID&trade; company |

(There may be some more we don't know about)

## Features
The [User Guide](user-guide.html) pages gives the list of features the API provides.

## Prerequisite

This API requires **Java 8** or higher.
