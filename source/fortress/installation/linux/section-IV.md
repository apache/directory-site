---
title: Section IV - Instructions to regression test Fortress and OpenLDAP
navPrev: section-III.html
navPrevText: Section III - Instructions to run the Builder to Install OpenLDAP
navUp: linux.html
navUpText: Quickstart Linux - Table of contents
navNext: section-V.html
navNextText: Section V - Instructions to install Commander Web UI Demo
---

## Section IV - Instructions to regression test Fortress and OpenLDAP on target machine (optional)

### Step 1

From FORTRESS_HOME root folder, enter the following command from a system prompt:

    ./b.sh test-full 

<CENTER>
  <IMG src="../../images/Screenshot10-ant-test-init.png" alt="Screenshot"/>
</CENTER>

Note: The Fortress regression tests will run for around 3 minutes.

### Step 2

Verify these tests ran with no ERRORS.

    BUILD SUCCESSFUL 

<CENTER>
  <IMG src="../../images/Screenshot11-ant-test-success.png" alt="Screenshot" width="766" height="59"/>
</CENTER>

### Step 3

To re-run these tests: 

    ./b.sh test-full

<DIV class="note" markdown="1">
    WARNING messages in test output are good as these are negative tests in action.
</DIV>

<CENTER>
  <IMG src="../../images/Screenshot12-junit-warn.png" alt="Screenshot"/>
</CENTER>

<DIV class="note" markdown="1">
    If you made it this far without junit or ant ERRORS, the Fortress and OpenLDAP IAM system are certified to run on your machine.
</DIV>

<DIV class="note" markdown="1">
    These tests load tens of thousands of records into your newly installed directory. The 'init-slapd' and 'test-full' targets may be re-run as often as necessary. After regressions testing has completed, you may run the 'init-slapd' target to remove all test data from the directory. 
</DIV>
