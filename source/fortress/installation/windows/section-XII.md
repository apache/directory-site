---
title: Section XII - Instructions to regression test EnMasse Policy server
navPrev: section-XI.html
navPrevText: Section XI - Instructions to install EnMasse Policy Server Demo
navUp: windows.html
navUpText: Quickstart Windows - Table of contents
navNext: section-XIII.html
navNextText: Section XIII - misc info about other utilities
---

## Section XII - Instructions to regression test EnMasse Policy server on target machine (optional)

### Step 1

Edit file named 'build.properties' and enable REST protocol here:

    enable.mgr.impl.rest=true

Accept the defaults for other HTTP parameters in build.properties:

    http.user=demouser4 
    http.pw=gX9JbCTxJW5RiH+otQEX0Ja0RIAoPBQf 
    http.host=localhost 
    http.port=8080

Should look like the following: 

<CENTER>
  <IMG src="../../images/Screenshot41-enmasse-http-settings.png" alt="Screenshot" width="766" height="88"/>
</CENTER>

### Step 2

Save and exit the text file editor

### Step 3

From FORTRESS_HOME root folder, enter the following command from a system prompt:

    b test-full 


wrong picture...

<CENTER>
  <IMG src="../../images/Screenshot10-ant-test-init.png" alt="Screenshot"/>
</CENTER>

Note: The EnMasse regression tests will run for around 20 minutes.

### Step 4

Verify these tests ran with no ERRORS.

    BUILD SUCCESSFUL 

<CENTER>
  <IMG src="../../images/Screenshot43-ant-enmasse-test-success.png" alt="Screenshot"/>
</CENTER>

### Step 5

This regression test may be rerun as often as necessary:

    b test-full

Note 1 : WARNING messages in test output are good as these are negative tests in action : 

<CENTER>
  <IMG src="../../images/Screenshot12-junit-warn.png" alt="Screenshot" width="766" height="34"/>
</CENTER>

Note 2: If you made it this far without junit or ant ERRORS, EnMasse is installed and certified to run on your machine.

Note 3: These tests load tens of thousands of records into your directory. The 'test-full' target may be re-run as often as necessary. After regressions testing have completed, you may run the 'init-slapd' target to remove all test data from the directory. 

