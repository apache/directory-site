---
title: Section II - Instructions to run the Fortress Ant Build
navPrev: section-I.html
navPrevText: Section I - Instructions to extract and configure Fortress Builder Package
navUp: apacheds.html
navUpText: Quickstart ApacheDS - Table of contents
navNext: section-III.html
navNextText: Section III - Instructions to configure ApacheDS and load with seed data
---

## Section II - Instructions to run the Fortress Ant Build

### Step 1

From FORTRESS_HOME root folder, edit the b.sh script to point to java home:

    export JAVA_HOME=/opt/jdk1.7.0_10 

<CENTER>
  <IMG src="../../images/Screenshot3-edit-javahome.png" alt="Screenshot" width="766" height="111"/>
</CENTER>

### Step 2

Run the distribution target:

    ./b.sh dist 

<CENTER>
  <IMG src="../../images/Screenshot4-ant-dist.png" alt="Screenshot" width="766" height="58"/>
</CENTER>

Note: The b.sh batch file referred to here uses Ant package that is local to Fortress quickstart package.

### Step 3

Verify it ran correctly according to Ant:

    BUILD SUCCESSFUL 

<CENTER>
  <IMG src="../../images/Screenshot4-ant-success-dist.png" alt="Screenshot" width="766" height="58"/>
</CENTER>

You may now view the project binaries and documentation located under FORTRESS_HOME/dist. 

<CENTER>
  <IMG src="../../images/Screenshot5-dist-listing.png" alt="Screenshot" width="766" height="87"/>
</CENTER>
