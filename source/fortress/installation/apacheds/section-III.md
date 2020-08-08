---
title: Section III - Instructions to configure ApacheDS and load with seed data
navPrev: section-II.html
navPrevText: Section II - Instructions to run the Fortress Ant Build
navUp: apacheds.html
navUpText: Quickstart ApacheDS - Table of contents
navNext: section-IV.html
navNextText: Section IV - Instructions to regression test Fortress and ApacheDS
---

## Section III - Instructions to configure ApacheDS and load with seed data

<DIV class="note" markdown="1">
	Important: This target reloads the ApacheDS configuration and data. 
</DIV>

### Step 1

Import Fortress ApacheDS schema into ApacheDS server using preferred ldif import tool. Fortress ApacheDS schema located here: FORTRESS_HOME/ldap/schema/apacheds-fortress.ldif

Screenshot of Apache Directory Studio import of Fortress schema file into ApacheDS: 

<CENTER>
  <IMG src="../../images/Screenshot-Studio-Schema-Import.png" alt="Screenshot" width="766" height="461"/>
</CENTER>

Note: The default for this setting is 'false' or disabled.

### Step 2

The fortress 'init-apacheds' uses LDAPv3 to perform initial operations.

Edit build.properties, ensure the following line has been commented out:


<CENTER>
  <IMG src="../../images/Screenshot43-edit-disable-rest.png" alt="Screenshot"/>
</CENTER>

Note: The default for this setting is 'false' or disabled.

### Step 3

From FORTRESS_HOME root folder, enter the following command from a system prompt:

  ./b.sh init-apacheds 

### Step 4

Verify it ran correctly according to Ant.

	BUILD SUCCESSFUL

<CENTER>
  <IMG src="../../images/Screenshot7-init-slapd-success.png" alt="Screenshot" width="766" height="101"/>
</CENTER>

### Step 5

After above step completes, Symas ApacheDS will be installed, configured and loaded with fortress bootstrap config. This step also runs provisioning scripts which may be tailored according to requirements. Check out the xml load scripts in FORTRESS_HOME/ldap/setup folder.


### Step 5

Point your preferred LDAP browser, ours is Apache Directory Studio, to the installed directory. 

<To be completed>

<CENTER>
  <IMG src="../../images/Screenshot8-ldap-browser.png" alt="Screenshot" width="766" height="439"/>
</CENTER>
