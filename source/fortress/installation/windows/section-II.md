---
title: Section II - Instructions to run the Fortress Ant Build
navPrev: section-I.html
navPrevText: Section I - Instructions to extract and configure Fortress Builder Package
navUp: windows.html
navUpText: Quickstart Windows - Table of contents
navNext: section-III.html
navNextText: Section III - Instructions to run the Builder to Install OpenLDAP, configure and load with seed data
---

## Section II - Instructions to run the Fortress Ant Build

### Step 1

From FORTRESS_HOME root folder, edit the b.bat script to point to java home:

    set JAVA_HOME=\Progra~1\Java\jdk1.7.0  

<CENTER>
  <IMG src="../../images/Screenshot28-edit-javahome-win.png" alt="Screenshot" width="766" height="504"/>
</CENTER>

### Step 2

Run the distribution target:

    b.bat dist

<CENTER>
  <IMG src="../../images/Screenshot29-ant-dist-win.png" alt="Screenshot" width="766" height="47"/>
</CENTER>

Note: The b.bat file referred to here uses Ant package that is local to Fortress quickstart package.

### Step 3

Verify it ran correctly according to Ant:

    BUILD SUCCESSFUL

<CENTER>
  <IMG src="../../images/Screenshot30-ant-dist-success-win.png" alt="Screenshot" width="766" height="98"/>
</CENTER>

You may now view the project binaries and documentation located under FORTRESS_HOME/dist.

-----> Wrong snapshot !

<CENTER>
  <IMG src="../../images/Screenshot5-dist-listing.png" alt="Screenshot" width="766" height="87"/>
</CENTER>
