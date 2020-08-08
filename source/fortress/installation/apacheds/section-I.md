---
title: Section I - Instructions to extract and configure Fortress Builder Package
navPrev: guidelines.html
navPrevText: Guidelines and Tips for first-time users
navUp: apacheds.html
navUpText: Quickstart Apacheds - Table of contents
navNext: section-II.html
navNextText: Section II - Instructions to run the Fortress Ant Build
---

## Section I - Instructions to extract and configure Fortress Builder Package to Target System

### Step 1

Obtain copy of directory-fortress-core and copy to hard drive on target server env.

https://gitbox.apache.org/repos/asf?p=directory-fortress-core.git;a=summary

### Step 2

Extract the zip. The location for archive can vary according to requirements. The location of package will be referred to as FORTRESS_HOME later on.

### Step 3

Edit file named 'build.properties' and insert or change the following LDAP configuration parameters:

    ldap.server.type=apacheds

    # These parameters point fortress to LDAP host:
    ldap.host=localhost
    ldap.port=10389

    # These are used to construct suffix for DIT, i.e. dc=example,dc=com.
    suffix.name=example
    suffix.dc=com

    # These are the connection parameters used for LDAP service account:
    root.dn=uid=admin,ou=system

    # This ApacheDS root password value is bound for fortress.properties.
    cfg.root.pw=secret
