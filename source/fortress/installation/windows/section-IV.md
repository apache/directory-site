---
title: Section IV - Instructions to regression test Fortress and OpenLDAP
navPrev: section-III.html
navPrevText: Section III - Instructions to run the Builder to Install OpenLDAP
navUp: windows.html
navUpText: Quickstart Windows - Table of contents
navNext: section-V.html
navNextText: Section V - Instructions to install Commander Web UI Demo
---

## Section IV - Instructions to regression test Fortress and OpenLDAP on target machine

### Step 1

From FORTRESS_HOME root folder, enter the following command from a system prompt:

    b test-full 

<CENTER>
  <IMG src="../../images/Screenshot34-ant-test-init-win.png" alt="Screenshot" width="766" height="30"/>
</CENTER>

### Step 2

Verify these tests ran with no ERRORS.

    BUILD SUCCESSFUL 

<CENTER>
  <IMG src="../../images/Screenshot35-ant-test-init-success-win.png" alt="Screenshot"/>
</CENTER>

### Step 3

To re-run these tests:

    b test-full

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
    These tests load tens of thousands of records into your newly installed directory. The 'init-slapd' target may be re-run after the 'test-full-init' and 'test-full' targets have completed. This will delete the test data from the directory and restart directory with a clean slate. 
</DIV>
