---
title: Section III - Instructions to run the Builder to Install OpenLDAP
navPrev: section-II.html
navPrevText: Section II - Instructions to run the Fortress Ant Build
navUp: linux.html
navUpText: Quickstart Linux - Table of contents
navNext: section-IV.html
navNextText: Section IV - Instructions to regression test Fortress and OpenLDAP
---

## Section III - Instructions to run the Builder to Install OpenLDAP, configure and load with seed data

<DIV class="note" markdown="1">
	Important: This target reinstalls and reloads the OpenLDAP server program, configuration and data. 
</DIV>

### Step 1

The fortress 'init-slapd' uses LDAPv3 to perform initial operations.

edit build.properties, ensure the following line has been commented out: 

<CENTER>
  <IMG src="../../images/Screenshot43-edit-disable-rest.png" alt="Screenshot"/>
</CENTER>

Note: The default for this setting is 'false' or disabled.

### Step 2

From FORTRESS_HOME root folder, enter the following command from a system prompt:
if sudo:

	sudo ./b.sh init-slapd 

<CENTER>
  <IMG src="../../images/Screenshot6-init-slapd.png" alt="Screenshot" width="766" height="86"/>
</CENTER>

if not sudo you must run as user that has priv to modify folders in /var and /opt folders:

	su

	[enter your pw]

before running the command to kick off the install

	./b.sh init-slapd

### Step 3

Verify it ran correctly according to Ant.

	BUILD SUCCESSFUL

<CENTER>
  <IMG src="../../images/Screenshot7-init-slapd-success.png" alt="Screenshot" width="766" height="101"/>
</CENTER>

### Step 4

After above step completes, OpenLDAP will be installed, configured and loaded with fortress bootstrap config. This step also runs provisioning scripts which may be tailored according to requirements. Check out the xml load scripts in FORTRESS_HOME/ldap/setup folder.

### Step 5

Point your preferred LDAP browser, ours is Apache Directory Studio, to the installed directory. The configuration parameters you'll need to browse can be found in the generated 'slapd.conf' file.

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
