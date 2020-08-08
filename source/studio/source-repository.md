---
title: Source Repository
---

# Source Repository

## Canonical Source Repository

The canonical source is managed in Apache GitBox. Just type the following command to get the latest development version:

    git clone https://gitbox.apache.org/repos/asf/directory-studio.git

## GitHub Mirror

There is a GitHub mirror available: <https://github.com/apache/directory-studio/>

Pull requests welcomed.

## Source Repository Organization

The repository is organized as follows :

    |-- pom-first.xml                                 pom.xml to generate the Eclipse Target Platform and the MANIFEST.MF files
    |-- pom.xml                                       The main pom
    |-- eclipse-trgt-platform                         The target platform, defines Eclipse, ApacheDS, and 3rd party dependencies
    |-- features                                      The features
    |   |-- apacheds.feature
    |   |-- ldapbrowser.feature
    |   |-- ldifeditor.feature
    |   |-- openldap.feature
    |   |-- rcp.feature
    |   |-- schemaeditor.feature
    |-- helps                                         The help plugins in Docbook format 
    |   |-- apacheds.help
    |   |-- ldapbrowser.help
    |   |-- ldifeditor.help
    |   |-- rcp.help
    |   |-- schemaeditor.help
    |-- plugins                                       The real plugins, here is the code
    |   |-- aciitemeditor
    |   |-- apacheds
    |   |-- apacheds-launcher
    |   |-- apacheds.configuration
    |   |-- common.core
    |   |-- common.ui
    |   |-- connection.core
    |   |-- connection.ui
    |   |-- ldapbrowser.common
    |   |-- ldapbrowser.core
    |   |-- ldapbrowser.ui
    |   |-- ldapservers
    |   |-- ldapservers.apacheds.v153
    |   |-- ldapservers.apacheds.v154
    |   |-- ldapservers.apacheds.v155
    |   |-- ldapservers.apacheds.v156
    |   |-- ldapservers.apacheds.v157
    |   |-- ldifeditor
    |   |-- ldifparser
    |   |-- rcp
    |   |-- schemaeditor
    |   |-- valueeditors
    |-- tests                                         Integration Tests
    |   |-- test.integration.core
    |   |-- test.integration.ui
    |-- product                                       The packaged products for all supported platforms
    |-- p2repositories                                The update sites
    
