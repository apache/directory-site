---
title: Section XIII - Instructions to enable RBAC Accelerator Overlay in OpenLDAP
navPrev: section-XII.html
navPrevText: Section XII - Instructions to regression test EnMasse Policy server
navUp: linux.html
navUpText: Quickstart Linux - Table of contents
navNext: section-XIV.html
navNextText: Section XIV - More Utilities
---

## Section XIII - Instructions to enable RBAC Accelerator Overlay in OpenLDAP and test Java-side bindings (optional)

### Step 1

Edit file named 'build.properties' and enable RBAC accelerator by adding:

    rbac.accelerator=true

### Step 2

Save and exit the text file editor

### Step 3

Reinstall OpenLDAP by running the _init-slapd_ target described in [Section III: Instructions to run the Builder to Install OpenLDAP](section-III.html), configure and load with seed data

### Step 4

Load necessary test data for unit tests:

    ./b.sh admin -Dparam1=ldap/setup/RbacAcceleratorTestUsers.xml

### Step 5

Now you can run the rbac accelerator unit tests:

    ./b.sh test-accel

### Step 6

Verify the test-accel target completed with no ant or junit errors

### Step 7

Reload necessary regression test data by running the test-full target described in [Section IV: Instructions to regression test Fortress and OpenLDAP on target machine](section-IV.html)

### Step 8

Now you can run the rbac accelerator regression tests:

    ./b.sh test-accel-full

### Step 9

Verify the test-full-accel target completed with no ant or junit errors

### Step 10

Check out the javadoc for learning about APIs supported within the RBAC accelerator: [Fortress Accelerator Client](link...)


Note 1: The RBAC accelerator turns OpenLDAP into an RBAC Policy Decision Point (PDP) server. All state is maintained in OpenLDAP LMDB databases including session and audit trail.

Note 2: The slapd.conf file contains the mappings for the new database backends. You can view this data using any LDAP browser.

Note 3: Bindings for C and Python are being worked on and will be released soon.

Note 4: SessionPermissions will be in future release as required by ANSI RBAC (INCITS 359) Core functionality. 
