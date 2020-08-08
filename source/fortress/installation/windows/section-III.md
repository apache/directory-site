---
title: Section III - Instructions to run the Builder to Install OpenLDAP
navPrev: section-II.html
navPrevText: Section II - Instructions to run the Fortress Ant Build
navUp: windows.html
navUpText: Quickstart Windows - Table of contents
navNext: section-IV.html
navNextText: Section IV - Instructions to regression test Fortress and OpenLDAP
---

## Section III - Instructions to run the Builder to Install OpenLDAP, configure and load with seed data

<DIV class="note" markdown="1">
	Important: This target reinstalls and reloads the OpenLDAP server program, configuration and data.
</DIV>

### Step 1

From FORTRESS_HOME root folder, edit the build.properties file, setting the 3 properties below to match your environment:

    slapd.exe.drive=C <-- contains the drive letter for openldap server 
    slapd.exe.dir=OpenLDAP <-- contains the folder to load openldap server binaries 
    fortress.home.drive=C <-- contains the drive letter that you extracted fortress' builder package to.

If you are not sure, what to use, the defaults usually work. Here's a screen shot of the build.properties.

<CENTER>
  <IMG src="../../images/Screenshot39-build-properties-win.png" alt="Screenshot" width="766" height="563"/>
</CENTER>

### Step 2

From FORTRESS_HOME root folder, enter the following command from a system prompt:

    b init-slapd

<CENTER>
  <IMG src="../../images/Screenshot31-init-slapd-win.png" alt="Screenshot" width="766" height="34"/>
</CENTER>

Note: You will need to reply 'Yes' to the pop-up message:

<CENTER>
  <IMG src="../../images/Screenshot33-window-warning.png" alt="Screenshot"/>
</CENTER>

Note: You will need to reply 'Allow' to the pop-up security warning message if you intend to allow other machines to communicate with ldap server:

<CENTER>
  <IMG src="../../images/Screenshot40-firewall-warning-win.png" alt="Screenshot"/>
</CENTER>

### Step 3

Verify it ran correctly according to Ant.

    BUILD SUCCESSFUL 

<CENTER>
  <IMG src="../../images/Screenshot32-init-slapd-success-win.png" alt="Screenshot"/>
</CENTER>

### Step 4

After above step completes, OpenLDAP will be installed, configured and loaded with fortress bootstrap config. This step also runs provisioning scripts which may be tailored according to requirements. Check out the xml load scripts in FORTRESS_HOME/ldap/setup folder.


### Step 5

Point your preferred LDAP browser, ours is [Apache Directory Studio](https://directory.apache.org/studio), to the installed directory. The configuration parameters you'll need to browse can be found in the generated 'slapd.conf' file.

To view data stored in default database:

    suffix "dc=openldap,dc=org" 
    rootdn "cn=Manager,dc=openldap,dc=org" 
    rootpw "secret"

The root pw will be encrypted before stored in slapd.conf 

<CENTER>
  <IMG src="../../images/Screenshot8-ldap-browser.png" alt="Screenshot" width="766" height="439"/>
</CENTER>

To view data stored in audit log database:

    suffix "cn=log" 
    rootdn "cn=Manager,cn=log" 
    rootpw "secret"

The log root pw will be encrypted before stored in slapd.conf

<CENTER>
  <IMG src="../../images/Screenshot9-ldap-browser-log.png" alt="Screenshot" width="766" height="374"/>
</CENTER>
