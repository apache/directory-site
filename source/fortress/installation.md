---
title: Fortress Installation guides
---

# Installation guides

The Fortress Core requires an LDAP server to store its information.  Its other components, Web and Rest, require a Java Servlet container.  This page includes some links on getting started.

## Fortress Core Setup with LDAP

The Core is used by the other components, Realm, Rest and Web.  These are to install ApacheDS or OpenLDAP (pick one), and configure for usage.  For rapid deployment, use DOCKER containers.

### Fortress Core & ApacheDS
* [README-QUICKSTART-DOCKER-APACHEDS.md](https://github.com/apache/directory-fortress-core/blob/master/README-QUICKSTART-DOCKER-APACHEDS.md) - Install Core for use with APACHEDS running inside DOCKER 
* [README-QUICKSTART-APACHEDS.md](https://github.com/apache/directory-fortress-core/blob/master/README-QUICKSTART-APACHEDS.md) - Install Core for use with APACHEDS 

### Fortress Core & OpenLDAP
* [README-QUICKSTART-DOCKER-SLAPD.md](https://github.com/apache/directory-fortress-core/blob/master/README-QUICKSTART-DOCKER-SLAPD.md) - Install Core for use with OPENLDAP running inside DOCKER 
* [README-QUICKSTART-SLAPD.md](https://github.com/apache/directory-fortress-core/blob/master/README-QUICKSTART-SLAPD.md) - Install Core for use with OPENLDAP 

### Fortress Realm & Tomcat

The Realm plugs into Tomcat and provides JavaEE security support.

* [REALM-HOST-SETUP.md](https://github.com/apache/directory-fortress-realm/blob/master/REALM-HOST-SETUP.md) - Configure Tomcat Global Security using Realm 
* [REALM-CONTEXT-SETUP.md](https://github.com/apache/directory-fortress-realm/blob/master/REALM-CONTEXT-SETUP.md) - Configure Tomcat Local Security using Realm

### Fortress Rest & Tomcat
* [README-QUICKSTART.md](https://github.com/apache/directory-fortress-enmasse/blob/master/README-QUICKSTART.md) - Install Fortress Rest to Tomcat

### Fortress Web & Tomcat
* [README-QUICKSTART.md](https://github.com/apache/directory-fortress-commander/blob/master/README-QUICKSTART.md) - Install Fortress Web to Tomcat

More info can be found from each of the projects README's.
