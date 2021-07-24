---
title: ChangeLog
---

# ChangeLog

## Apache Directory Studio Version 2.0.0-M17 (July 24th 2021)

### Bugs

* [DIRSTUDIO-761](https://issues.apache.org/jira/browse/DIRSTUDIO-761) - GSSAPI Authentication fails when using ADS LDAP Client API
* [DIRSTUDIO-1219](https://issues.apache.org/jira/browse/DIRSTUDIO-1219) - Directory Studio doesn't StartTLS before authenticating
* [DIRSTUDIO-1220](https://issues.apache.org/jira/browse/DIRSTUDIO-1220) - Directory Studio doesn't use the SASL confidentiality layer after negotiating its use
* [DIRSTUDIO-1265](https://issues.apache.org/jira/browse/DIRSTUDIO-1265) - Object is not removed from cache when it's deleted
* [DIRSTUDIO-1267](https://issues.apache.org/jira/browse/DIRSTUDIO-1267) - Cannot create an entry with mandatory binary attribute
* [DIRSTUDIO-1269](https://issues.apache.org/jira/browse/DIRSTUDIO-1269) - SOCKS proxy is not working
* [DIRSTUDIO-1271](https://issues.apache.org/jira/browse/DIRSTUDIO-1271) - Oracle OUD 11.1.2.3 does not list any Naming Contexts in ldapbrowser with M16, previous releases are OK.
* [DIRSTUDIO-1273](https://issues.apache.org/jira/browse/DIRSTUDIO-1273) - Search Logs/Modification Logs not showing up in MacOS
* [DIRSTUDIO-1275](https://issues.apache.org/jira/browse/DIRSTUDIO-1275) - I updated on my mac to m16. Now only the proxy servers show the directory tree.
* [DIRSTUDIO-1276](https://issues.apache.org/jira/browse/DIRSTUDIO-1276) - Illegal reflective access by org.apache.directory.studio.connection.core.io.api.LdifSearchLogger

### Improvements:

* [DIRSTUDIO-1279](https://issues.apache.org/jira/browse/DIRSTUDIO-1279) - Show SSL/TLS connection info and certificates

### Tests:

* [DIRSTUDIO-1274](https://issues.apache.org/jira/browse/DIRSTUDIO-1274) - Rework integration tests

### Tasks:

* [DIRSTUDIO-1189](https://issues.apache.org/jira/browse/DIRSTUDIO-1189) - dom4j illegal reflective access with Java 11
* [DIRSTUDIO-1272](https://issues.apache.org/jira/browse/DIRSTUDIO-1272) - Remove Network Connections preferences page (socks proxy settings)


## Apache Directory Studio Version 2.0.0-M16 (February 21th 2021)
### Bugs

* [DIRSTUDIO-656](https://issues.apache.org/jira/browse/DIRSTUDIO-656) - Export to LDIF leaves out entries when large number of entries exist
* [DIRSTUDIO-744](https://issues.apache.org/jira/browse/DIRSTUDIO-744) - The strategy used when deleting the last attribute value causes issues in the case when ACLs/ACIs hide and forbid access to other values
* [DIRSTUDIO-745](https://issues.apache.org/jira/browse/DIRSTUDIO-745) - Quick search icon not showing
* [DIRSTUDIO-837](https://issues.apache.org/jira/browse/DIRSTUDIO-837) - Quicksearch hinders switching between connections
* [DIRSTUDIO-947](https://issues.apache.org/jira/browse/DIRSTUDIO-947) - Text Editor section is not available in preferences.
* [DIRSTUDIO-1119](https://issues.apache.org/jira/browse/DIRSTUDIO-1119) - Group (cn) with over 1000 members crashes
* [DIRSTUDIO-1125](https://issues.apache.org/jira/browse/DIRSTUDIO-1125) - Accessibility issues
* [DIRSTUDIO-1135](https://issues.apache.org/jira/browse/DIRSTUDIO-1135) - ACI Source is corrupted on 2nd edit
* [DIRSTUDIO-1167](https://issues.apache.org/jira/browse/DIRSTUDIO-1167) - Quick Search does not switch target host when changing connections
* [DIRSTUDIO-1216](https://issues.apache.org/jira/browse/DIRSTUDIO-1216) - Operational attribute "structuralObjectClass" cannot be displayed in entry editor if value contains underscore
* [DIRSTUDIO-1250](https://issues.apache.org/jira/browse/DIRSTUDIO-1250) - Paged Search (e.g. for Active Directory DC's) will not work in new version
* [DIRSTUDIO-1251](https://issues.apache.org/jira/browse/DIRSTUDIO-1251) - In error log after ldif import there is no detail about the error
* [DIRSTUDIO-1252](https://issues.apache.org/jira/browse/DIRSTUDIO-1252) - Incorrect text color for Table Entry Editor view
* [DIRSTUDIO-1256](https://issues.apache.org/jira/browse/DIRSTUDIO-1256) - Unable to export large numbers of entries with paged search
* [DIRSTUDIO-1257](https://issues.apache.org/jira/browse/DIRSTUDIO-1257) - Studio will not run on Catalina
* [DIRSTUDIO-1260](https://issues.apache.org/jira/browse/DIRSTUDIO-1260) - Fails to start on MacOS Big Sur
* [DIRSTUDIO-1263](https://issues.apache.org/jira/browse/DIRSTUDIO-1263) - export to csv or excel doesn't honor paging settings
* [DIRSTUDIO-1264](https://issues.apache.org/jira/browse/DIRSTUDIO-1264) - Apache Studio can not be run on MacOS 11.2 (Big Sur)

### Improvements:

* [DIRSTUDIO-345](https://issues.apache.org/jira/browse/DIRSTUDIO-345) - Studio startup could configure suitable version of Java
* [DIRSTUDIO-854](https://issues.apache.org/jira/browse/DIRSTUDIO-854) - Updated OID mappings
* [DIRSTUDIO-1206](https://issues.apache.org/jira/browse/DIRSTUDIO-1206) - Directory Studio doesn't support themes
* [DIRSTUDIO-1258](https://issues.apache.org/jira/browse/DIRSTUDIO-1258) - Can not change theme on MacOS (Big Sur)

### Tasks:

* [DIRSTUDIO-1262](https://issues.apache.org/jira/browse/DIRSTUDIO-1262) - Update to Eclipse 2020-12 and Java 11


## Apache Directory Studio Version 2.0.0-M15 (April 19th 2020)
### Bugs

* [DIRSTUDIO-1160](https://issues.apache.org/jira/browse/DIRSTUDIO-1160) - Attributes silently dropped and not imported when import LDIF and provider is Apache Directory LDAP API
* [DIRSTUDIO-1194](https://issues.apache.org/jira/browse/DIRSTUDIO-1194) - build looks outside of repo (extra "..")
* [DIRSTUDIO-1195](https://issues.apache.org/jira/browse/DIRSTUDIO-1195) - LDIF editor, entry editor, search result edtor fail to open with ClassCastException
* [DIRSTUDIO-1197](https://issues.apache.org/jira/browse/DIRSTUDIO-1197) - Connection Network check fails when using the LDAP API
* [DIRSTUDIO-1199](https://issues.apache.org/jira/browse/DIRSTUDIO-1199) - 2.0.0-M14 doesn't display objectGUID / objectSid correctly
* [DIRSTUDIO-1200](https://issues.apache.org/jira/browse/DIRSTUDIO-1200) - LDIF export fails with "Comparison method violates its general contract!"
* [DIRSTUDIO-1202](https://issues.apache.org/jira/browse/DIRSTUDIO-1202) - Eclipse - No perspective to switch to.
* [DIRSTUDIO-1203](https://issues.apache.org/jira/browse/DIRSTUDIO-1203) - testConnectFailures fails
* [DIRSTUDIO-1204](https://issues.apache.org/jira/browse/DIRSTUDIO-1204) - ImageDialog can't read binary data
* [DIRSTUDIO-1205](https://issues.apache.org/jira/browse/DIRSTUDIO-1205) - Which platforms does Studio work with TLS?
* [DIRSTUDIO-1210](https://issues.apache.org/jira/browse/DIRSTUDIO-1210) - mixed up documentation bug, in replication section of studio docs
* [DIRSTUDIO-1211](https://issues.apache.org/jira/browse/DIRSTUDIO-1211) - UserCertificate attribute shown as Invalid Certificate if "Apache... Client API" is used
* [DIRSTUDIO-1215](https://issues.apache.org/jira/browse/DIRSTUDIO-1215) - Getting invalid certificate for binary certificate field
* [DIRSTUDIO-1217](https://issues.apache.org/jira/browse/DIRSTUDIO-1217) - Viewing entries broken with newer Eclipse versions
* [DIRSTUDIO-1231](https://issues.apache.org/jira/browse/DIRSTUDIO-1231) - linux eclipse swt ClassCastException LDAPBrowser TableEditor
* [DIRSTUDIO-1233](https://issues.apache.org/jira/browse/DIRSTUDIO-1233) - NullPointerException within class EntryEditor.java
* [DIRSTUDIO-1234](https://issues.apache.org/jira/browse/DIRSTUDIO-1234) - Image Editor (still) does not work correctly
* [DIRSTUDIO-1240](https://issues.apache.org/jira/browse/DIRSTUDIO-1240) - Directory Studio displays "Invalid Certificate" after userCertificate upload
* [DIRSTUDIO-1243](https://issues.apache.org/jira/browse/DIRSTUDIO-1243) - Certificate Parsing Fails under Java 11
* [DIRSTUDIO-1246](https://issues.apache.org/jira/browse/DIRSTUDIO-1246) - Attribute export is different in version M13 and M14
* [DIRSTUDIO-1247](https://issues.apache.org/jira/browse/DIRSTUDIO-1247) - Fix high memory usage in clipboard code
* [DIRSTUDIO-1249](https://issues.apache.org/jira/browse/DIRSTUDIO-1249) - UTF-8 encoding problem

### New Features

* [DIRSTUDIO-648](https://issues.apache.org/jira/browse/DIRSTUDIO-648) - Studio should support the Password Modify Extended Operation according to RFC 3062

### Improvements

* [DIRSTUDIO-1124](https://issues.apache.org/jira/browse/DIRSTUDIO-1124) - Fix the user guide that still show how to configure ApacheDS 1.5.x...
* [DIRSTUDIO-1150](https://issues.apache.org/jira/browse/DIRSTUDIO-1150) - Add a configation option for the connection timeout
* [DIRSTUDIO-1207](https://issues.apache.org/jira/browse/DIRSTUDIO-1207) - Remove JNDI provider and JNDI layer
* [DIRSTUDIO-1213](https://issues.apache.org/jira/browse/DIRSTUDIO-1213) - Support OSX Dark Mode
* [DIRSTUDIO-1236](https://issues.apache.org/jira/browse/DIRSTUDIO-1236) - directory.apache.org refers to outdated "Mac OS X", which is now "macOS"

### Tasks

* [DIRSTUDIO-1222](https://issues.apache.org/jira/browse/DIRSTUDIO-1222) - Update to Eclipse 2020-03

### Questions

* [DIRSTUDIO-1165](https://issues.apache.org/jira/browse/DIRSTUDIO-1165) - Table Entry Editor - missing options following documentation
* [DIRSTUDIO-1201](https://issues.apache.org/jira/browse/DIRSTUDIO-1201) - How does checking the "read-only" flag change the connection/authentication bind?

### Outages

* [DIRSTUDIO-1227](https://issues.apache.org/jira/browse/DIRSTUDIO-1227) - mvn clean install command throwing NPE


## Apache Directory Studio Version 2.0.0-M14 (September 8th 2018)

* [DIRSTUDIO-987](https://issues.apache.org/jira/browse/DIRSTUDIO-987)  - strange behaviour with multi-valued RDN
* [DIRSTUDIO-1057](https://issues.apache.org/jira/browse/DIRSTUDIO-1057) - Update site doesn't work with https
* [DIRSTUDIO-1140](https://issues.apache.org/jira/browse/DIRSTUDIO-1140) - Apple Sierra shows corrupted app when launching Studio
* [DIRSTUDIO-1148](https://issues.apache.org/jira/browse/DIRSTUDIO-1148) - IOConsole Updater - An internal error has occurred.Java heap space
* [DIRSTUDIO-1151](https://issues.apache.org/jira/browse/DIRSTUDIO-1151) - DN with backslash not displayed
* [DIRSTUDIO-1157](https://issues.apache.org/jira/browse/DIRSTUDIO-1157) - Values cannot be modified by text editor
* [DIRSTUDIO-1163](https://issues.apache.org/jira/browse/DIRSTUDIO-1163) - Apache Directory Studio not starting on my MacBookPro running MacOS 10.13
* [DIRSTUDIO-1166](https://issues.apache.org/jira/browse/DIRSTUDIO-1166) - Studio crashes frequently Ever since MacOS High Sierra upgrade
* [DIRSTUDIO-1172](https://issues.apache.org/jira/browse/DIRSTUDIO-1172) - Studio doesn't display entries due to Invalid DN exception, but DN is compliant with RFC4514.
* [DIRSTUDIO-1174](https://issues.apache.org/jira/browse/DIRSTUDIO-1174) - Directory Studio startup very slow due to schema LDIF processing
* [DIRSTUDIO-1179](https://issues.apache.org/jira/browse/DIRSTUDIO-1179) - java.io.IOException: Invalid secret key format after Java update
* [DIRSTUDIO-1180](https://issues.apache.org/jira/browse/DIRSTUDIO-1180) - Value changed by Text Editor doesn't save
* [DIRSTUDIO-1184](https://issues.apache.org/jira/browse/DIRSTUDIO-1184) - ClassDef not found for @PostConstruct and @PreDestroy for JDK >=9
* [DIRSTUDIO-1185](https://issues.apache.org/jira/browse/DIRSTUDIO-1185) - OS reported defective Software and needs to be deleted
* [DIRSTUDIO-1191](https://issues.apache.org/jira/browse/DIRSTUDIO-1191) - Apache Directory Studio (Version: 2.0.0.v20170904-M13) suddenly crashes while browsing in MacOS (10.13.6)
* [DIRSTUDIO-1156](https://issues.apache.org/jira/browse/DIRSTUDIO-1156) - Text Editor usability improvements
* [DIRSTUDIO-1175](https://issues.apache.org/jira/browse/DIRSTUDIO-1175) - Description for 1.3.18.0.2.32.102 - 1.3.18.0.2.32.104 missing
* [DIRSTUDIO-1176](https://issues.apache.org/jira/browse/DIRSTUDIO-1176) - Sign dmg in MacOS release
* [DIRSTUDIO-1177](https://issues.apache.org/jira/browse/DIRSTUDIO-1177) - Enhance default editor mappings for eDirectory/Identity Manager
* [DIRSTUDIO-1186](https://issues.apache.org/jira/browse/DIRSTUDIO-1186) - Make Studio Java 11 ready
* [DIRSTUDIO-1187](https://issues.apache.org/jira/browse/DIRSTUDIO-1187) - Disable JNDI connection provider for Java 9+
* [DIRSTUDIO-1192](https://issues.apache.org/jira/browse/DIRSTUDIO-1192) - Change update site to use https
* [DIRSTUDIO-1193](https://issues.apache.org/jira/browse/DIRSTUDIO-1193) - Cleanup documenation

## Apache Directory Studio Version 2.0.0-M13 (September 4th 2017)

* [DIRSTUDIO-1120](https://issues.apache.org/jira/browse/DIRSTUDIO-1120) - Checkbox active protocols
* [DIRSTUDIO-1127](https://issues.apache.org/jira/browse/DIRSTUDIO-1127) - Configuration of Kerberos and ChangePassword port is not working
* [DIRSTUDIO-1129](https://issues.apache.org/jira/browse/DIRSTUDIO-1129) - Referrals do not work in v2
* [DIRSTUDIO-1130](https://issues.apache.org/jira/browse/DIRSTUDIO-1130) - Password from Keystore not used
* [DIRSTUDIO-1133](https://issues.apache.org/jira/browse/DIRSTUDIO-1133) - Potential NPE issue
* [DIRSTUDIO-1134](https://issues.apache.org/jira/browse/DIRSTUDIO-1134) - Boolean Attribute Addition with no value causes Directory Studio crash on Mac
* [DIRSTUDIO-1140](https://issues.apache.org/jira/browse/DIRSTUDIO-1140) - Apple Sierra shows corrupted app when launching Studio
* [DIRSTUDIO-1143](https://issues.apache.org/jira/browse/DIRSTUDIO-1143) - Stack trace when saving configuration
* [DIRSTUDIO-1147](https://issues.apache.org/jira/browse/DIRSTUDIO-1147) - bad links studio welcome overview page
* [DIRSTUDIO-1131](https://issues.apache.org/jira/browse/DIRSTUDIO-1131) - Update for OIDDescriptions.properties
* [DIRSTUDIO-1144](https://issues.apache.org/jira/browse/DIRSTUDIO-1144) - Upgrade to Eclipse Neon.3

## Apache Directory Studio Version 2.0.0-M12 (November 1st 2016)

* [DIRSTUDIO-738](https://issues.apache.org/jira/browse/DIRSTUDIO-738)   - Modular Crypt Format Salts are incorrectly displayed
* [DIRSTUDIO-919](https://issues.apache.org/jira/browse/DIRSTUDIO-919)   - Invalid thread access when saving an new ApacheDS 2.0 configuration file
* [DIRSTUDIO-1026](https://issues.apache.org/jira/browse/DIRSTUDIO-1026) - Searching for an AT or an OC using an alternate name does not find it
* [DIRSTUDIO-1050](https://issues.apache.org/jira/browse/DIRSTUDIO-1050) - High CPU load when opening attribute editor with Eclipse Mars
* [DIRSTUDIO-1075](https://issues.apache.org/jira/browse/DIRSTUDIO-1075) - ADS does not work with Oracle JRE 9
* [DIRSTUDIO-1080](https://issues.apache.org/jira/browse/DIRSTUDIO-1080) - Unable to save Server-Configuration: ERR_55 Trying to remove an non-existant attribute: attributetype
* [DIRSTUDIO-1081](https://issues.apache.org/jira/browse/DIRSTUDIO-1081) - Unable to save any configuration with apacheDS 2.0 and apache studio 2.0 M10
* [DIRSTUDIO-1082](https://issues.apache.org/jira/browse/DIRSTUDIO-1082) - 'Save configuration' encountered a problem
* [DIRSTUDIO-1083](https://issues.apache.org/jira/browse/DIRSTUDIO-1083) - Unable to save Configuration
* [DIRSTUDIO-1085](https://issues.apache.org/jira/browse/DIRSTUDIO-1085) - "Show Default Schema" doesn't seem to do anything
* [DIRSTUDIO-1090](https://issues.apache.org/jira/browse/DIRSTUDIO-1090) - Sorting by value not being applied
* [DIRSTUDIO-1091](https://issues.apache.org/jira/browse/DIRSTUDIO-1091) - Apache DS M10 hangs at 14% when connectiing on Windows 10
* [DIRSTUDIO-1095](https://issues.apache.org/jira/browse/DIRSTUDIO-1095) - Preferences : Connections : Certificates => java.lang.NullPointer
* [DIRSTUDIO-1098](https://issues.apache.org/jira/browse/DIRSTUDIO-1098) - Refresh of entry causes: "Unhandled event loop exception"
* [DIRSTUDIO-1100](https://issues.apache.org/jira/browse/DIRSTUDIO-1100) - Race condition.
* [DIRSTUDIO-1101](https://issues.apache.org/jira/browse/DIRSTUDIO-1101) - Can't disable "Allow Anonymous Access"
* [DIRSTUDIO-1108](https://issues.apache.org/jira/browse/DIRSTUDIO-1108) - Getting Invalid Certificate for userCertificate;binary entry when connecting with LDAPS, LDAP works fine
* [DIRSTUDIO-1111](https://issues.apache.org/jira/browse/DIRSTUDIO-1111) - Unable to connect to LDS connected to Active Directory over SSL
* [DIRSTUDIO-1112](https://issues.apache.org/jira/browse/DIRSTUDIO-1112) - NullPointerException when clicking a certificate on the Certificate Validation preference page
* [DIRSTUDIO-1114](https://issues.apache.org/jira/browse/DIRSTUDIO-1114) - Bad encoding used in text editor for binary data
* [DIRSTUDIO-1115](https://issues.apache.org/jira/browse/DIRSTUDIO-1115) - Value editor settings are not used and the menu displays wrong entries
* [DIRSTUDIO-1116](https://issues.apache.org/jira/browse/DIRSTUDIO-1116) - Attribute not sorted alphabetically for multiple entries
* [DIRSTUDIO-1121](https://issues.apache.org/jira/browse/DIRSTUDIO-1121) - Performance penalty as editor input is always set twice
* [DIRSTUDIO-1118](https://issues.apache.org/jira/browse/DIRSTUDIO-1118) - Add menu item to repair ApacheDS partitions
* [DIRSTUDIO-1093](https://issues.apache.org/jira/browse/DIRSTUDIO-1093) - Upgrade to Eclipse Mars.2
* [DIRSTUDIO-1022](https://issues.apache.org/jira/browse/DIRSTUDIO-1022) - Installers

## Apache Directory Studio Version 2.0.0-M11 (not released)

## Apache Directory Studio Version 2.0.0-M10 (January 2th 2016)

* CVE-2015-5349 - Command Injection through LDAP CSV export
* [DIRSTUDIO-1060](https://issues.apache.org/jira/browse/DIRSTUDIO-1060) - Exported OpenLDAP schema has syntax errors
* [DIRSTUDIO-1061](https://issues.apache.org/jira/browse/DIRSTUDIO-1061) - RawSchemaDefinition always shows single hyphen/dash (empty) for attributes or classes
* [DIRSTUDIO-1068](https://issues.apache.org/jira/browse/DIRSTUDIO-1068) - Bundles are not resolved on Eclipse Mars
* [DIRSTUDIO-1077](https://issues.apache.org/jira/browse/DIRSTUDIO-1077) - Logging for embedded ApacheDS servers broken (log4j.properties is deleted)
* [DIRSTUDIO-1079](https://issues.apache.org/jira/browse/DIRSTUDIO-1079) - Creating a new entry using an existing one fails because teh entryCSN at is being copied
* [DIRSTUDIO-1065](https://issues.apache.org/jira/browse/DIRSTUDIO-1065) - Have a better error message when the java version is wrong

## Apache Directory Studio Version 2.0.0-M9 (June 6th 2015)

**Bug**

* [DIRSTUDIO-815](https://issues.apache.org/jira/browse/DIRSTUDIO-815) - Tiny translation error [DE]
* [DIRSTUDIO-819](https://issues.apache.org/jira/browse/DIRSTUDIO-819) - Cannot open entries with DNs with UTF8 characters (Active Directory)
* [DIRSTUDIO-836](https://issues.apache.org/jira/browse/DIRSTUDIO-836) - Search for attributes with underscore "_" in attribute name eg. attr_name is not possible
* [DIRSTUDIO-855](https://issues.apache.org/jira/browse/DIRSTUDIO-855) - Some logical site artifact paths do not exist in site.xml / Apache Directory Studio 2.X Update Site / Nexus P2 Update Site Proxy
* [DIRSTUDIO-860](https://issues.apache.org/jira/browse/DIRSTUDIO-860) - Apache Directory Studio Update Site ZIP Archive not installable in Eclipse Indigo
* [DIRSTUDIO-903](https://issues.apache.org/jira/browse/DIRSTUDIO-903) - Clicking "Accept" when no changes have been made on the password edit dialog changes the password
* [DIRSTUDIO-922](https://issues.apache.org/jira/browse/DIRSTUDIO-922) - Eclipse plugin for version 2.0.0-M7 not installing correctly
* [DIRSTUDIO-932](https://issues.apache.org/jira/browse/DIRSTUDIO-932) - NPE while importing an ApacheDS 2.0 configuration from within the editor
* [DIRSTUDIO-934](https://issues.apache.org/jira/browse/DIRSTUDIO-934) - Exporting the configuration from the ApacheDS 2.0 Configuration Editor should not change the input
* [DIRSTUDIO-938](https://issues.apache.org/jira/browse/DIRSTUDIO-938) - LDAP Browser shows non ascii symbols as escaped
* [DIRSTUDIO-948](https://issues.apache.org/jira/browse/DIRSTUDIO-948) - Sorting search results does not work with over 1000 results
* [DIRSTUDIO-950](https://issues.apache.org/jira/browse/DIRSTUDIO-950) - Add support for PKCS5S2 hashing mechanism in Password Dialog
* [DIRSTUDIO-955](https://issues.apache.org/jira/browse/DIRSTUDIO-955) - Quick search one/subtree scope button is not sticky/always defaults to "one" when starting DS
* [DIRSTUDIO-958](https://issues.apache.org/jira/browse/DIRSTUDIO-958) - Exporting schemas as OpenLDAP files outputs entries in random order
* [DIRSTUDIO-959](https://issues.apache.org/jira/browse/DIRSTUDIO-959) - Exporting schemas as OpenLDAP files does not use proper escaping
* [DIRSTUDIO-961](https://issues.apache.org/jira/browse/DIRSTUDIO-961) - Crash during loading after recent uplate of libraries on Ubuntu
* [DIRSTUDIO-962](https://issues.apache.org/jira/browse/DIRSTUDIO-962) - Crash at startup : gtk_widget_get_tooltip_text
* [DIRSTUDIO-963](https://issues.apache.org/jira/browse/DIRSTUDIO-963) - Why UTF-8 is escaped in DN strings since 2.0.0?
* [DIRSTUDIO-964](https://issues.apache.org/jira/browse/DIRSTUDIO-964) - Fonts look ugly on Mac with Retina Display
* [DIRSTUDIO-965](https://issues.apache.org/jira/browse/DIRSTUDIO-965) - SIGSEGV on Startup
* [DIRSTUDIO-966](https://issues.apache.org/jira/browse/DIRSTUDIO-966) - NullPointerException after expanding LDAP tree and "Error notifying a preference change listener" in "attr/val quick filter"
* [DIRSTUDIO-967](https://issues.apache.org/jira/browse/DIRSTUDIO-967) - Timeout occurs during LDAP search
* [DIRSTUDIO-970](https://issues.apache.org/jira/browse/DIRSTUDIO-970) - gui quit whithout any prompt
* [DIRSTUDIO-979](https://issues.apache.org/jira/browse/DIRSTUDIO-979) - Crash with port already in use issues
* [DIRSTUDIO-983](https://issues.apache.org/jira/browse/DIRSTUDIO-983) - Package org.eclipse.update has been removed in Eclipse 4.2
* [DIRSTUDIO-988](https://issues.apache.org/jira/browse/DIRSTUDIO-988) - Studio plugins don't work in Eclipse Luna
* [DIRSTUDIO-993](https://issues.apache.org/jira/browse/DIRSTUDIO-993) - Directory studio stops after a few commands issued
* [DIRSTUDIO-999](https://issues.apache.org/jira/browse/DIRSTUDIO-999) - Fails to start after upgrade to CentOS 6.6/cairo 1.8.8-3.1
* [DIRSTUDIO-1000](https://issues.apache.org/jira/browse/DIRSTUDIO-1000) - LDAP perspective not opening on STS 3.6.2
* [DIRSTUDIO-1001](https://issues.apache.org/jira/browse/DIRSTUDIO-1001) - Unable to install in Luna
* [DIRSTUDIO-1012](https://issues.apache.org/jira/browse/DIRSTUDIO-1012) - Wrong USAGE for 9 passwordPolicy attributes
* [DIRSTUDIO-1014](https://issues.apache.org/jira/browse/DIRSTUDIO-1014) - Cannot remove the 'finished operations' in the progress pane
* [DIRSTUDIO-1018](https://issues.apache.org/jira/browse/DIRSTUDIO-1018) - Adding a new LDIF file directly fails with an error "can't find IDfind.ext"
* [DIRSTUDIO-1020](https://issues.apache.org/jira/browse/DIRSTUDIO-1020) - Fail to launch
* [DIRSTUDIO-1038](https://issues.apache.org/jira/browse/DIRSTUDIO-1038) - Dispose the various org.eclipse.swt.graphics.* objects we use
* [DIRSTUDIO-1039](https://issues.apache.org/jira/browse/DIRSTUDIO-1039) - SWTBot test suite hangs on opening connection
* [DIRSTUDIO-1040](https://issues.apache.org/jira/browse/DIRSTUDIO-1040) - Job found still running after platform shutdown
* [DIRSTUDIO-1042](https://issues.apache.org/jira/browse/DIRSTUDIO-1042) - Fix logging system
* [DIRSTUDIO-1043](https://issues.apache.org/jira/browse/DIRSTUDIO-1043) - First open of LDIF editor fails
* [DIRSTUDIO-1045](https://issues.apache.org/jira/browse/DIRSTUDIO-1045) - New Connection problem - ERR_04269 ATTRIBUTE_TYPE for OID ads-basedn does not exist
* [DIRSTUDIO-1047](https://issues.apache.org/jira/browse/DIRSTUDIO-1047) - No BrowserViewUniversalListener.connectionOpened null checks

**Improvement**

* [DIRSTUDIO-425](https://issues.apache.org/jira/browse/DIRSTUDIO-425) - Please provide the eclipse update site as zipfile
* [DIRSTUDIO-937](https://issues.apache.org/jira/browse/DIRSTUDIO-937) - No password confirmation while changing it
* [DIRSTUDIO-940](https://issues.apache.org/jira/browse/DIRSTUDIO-940) - Have schema editor populate creatorsName attribute for new objects (needed by ApacheDS)
* [DIRSTUDIO-941](https://issues.apache.org/jira/browse/DIRSTUDIO-941) - Friendly name for attribute syntax not shown when creating new attribute
* [DIRSTUDIO-942](https://issues.apache.org/jira/browse/DIRSTUDIO-942) - Description for OID 1.3.18.0.2.32.99 missing
* [DIRSTUDIO-980](https://issues.apache.org/jira/browse/DIRSTUDIO-980) - Make the new schema element visible withoit needing to click refresh in an obscure popup...
* [DIRSTUDIO-985](https://issues.apache.org/jira/browse/DIRSTUDIO-985) - member;Range
* [DIRSTUDIO-1003](https://issues.apache.org/jira/browse/DIRSTUDIO-1003) - The "Open Configuration" function is broken and doesn't work
* [DIRSTUDIO-1041](https://issues.apache.org/jira/browse/DIRSTUDIO-1041) - Headless run of SWTBot tests

**New Feature**

* [DIRSTUDIO-756](https://issues.apache.org/jira/browse/DIRSTUDIO-756) - Provide a P2 repository
* [DIRSTUDIO-949](https://issues.apache.org/jira/browse/DIRSTUDIO-949) - Add the ability to configure a Mavibot partition

**Task**

* [DIRSTUDIO-646](https://issues.apache.org/jira/browse/DIRSTUDIO-646) - Exclude ".gitignore" from source distribution
* [DIRSTUDIO-995](https://issues.apache.org/jira/browse/DIRSTUDIO-995) - Migrate build system to use Tycho
* [DIRSTUDIO-1005](https://issues.apache.org/jira/browse/DIRSTUDIO-1005) - Cleanup ApacheDS plugins
* [DIRSTUDIO-1006](https://issues.apache.org/jira/browse/DIRSTUDIO-1006) - Fix ODF export
* [DIRSTUDIO-1007](https://issues.apache.org/jira/browse/DIRSTUDIO-1007) - Replace org.eclipse.update.*
* [DIRSTUDIO-1009](https://issues.apache.org/jira/browse/DIRSTUDIO-1009) - Check legal files
* [DIRSTUDIO-1010](https://issues.apache.org/jira/browse/DIRSTUDIO-1010) - Hide unwanted UI items contributed by org.eclipse.* plugins
* [DIRSTUDIO-1016](https://issues.apache.org/jira/browse/DIRSTUDIO-1016) - Adapt ApacheDS plugins to new configuration scheme
* [DIRSTUDIO-1051](https://issues.apache.org/jira/browse/DIRSTUDIO-1051) - Update developer documentation
* [DIRSTUDIO-1021](https://issues.apache.org/jira/browse/DIRSTUDIO-1021) - Enable tests
* [DIRSTUDIO-1023](https://issues.apache.org/jira/browse/DIRSTUDIO-1023) - Generate P2 repository / update site
* [DIRSTUDIO-1024](https://issues.apache.org/jira/browse/DIRSTUDIO-1024) - Define release process
* [DIRSTUDIO-1025](https://issues.apache.org/jira/browse/DIRSTUDIO-1025) - Cleanup after Tycho Migration

***

## Apache Directory Studio Version 2.0.0-M8 (July 4th 2013)

**Bug**

* [DIRSTUDIO-788](https://issues.apache.org/jira/browse/DIRSTUDIO-788) - Date and Time editor incorrect time format for eDirectory
* [DIRSTUDIO-792](https://issues.apache.org/jira/browse/DIRSTUDIO-792) - Batch operation Next button inactive
* [DIRSTUDIO-868](https://issues.apache.org/jira/browse/DIRSTUDIO-868) - Do not send an unbind request if the authentication fails
* [DIRSTUDIO-911](https://issues.apache.org/jira/browse/DIRSTUDIO-911) - Object classes not visible within Schema View of OS X
* [DIRSTUDIO-912](https://issues.apache.org/jira/browse/DIRSTUDIO-912) - No connection pre-selected when DIT, Searches or Bookmarks is selected in the LDAP Brower view and the wizard is accessed via 'File' > 'Import' menu
* [DIRSTUDIO-917](https://issues.apache.org/jira/browse/DIRSTUDIO-917) - Exporting for ApacheDS an AT with a not-set syntax length results in 'm-length: 0' output in the resulting LDIF file
* [DIRSTUDIO-918](https://issues.apache.org/jira/browse/DIRSTUDIO-918) - Wrong error message in Import LDIF wizard when no connection is selected
* [DIRSTUDIO-919](https://issues.apache.org/jira/browse/DIRSTUDIO-919) - Invalid thread access when saving an new ApacheDS 2.0 configuration file
* [DIRSTUDIO-921](https://issues.apache.org/jira/browse/DIRSTUDIO-921) - Schema Pane does not refresh when creating a new object class
* [DIRSTUDIO-927](https://issues.apache.org/jira/browse/DIRSTUDIO-927) - The "options... Advanced Options Configuration" link on the "Overview" age does not work
* [DIRSTUDIO-930](https://issues.apache.org/jira/browse/DIRSTUDIO-930) - ERR_04269 ads_pwdvalidator does not exist
* [DIRSTUDIO-931](https://issues.apache.org/jira/browse/DIRSTUDIO-931) - ERR_04269 ATTRIBUTE_TYPE for OID ads-pwdvalidator does not exist!
**Improvement**

* [DIRSTUDIO-890](https://issues.apache.org/jira/browse/DIRSTUDIO-890) - Add support for SSHA2 in Password Editor
* [DIRSTUDIO-929](https://issues.apache.org/jira/browse/DIRSTUDIO-929) - Improve Hex Value Editor to allow text edition

**Task**

* [DIRSTUDIO-925](https://issues.apache.org/jira/browse/DIRSTUDIO-925) - Add new mandatory and optional attributes introduced for the 'ads-delegatingAuthenticator' object class

***

## Apache Directory Studio Version 2.0.0-M7 (May 17th 2013)

**Bug**

* [DIRSTUDIO-865](https://issues.apache.org/jira/browse/DIRSTUDIO-865) - NullPointerException thrown when connecting to Domino 8.5.2FP3 LDAP
* [DIRSTUDIO-888](https://issues.apache.org/jira/browse/DIRSTUDIO-888) - Improve editing of boolean values to allow lowercased values and shortcuts
* [DIRSTUDIO-891](https://issues.apache.org/jira/browse/DIRSTUDIO-891) - A schema project containing a reference to a deleted connection makes the perspective completely unusable
* [DIRSTUDIO-892](https://issues.apache.org/jira/browse/DIRSTUDIO-892) - Unable to import ApacheDS core schemas
* [DIRSTUDIO-893](https://issues.apache.org/jira/browse/DIRSTUDIO-893) - ConcurrentModificationException thrown while deleting multiple schema elements
* [DIRSTUDIO-899](https://issues.apache.org/jira/browse/DIRSTUDIO-899) - Unable to install Studio using the update site: "Missing requirement: ApacheDS Core 2.0.0.M11"
* [DIRSTUDIO-902](https://issues.apache.org/jira/browse/DIRSTUDIO-902) - Unusable configuration of the HashingPasswordInterceptor with recent milestone of ApacheDS 2.0
* [DIRSTUDIO-904](https://issues.apache.org/jira/browse/DIRSTUDIO-904) - Directory Studio create files with french "accents"
* [DIRSTUDIO-905](https://issues.apache.org/jira/browse/DIRSTUDIO-905) - IOException (Document is closed) thrown when quitting Apache Directory Studio with an LDAP Server running
* [DIRSTUDIO-907](https://issues.apache.org/jira/browse/DIRSTUDIO-907) - ERR_04269 ATTRIBUTE_TYPE for OID ads-replpingersleep does not exist!
* [DIRSTUDIO-916](https://issues.apache.org/jira/browse/DIRSTUDIO-916) - Can not open configuration for fresh installed ApacheDS and Studio

**Improvement**

* [DIRSTUDIO-857](https://issues.apache.org/jira/browse/DIRSTUDIO-857) - Add support for PasswordPolicy configuration
* [DIRSTUDIO-884](https://issues.apache.org/jira/browse/DIRSTUDIO-884) - Add new MessageDigest algorithm for passwords
* [DIRSTUDIO-895](https://issues.apache.org/jira/browse/DIRSTUDIO-895) - Add a 'Show password' checkbox to the CredentialsDialog used to ask the connection's password when it's not saved
* [DIRSTUDIO-897](https://issues.apache.org/jira/browse/DIRSTUDIO-897) - Active Directory attribute type 'lockoutTime' should be linked with the 'MS AD Date and Time Editor'
* [DIRSTUDIO-898](https://issues.apache.org/jira/browse/DIRSTUDIO-898) - Add case-insensitive support for the attribute types aliases in the 'Value Editors' preferences page

**New Feature**

* [DIRSTUDIO-901](https://issues.apache.org/jira/browse/DIRSTUDIO-901) - Add the ability to store connection passwords in a password-protected keystore

***

## Apache Directory Studio 2.0.0-M6 (March 8th 2013)

**Bug**

* [DIRSTUDIO-861](https://issues.apache.org/jira/browse/DIRSTUDIO-861) - Errors with DNs containing non-ASCII values on Active Directory
* [DIRSTUDIO-873](https://issues.apache.org/jira/browse/DIRSTUDIO-873) - Kerberos encryption types are not saved correctly
* [DIRSTUDIO-876](https://issues.apache.org/jira/browse/DIRSTUDIO-876) - Integer Editor should focus on the value text field upon opening
* [DIRSTUDIO-878](https://issues.apache.org/jira/browse/DIRSTUDIO-878) - Generation of the user guides as PDF and standalone HTML is broken
* [DIRSTUDIO-879](https://issues.apache.org/jira/browse/DIRSTUDIO-879) - Flags for an attribute type in the Schema Browser are not correctly rendered on OS X
* [DIRSTUDIO-889](https://issues.apache.org/jira/browse/DIRSTUDIO-889) - Error "Changes could not be saved to the connection" when saving server configuration on stock server and studio

**Improvement**

* [DIRSTUDIO-872](https://issues.apache.org/jira/browse/DIRSTUDIO-872) - The list of possible Kerberos encryption type should be available

**Task**

* [DIRSTUDIO-874](https://issues.apache.org/jira/browse/DIRSTUDIO-874) - Remove all ApacheDS and Apache Mina libraries plugins from trunk in '/libraries'
* [DIRSTUDIO-877](https://issues.apache.org/jira/browse/DIRSTUDIO-877) - Update ApacheDS schema files to the latest version
* [DIRSTUDIO-867](https://issues.apache.org/jira/browse/DIRSTUDIO-867) - References of old projects and packages name 'org.apache.directory.shared' still present in the code

***

## Apache Directory Studio 2.0.0-M5 (January 31th 2013)

**Bug**

* [DIRSTUDIO-867](https://issues.apache.org/jira/browse/DIRSTUDIO-867) - References of old projects and packages name 'org.apache.directory.shared' still present in the code

***

## Apache Directory Studio 2.0.0-M4 (January 25th 2013)

**Bug**

* [DIRSTUDIO-775](https://issues.apache.org/jira/browse/DIRSTUDIO-775) - Display issues in Image Editor
* [DIRSTUDIO-795](https://issues.apache.org/jira/browse/DIRSTUDIO-795) - Unable to delete multiple schema elements (attribute type, object class or schema)
* [DIRSTUDIO-796](https://issues.apache.org/jira/browse/DIRSTUDIO-796) - Unable to open multiple schema elements (attribute type, object class or schema)
* [DIRSTUDIO-799](https://issues.apache.org/jira/browse/DIRSTUDIO-799) - Unable to move object with Apache LDAP API
* [DIRSTUDIO-802](https://issues.apache.org/jira/browse/DIRSTUDIO-802) - Confusion between ISO-8859-1 and UTF-8 in the Encode/Decode dialog
* [DIRSTUDIO-808](https://issues.apache.org/jira/browse/DIRSTUDIO-808) - "Update existing entries" checkbox in "LDIF Import" wizard fails to work with the Apache Directory LDAP API
* [DIRSTUDIO-810](https://issues.apache.org/jira/browse/DIRSTUDIO-810) - Fullscreen plugin is /not/ under the Apache license
* [DIRSTUDIO-812](https://issues.apache.org/jira/browse/DIRSTUDIO-812) - Error while performing search
* [DIRSTUDIO-822](https://issues.apache.org/jira/browse/DIRSTUDIO-822) - Typo in one of the default indexed attributes when creating a new partition in the ApacheDS Configuration Editor v2
* [DIRSTUDIO-823](https://issues.apache.org/jira/browse/DIRSTUDIO-823) - Integer Value Editor only selects values of Java Integer magnitude
* [DIRSTUDIO-827](https://issues.apache.org/jira/browse/DIRSTUDIO-827) - Quick Search is not displayed when folding is activated
* [DIRSTUDIO-829](https://issues.apache.org/jira/browse/DIRSTUDIO-829) - NPE when trying to add a 'subtreeSpecification' value
* [DIRSTUDIO-833](https://issues.apache.org/jira/browse/DIRSTUDIO-833) - NPE in ACI Item Editor when adding AttributeType permission
* [DIRSTUDIO-834](https://issues.apache.org/jira/browse/DIRSTUDIO-834) - Unable to edit subtreeSpecification
* [DIRSTUDIO-835](https://issues.apache.org/jira/browse/DIRSTUDIO-835) - Display issues in the Password Editor on OS X
* [DIRSTUDIO-840](https://issues.apache.org/jira/browse/DIRSTUDIO-840) - Help system is not working
* [DIRSTUDIO-850](https://issues.apache.org/jira/browse/DIRSTUDIO-850) - The "Remove" button for mandatory ATs in the OC Editor does nothing
* [DIRSTUDIO-858](https://issues.apache.org/jira/browse/DIRSTUDIO-858) - The Entry Editor's Outline view should be unavailable when the selection isn't an entry or a bookmark
* [DIRSTUDIO-864](https://issues.apache.org/jira/browse/DIRSTUDIO-864) - Error message appears: "ERR_04269 ATTRIBUTE_TYPE for OID ads-replenabled does not exist!" when trying to open configuration

**Improvement**

* [DIRSTUDIO-657](https://issues.apache.org/jira/browse/DIRSTUDIO-657) - Add options to output the resulting LDIF of a batch operation to a file or to the clipboard
* [DIRSTUDIO-793](https://issues.apache.org/jira/browse/DIRSTUDIO-793) - Batch Operation define modification slowdown, needs scrollbar
* [DIRSTUDIO-797](https://issues.apache.org/jira/browse/DIRSTUDIO-797) - Two different 'HistoryUtils' classes should be merged into a single one in 'common.ui' plugin
* [DIRSTUDIO-809](https://issues.apache.org/jira/browse/DIRSTUDIO-809) - Improve the behavior of the "Execute LDIF" action of the LDIF Editor
* [DIRSTUDIO-813](https://issues.apache.org/jira/browse/DIRSTUDIO-813) - Add default value editors for eDirectory
* [DIRSTUDIO-828](https://issues.apache.org/jira/browse/DIRSTUDIO-828) - The Quick Search context menu item could reuse the currently selected entry in the Browser view as search base
* [DIRSTUDIO-838](https://issues.apache.org/jira/browse/DIRSTUDIO-838) - Add support for configuring the context entry of a partition in the ApacheDS 2.0 Configuration Editor
* [DIRSTUDIO-841](https://issues.apache.org/jira/browse/DIRSTUDIO-841) - When creating a connection from an existing ApacheDS 2.0 server, the "Open Configuration" item is not available
* [DIRSTUDIO-851](https://issues.apache.org/jira/browse/DIRSTUDIO-851) - Add a hint in the Connection Properties dialog about Certifcate Validation with a link to the corresponding preference page
* [DIRSTUDIO-852](https://issues.apache.org/jira/browse/DIRSTUDIO-852) - Display issues in the Certificate Validation preference page on OS X

**New Feature**

* [DIRSTUDIO-804](https://issues.apache.org/jira/browse/DIRSTUDIO-804) - Interpret Active Directory Timestamps
* [DIRSTUDIO-806](https://issues.apache.org/jira/browse/DIRSTUDIO-806) - Editing Multiple Directory Objects at once
* [DIRSTUDIO-843](https://issues.apache.org/jira/browse/DIRSTUDIO-843) - There is no place we can configure the KeyStore to use while configuring an ApacheDS server

**Task**

* [DIRSTUDIO-736](https://issues.apache.org/jira/browse/DIRSTUDIO-736) - Implement the "Execute Online" button of the BatchOperationWizard
* [DIRSTUDIO-791](https://issues.apache.org/jira/browse/DIRSTUDIO-791) - Update supportedControl and supportedExtension descriptions
* [DIRSTUDIO-811](https://issues.apache.org/jira/browse/DIRSTUDIO-811) - Review and remove any source file under Eclipse Public License (EPL) v 1.0
* [DIRSTUDIO-816](https://issues.apache.org/jira/browse/DIRSTUDIO-816) - Update OIDs to Descriptions properties file
* [DIRSTUDIO-839](https://issues.apache.org/jira/browse/DIRSTUDIO-839) - Update Eclipse dependencies to version 3.8.1

***

## Apache Directory Studio 2.0.0-M3 (February 24th 2012)

**Bug**

* [DIRSTUDIO-764](https://issues.apache.org/jira/browse/DIRSTUDIO-764) - Image Editor does not work correctly
* [DIRSTUDIO-765](https://issues.apache.org/jira/browse/DIRSTUDIO-765) - Can not export DSML
* [DIRSTUDIO-767](https://issues.apache.org/jira/browse/DIRSTUDIO-767) - All attribute names are lowercase when using Apache Directory LDAP Client API
* [DIRSTUDIO-768](https://issues.apache.org/jira/browse/DIRSTUDIO-768) - Error while searching using a filter on a binary attribute
* [DIRSTUDIO-769](https://issues.apache.org/jira/browse/DIRSTUDIO-769) - Alt-S shortkey does not work in Search Dialog
* [DIRSTUDIO-770](https://issues.apache.org/jira/browse/DIRSTUDIO-770) - Typos in french translation
* [DIRSTUDIO-771](https://issues.apache.org/jira/browse/DIRSTUDIO-771) - Searches are not saved when closing Studio 2.0 M1/M2
* [DIRSTUDIO-772](https://issues.apache.org/jira/browse/DIRSTUDIO-772) - Entry UUID Editor can't display eDirectory GUID
* [DIRSTUDIO-773](https://issues.apache.org/jira/browse/DIRSTUDIO-773) - IllegalArgumentException thrown when copying the RootDSE
* [DIRSTUDIO-776](https://issues.apache.org/jira/browse/DIRSTUDIO-776) - Misleading title for action "Open 'Search Result'/'Bookmark'/'Entry' in DIT" in LDAP Browser view context menu
* [DIRSTUDIO-777](https://issues.apache.org/jira/browse/DIRSTUDIO-777) - Renaming entry fails when using Apache Directory LDAP API
* [DIRSTUDIO-778](https://issues.apache.org/jira/browse/DIRSTUDIO-778) - NullPointerException when refreshing a TableEntryEditor
* [DIRSTUDIO-779](https://issues.apache.org/jira/browse/DIRSTUDIO-779) - Label for folded attributes in TableEntryEditor is not updated when quick filter is used
* [DIRSTUDIO-783](https://issues.apache.org/jira/browse/DIRSTUDIO-783) - The 'Rename Entry' dialog doesn't resize automatically when adding or removing RDN parts

**Improvement**

* [DIRSTUDIO-713](https://issues.apache.org/jira/browse/DIRSTUDIO-713) - Improve the 'Show in' sub-menu of the TableEntryEditor
* [DIRSTUDIO-780](https://issues.apache.org/jira/browse/DIRSTUDIO-780) - Allow Apache Directory Studio to be pinned to Windows 7's taskbar
* [DIRSTUDIO-782](https://issues.apache.org/jira/browse/DIRSTUDIO-782) - Improve Windows installer with JRE detection and creation of 'Apache Directory Studio.ini' file
* [DIRSTUDIO-784](https://issues.apache.org/jira/browse/DIRSTUDIO-784) - Add the ability to sort searches in the LDAP Browser view
* [DIRSTUDIO-785](https://issues.apache.org/jira/browse/DIRSTUDIO-785) - Add the ability to sort bookmarks in the LDAP Browser view

**Question**

* [DIRSTUDIO-821](https://issues.apache.org/jira/browse/DIRSTUDIO-821) - Where to get the public certificate used to sign the JAR of DS 1.5.3?

***

## Apache Directory Studio 2.0.0-M2 (January 27th 2012)

**Bug**

* [DIRSTUDIO-630](https://issues.apache.org/jira/browse/DIRSTUDIO-630) - Importing a Schema project twice shouldn't be possible
* [DIRSTUDIO-733](https://issues.apache.org/jira/browse/DIRSTUDIO-733) - Error while reading RootDSE on Sun One directory server
* [DIRSTUDIO-739](https://issues.apache.org/jira/browse/DIRSTUDIO-739) - Using 'Quick Search' in the DN editor while editing some object cancels editing and jumps to 'Quick Search' in the main window
* [DIRSTUDIO-759](https://issues.apache.org/jira/browse/DIRSTUDIO-759) - Exit confirmation dialog is showed twice when quitting the application by closing the window on Linux and Windows
* [DIRSTUDIO-760](https://issues.apache.org/jira/browse/DIRSTUDIO-760) - Unable to bind on an Active Directory server using 'domain\userid'
* [DIRSTUDIO-763](https://issues.apache.org/jira/browse/DIRSTUDIO-763) - Typo in some English error messages ('occured' instead of 'occurred')

***

## Apache Directory Studio 2.0.0-M1 (January 11th 2012)

**Bug**

* [DIRSTUDIO-301](https://issues.apache.org/jira/browse/DIRSTUDIO-301) - Intermittant ClassCastException from dom4j.DocumentFactory.getInstance()
* [DIRSTUDIO-428](https://issues.apache.org/jira/browse/DIRSTUDIO-428) - Same Name for attribute type and objectclass
* [DIRSTUDIO-454](https://issues.apache.org/jira/browse/DIRSTUDIO-454) - Colliding attributeType and objectClass names not supported
* [DIRSTUDIO-564](https://issues.apache.org/jira/browse/DIRSTUDIO-564) - Update ApacheDS core schema files to the latest version
* [DIRSTUDIO-651](https://issues.apache.org/jira/browse/DIRSTUDIO-651) - Typo in french translation
* [DIRSTUDIO-653](https://issues.apache.org/jira/browse/DIRSTUDIO-653) - The 'Choose' text for buttons on the AT and OC selection dialog has not been extracted for localization
* [DIRSTUDIO-658](https://issues.apache.org/jira/browse/DIRSTUDIO-658) - Exiting Directory Studio consumes CPU for couple of minutes
* [DIRSTUDIO-659](https://issues.apache.org/jira/browse/DIRSTUDIO-659) - Studio prompts for password even when "No Authentication" is selected
* [DIRSTUDIO-663](https://issues.apache.org/jira/browse/DIRSTUDIO-663) - can't import openldap schema having an attribute and an objectclass with the same alias
* [DIRSTUDIO-673](https://issues.apache.org/jira/browse/DIRSTUDIO-673) - Typo in the "check authentication" error message in the french translation
* [DIRSTUDIO-696](https://issues.apache.org/jira/browse/DIRSTUDIO-696) - ApacheDS Configuration plugin fails to open configuration file version 1.5.5 and 1.5.4 when NTP is enabled
* [DIRSTUDIO-698](https://issues.apache.org/jira/browse/DIRSTUDIO-698) - KeyDerivation interceptor missing in the ApacheDS Configuration Editor
* [DIRSTUDIO-699](https://issues.apache.org/jira/browse/DIRSTUDIO-699) - Interceptors order is not read/saved correctly in the ApacheDS Configuration Editor
* [DIRSTUDIO-703](https://issues.apache.org/jira/browse/DIRSTUDIO-703) - DSML Export fails to export when the size limit is hit
* [DIRSTUDIO-704](https://issues.apache.org/jira/browse/DIRSTUDIO-704) - NullPointerException creating new online schema editor project
* [DIRSTUDIO-708](https://issues.apache.org/jira/browse/DIRSTUDIO-708) - NPE when renaming a referral in 'Automatic' or 'Manual' Referral Handling mode
* [DIRSTUDIO-710](https://issues.apache.org/jira/browse/DIRSTUDIO-710) - SearchResultEntryDsml not setting attribute name correctly
* [DIRSTUDIO-716](https://issues.apache.org/jira/browse/DIRSTUDIO-716) - Error while opening connection : NPE
* [DIRSTUDIO-724](https://issues.apache.org/jira/browse/DIRSTUDIO-724) - Too many events: Outline and Modifications Logs views are refreshed multiple times
* [DIRSTUDIO-726](https://issues.apache.org/jira/browse/DIRSTUDIO-726) - Added a binary attributes in preference is not stored correctly
* [DIRSTUDIO-727](https://issues.apache.org/jira/browse/DIRSTUDIO-727) - It is possible to add empty Binary Attributes and Binary Syntax Definitions in the preferences
* [DIRSTUDIO-728](https://issues.apache.org/jira/browse/DIRSTUDIO-728) - Wrong attribute name in entry editor
* [DIRSTUDIO-731](https://issues.apache.org/jira/browse/DIRSTUDIO-731) - Editing RDN attribute should open rename dialog
* [DIRSTUDIO-734](https://issues.apache.org/jira/browse/DIRSTUDIO-734) - Schema error: Alias NAME is already used by another item: object class with OID
* [DIRSTUDIO-740](https://issues.apache.org/jira/browse/DIRSTUDIO-740) - Potential bug when using String.toLowerCase() method with a Turkish locale
* [DIRSTUDIO-742](https://issues.apache.org/jira/browse/DIRSTUDIO-742) - Directory Studio will not start if its installation directory is not writeable
* [DIRSTUDIO-748](https://issues.apache.org/jira/browse/DIRSTUDIO-748) - Entry attribute name not displayed correctly in Table Entry Editor.
* [DIRSTUDIO-749](https://issues.apache.org/jira/browse/DIRSTUDIO-749) - Syntaxes shouldn't have/use 'names' (or 'aliases') but 'description' instead
* [DIRSTUDIO-754](https://issues.apache.org/jira/browse/DIRSTUDIO-754) - Some values in the 'Text Formats' preference page are not saved between launches

**Improvement**

* [DIRSTUDIO-413](https://issues.apache.org/jira/browse/DIRSTUDIO-413) - Add possibility to make connections read-only
* [DIRSTUDIO-432](https://issues.apache.org/jira/browse/DIRSTUDIO-432) - Better error message for invalid LDIF records on import
* [DIRSTUDIO-445](https://issues.apache.org/jira/browse/DIRSTUDIO-445) - Allow the user to rename a schema in the editor
* [DIRSTUDIO-446](https://issues.apache.org/jira/browse/DIRSTUDIO-446) - Allow the user to rename any item using the F2 shortcut
* [DIRSTUDIO-447](https://issues.apache.org/jira/browse/DIRSTUDIO-447) - Add the ability to use wildcards (?, *) in the ATs or OCs selection dialog to ease the search
* [DIRSTUDIO-649](https://issues.apache.org/jira/browse/DIRSTUDIO-649) - The 'Installed JREs' preference page should mention Apache DS plugin and not Java projects
* [DIRSTUDIO-655](https://issues.apache.org/jira/browse/DIRSTUDIO-655) - Switch usage of SWT MessageBox to JFace MessageDialog for info, warning and error dialogs
* [DIRSTUDIO-685](https://issues.apache.org/jira/browse/DIRSTUDIO-685) - Move duplicated 'ViewFormWidget' class to the 'common.ui' plugin
* [DIRSTUDIO-717](https://issues.apache.org/jira/browse/DIRSTUDIO-717) - Add application for Windows 64 Bit
* [DIRSTUDIO-722](https://issues.apache.org/jira/browse/DIRSTUDIO-722) - LDIF parser should allow attribute names with underscore ("_")
* [DIRSTUDIO-746](https://issues.apache.org/jira/browse/DIRSTUDIO-746) - Add support for the Full Screen feature of OS X Lion
* [DIRSTUDIO-752](https://issues.apache.org/jira/browse/DIRSTUDIO-752) - Improve fault tolerance when reading an online schema from a connection

**New Feature**
* [DIRSTUDIO-112](https://issues.apache.org/jira/browse/DIRSTUDIO-112) - Export schema
* [DIRSTUDIO-320](https://issues.apache.org/jira/browse/DIRSTUDIO-320) - Studio exits without showing a confirmation dialog
* [DIRSTUDIO-692](https://issues.apache.org/jira/browse/DIRSTUDIO-692) - User should be able to supress the version line in exported LDIF files
* [DIRSTUDIO-694](https://issues.apache.org/jira/browse/DIRSTUDIO-694) - Add ability to export certificates in the 'Certificate Validation' preference page
* [DIRSTUDIO-712](https://issues.apache.org/jira/browse/DIRSTUDIO-712) - Add a 'Go to DN...' action to the Navigate menu in Eclipse
* [DIRSTUDIO-755](https://issues.apache.org/jira/browse/DIRSTUDIO-755) - Implement the 'Add...' button in the 'Certificate Validation' preference page

**Task**

* [DIRSTUDIO-683](https://issues.apache.org/jira/browse/DIRSTUDIO-683) - Add a generic way to run Eclipse Jobs and Studio runnables in the 'common.core' plugin and extend this in other plugins
* [DIRSTUDIO-684](https://issues.apache.org/jira/browse/DIRSTUDIO-684) - Convert remaining Eclipse Jobs in LDAP Browser to Studio runnable API
* [DIRSTUDIO-688](https://issues.apache.org/jira/browse/DIRSTUDIO-688) - Remove the 'jars' plugins and create one specific plugin per external library dependency
* [DIRSTUDIO-697](https://issues.apache.org/jira/browse/DIRSTUDIO-697) - Add support for ApacheDS 1.5.7 'server.xml' configuration file
* [DIRSTUDIO-718](https://issues.apache.org/jira/browse/DIRSTUDIO-718) - Update Eclipse dependencies to version 3.6.1
* [DIRSTUDIO-737](https://issues.apache.org/jira/browse/DIRSTUDIO-737) - Update Eclipse dependencies to version 3.7.0
* [DIRSTUDIO-751](https://issues.apache.org/jira/browse/DIRSTUDIO-751) - Update Eclipse dependencies to version 3.7.1
* [DIRSTUDIO-757](https://issues.apache.org/jira/browse/DIRSTUDIO-757) - Update all features with the new 'library' plugins

***

## Apache Directory Studio 1.5.3 (March 30th 2010)

**Bug**

* [DIRSTUDIO-424](https://issues.apache.org/jira/browse/DIRSTUDIO-424) - Canceling a search gives an error sometimes
* [DIRSTUDIO-585](https://issues.apache.org/jira/browse/DIRSTUDIO-585) - Do not modify the current thread's ClassLoader; or reset it afterwards
* [DIRSTUDIO-608](https://issues.apache.org/jira/browse/DIRSTUDIO-608) - Non-translated string in the French version of the "Export Connections" wizard
* [DIRSTUDIO-609](https://issues.apache.org/jira/browse/DIRSTUDIO-609) - Studio "hangs" when performing large search that is to be displayed
* [DIRSTUDIO-610](https://issues.apache.org/jira/browse/DIRSTUDIO-610) - Unable to export to "My Documents"
* [DIRSTUDIO-611](https://issues.apache.org/jira/browse/DIRSTUDIO-611) - Unable to add a third party Entry Editor
* [DIRSTUDIO-613](https://issues.apache.org/jira/browse/DIRSTUDIO-613) - Certificate with empty common name (cn) appears almost hidden in the preference page table view
* [DIRSTUDIO-614](https://issues.apache.org/jira/browse/DIRSTUDIO-614) - The 'Installed JREs' preference page is no longer displayed in Apache Directory Studio's preferences
* [DIRSTUDIO-615](https://issues.apache.org/jira/browse/DIRSTUDIO-615) - Various typos in the french translation
* [DIRSTUDIO-616](https://issues.apache.org/jira/browse/DIRSTUDIO-616) - Entry Editor Manager does not ensure that the entry's attributes are initialized (loaded) before testing and opening editors
* [DIRSTUDIO-617](https://issues.apache.org/jira/browse/DIRSTUDIO-617) - Tabular and LDIF Entry Single-Tab Editors should warn the user when modifications are pending (auto-save disabled) and their input is changed
* [DIRSTUDIO-623](https://issues.apache.org/jira/browse/DIRSTUDIO-623) - NPE in the ModificationLogsViewUniversalListener under rare circumstances when selecting a connection
* [DIRSTUDIO-624](https://issues.apache.org/jira/browse/DIRSTUDIO-624) - NPE in the SearchLogsViewUniversalListener.java under rare circumstances when selecting a connection
* [DIRSTUDIO-627](https://issues.apache.org/jira/browse/DIRSTUDIO-627) - Can't open a relatively big LDIF file
* [DIRSTUDIO-629](https://issues.apache.org/jira/browse/DIRSTUDIO-629) - Entry editor tab is activated when executing a search
* [DIRSTUDIO-629](https://issues.apache.org/jira/browse/DIRSTUDIO-629) - Endless event loop
* [DIRSTUDIO-637](https://issues.apache.org/jira/browse/DIRSTUDIO-637) - copy/paste of attributes no longer works
* [DIRSTUDIO-639](https://issues.apache.org/jira/browse/DIRSTUDIO-639) - Exception when navigation history contains bookmarks of an deleted connection
* [DIRSTUDIO-642](https://issues.apache.org/jira/browse/DIRSTUDIO-642) - ADS does not remember the certificate if two certificates are used for the same server
* [DIRSTUDIO-643](https://issues.apache.org/jira/browse/DIRSTUDIO-643) - Missing modules when importing into Eclipse as existing project

**Improvement**

* [DIRSTUDIO-612](https://issues.apache.org/jira/browse/DIRSTUDIO-612) - The 'Properties' item in the context menu of the default Entry Editor should be enabled and linked to the entry properties when no particular attribute is selected in the table
* [DIRSTUDIO-618](https://issues.apache.org/jira/browse/DIRSTUDIO-618) - The icon of the entry in the 'Outline' view for the LDIF Entry Editor should be the same as the one in the 'LDAP Browser' view
* [DIRSTUDIO-619](https://issues.apache.org/jira/browse/DIRSTUDIO-619) - Outline view for the LDIF Entry Editor should display by default the nodes underneath the entry
* [DIRSTUDIO-625](https://issues.apache.org/jira/browse/DIRSTUDIO-625) - Add Connection Context in the LDAP Browser Window
* [DIRSTUDIO-633](https://issues.apache.org/jira/browse/DIRSTUDIO-633) - Delete all searches context menu
* [DIRSTUDIO-634](https://issues.apache.org/jira/browse/DIRSTUDIO-634) - Add search context menu entry / simplify search
* [DIRSTUDIO-638](https://issues.apache.org/jira/browse/DIRSTUDIO-638) - Improve the way we ask for operational attributes

**Task**

* [DIRSTUDIO-635](https://issues.apache.org/jira/browse/DIRSTUDIO-635) - Update Eclipse dependencies to version 3.5.2
* [DIRSTUDIO-636](https://issues.apache.org/jira/browse/DIRSTUDIO-636) - Update copyright in spash screen to 2010
* [DIRSTUDIO-640](https://issues.apache.org/jira/browse/DIRSTUDIO-640) - Support for server.xml file of Apache DS version 1.5.6
* [DIRSTUDIO-641](https://issues.apache.org/jira/browse/DIRSTUDIO-641) - Integrate Apache DS version 1.5.6 in the Apache DS plugin

***

## Apache Directory Studio 1.5.2 (December 14th 2009)

**Bug**

* [DIRSTUDIO-601](https://issues.apache.org/jira/browse/DIRSTUDIO-601) - The 'Perform Search/Search Again' button in the Search Result Editor does not work correctly
* [DIRSTUDIO-602](https://issues.apache.org/jira/browse/DIRSTUDIO-602) - Unable to start an Apache DS version 1.5.5 server
* [DIRSTUDIO-603](https://issues.apache.org/jira/browse/DIRSTUDIO-603) - Error browsing/entering rfc2307 compliant host entry

**Task**

* [DIRSTUDIO-605](https://issues.apache.org/jira/browse/DIRSTUDIO-605) - Update the help content of the configuration editor for version 1.5.5 of Apache DS

***

## Apache Directory Studio 1.5.1 (December 2nd 2009)

**Bug**

* [DIRSTUDIO-576](https://issues.apache.org/jira/browse/DIRSTUDIO-576) - Context menu not shown after a right-click on a non-cached entry
* [DIRSTUDIO-577](https://issues.apache.org/jira/browse/DIRSTUDIO-577) - LDIF editor doesn't notify Eclipse that the LDIF file has changed when saving
* [DIRSTUDIO-580](https://issues.apache.org/jira/browse/DIRSTUDIO-580) - Setting "Validate certificates for secure LDAP connections" is not saved
* [DIRSTUDIO-587](https://issues.apache.org/jira/browse/DIRSTUDIO-587) - UI flickers on quick search
* [DIRSTUDIO-589](https://issues.apache.org/jira/browse/DIRSTUDIO-589) - InvalidNameException: unexpected token for user ids starting with hash sign
* [DIRSTUDIO-590](https://issues.apache.org/jira/browse/DIRSTUDIO-590) - The 'Quick Search' string has not been externalized in the LDAP Browser view
* [DIRSTUDIO-591](https://issues.apache.org/jira/browse/DIRSTUDIO-591) - Error reading objects with # in DN
* [DIRSTUDIO-592](https://issues.apache.org/jira/browse/DIRSTUDIO-592) - LDAP Browser view is refreshed twice after the initialization of the children of an entry
* [DIRSTUDIO-593](https://issues.apache.org/jira/browse/DIRSTUDIO-593) - Missing string and typo in the french translation of the Password Editor
* [DIRSTUDIO-594](https://issues.apache.org/jira/browse/DIRSTUDIO-594) - The 'Show new password details' checkbox does not display the 'Enter new password' text field as clear text when checked in the Password Editor
* [DIRSTUDIO-596](https://issues.apache.org/jira/browse/DIRSTUDIO-596) - Various typos in the french translation
* [DIRSTUDIO-597](https://issues.apache.org/jira/browse/DIRSTUDIO-597) - Modification sent to the server while browsing through the DIT and refreshing entries
* [DIRSTUDIO-598](https://issues.apache.org/jira/browse/DIRSTUDIO-598) - Base64 encoded DN marked as invalid in LDIF editor

**Improvement**

* [DIRSTUDIO-595](https://issues.apache.org/jira/browse/DIRSTUDIO-595) - The icon of the entry in the 'Outline' view should be the same as the one in the 'LDAP Browser' view

***

## Apache Directory Studio 1.5.0 (November 8th 2009)

**Bug**

* [DIRSTUDIO-282](https://issues.apache.org/jira/browse/DIRSTUDIO-282) - Save failed: null, when adding an attribute to a class, if attribute is also open in gui
* [DIRSTUDIO-331](https://issues.apache.org/jira/browse/DIRSTUDIO-331) - Instant error when importing schema in a new schema-project
* [DIRSTUDIO-334](https://issues.apache.org/jira/browse/DIRSTUDIO-334) - Built-in help doesn't show icons for "Icons" and "Toolbars" tables in "LDAP Browser View"
* [DIRSTUDIO-370](https://issues.apache.org/jira/browse/DIRSTUDIO-370) - Welcome screen subpages mouse-over images displays red crosses
* [DIRSTUDIO-402](https://issues.apache.org/jira/browse/DIRSTUDIO-402) - The ManageDsaIT control should be activable for a single request, not at the connection level
* [DIRSTUDIO-403](https://issues.apache.org/jira/browse/DIRSTUDIO-403) - Cannot add refs when the ExtensibleObject OC has been added to a referral
* [DIRSTUDIO-409](https://issues.apache.org/jira/browse/DIRSTUDIO-409) - No error message in some special case
* [DIRSTUDIO-410](https://issues.apache.org/jira/browse/DIRSTUDIO-410) - Referral handling is problematic
* [DIRSTUDIO-418](https://issues.apache.org/jira/browse/DIRSTUDIO-418) - Slow LDIF/CSV export
* [DIRSTUDIO-429](https://issues.apache.org/jira/browse/DIRSTUDIO-429) - Meaningless error message on importing schema
* [DIRSTUDIO-437](https://issues.apache.org/jira/browse/DIRSTUDIO-437) - Alias are not exposed as such in the browser
* [DIRSTUDIO-441](https://issues.apache.org/jira/browse/DIRSTUDIO-441) - New ObjectClass and AttributeType wizards always show a warning indicating that the item does not have any name
* [DIRSTUDIO-443](https://issues.apache.org/jira/browse/DIRSTUDIO-443) - The warning and error overlay for OCs and ATs sometimes (often) lacks forgets some items
* [DIRSTUDIO-473](https://issues.apache.org/jira/browse/DIRSTUDIO-473) - Import OpenLDAP core schema
* [DIRSTUDIO-481](https://issues.apache.org/jira/browse/DIRSTUDIO-481) - Improve refreshing of attributes and children
* [DIRSTUDIO-483](https://issues.apache.org/jira/browse/DIRSTUDIO-483) - DN Editor escapes all non-ascii characters
* [DIRSTUDIO-484](https://issues.apache.org/jira/browse/DIRSTUDIO-484) - Rename dialog does not work with escaped RDNs
* [DIRSTUDIO-486](https://issues.apache.org/jira/browse/DIRSTUDIO-486) - Include Version Specifier in LDIF export
* [DIRSTUDIO-488](https://issues.apache.org/jira/browse/DIRSTUDIO-488) - New context entry creation is not shown just after connection
* [DIRSTUDIO-489](https://issues.apache.org/jira/browse/DIRSTUDIO-489) - LDIF Import very slow
* [DIRSTUDIO-490](https://issues.apache.org/jira/browse/DIRSTUDIO-490) - Copy/Paste a search from one connection to another doesn't work
* [DIRSTUDIO-493](https://issues.apache.org/jira/browse/DIRSTUDIO-493) - Aliased attributes show only one attribute name in the RDN selection list instead of the full aliases list
* [DIRSTUDIO-495](https://issues.apache.org/jira/browse/DIRSTUDIO-495) - Cannot edit password field
* [DIRSTUDIO-497](https://issues.apache.org/jira/browse/DIRSTUDIO-497) - LdapSchema plugin 'Save' is erratic
* [DIRSTUDIO-499](https://issues.apache.org/jira/browse/DIRSTUDIO-499) - SOCKS proxy settings not used on startup
* [DIRSTUDIO-502](https://issues.apache.org/jira/browse/DIRSTUDIO-502) - Copy/Paste the context entry from one connection to another doesn't work
* [DIRSTUDIO-503](https://issues.apache.org/jira/browse/DIRSTUDIO-503) - New Entry -> Available object classes list remains stale after new objectclasses added
* [DIRSTUDIO-504](https://issues.apache.org/jira/browse/DIRSTUDIO-504) - Timestamp attribute with an invalid time in it is read only - editor ignores entry
* [DIRSTUDIO-506](https://issues.apache.org/jira/browse/DIRSTUDIO-506) - Export Schemas for ApacheDS: object classes must be sorted by hierarchy
* [DIRSTUDIO-507](https://issues.apache.org/jira/browse/DIRSTUDIO-507) - Attempt to rename the rdn results in message contain \{0\} and \{1\}
* [DIRSTUDIO-512](https://issues.apache.org/jira/browse/DIRSTUDIO-512) - Deletion of entries very slow
* [DIRSTUDIO-514](https://issues.apache.org/jira/browse/DIRSTUDIO-514) - Unable to restore last opened ldif-editors on restart
* [DIRSTUDIO-520](https://issues.apache.org/jira/browse/DIRSTUDIO-520) - NPE when saving a 1.5.0 server configuration
* [DIRSTUDIO-524](https://issues.apache.org/jira/browse/DIRSTUDIO-524) - Operational attributes are not show, although enabled under preferences
* [DIRSTUDIO-527](https://issues.apache.org/jira/browse/DIRSTUDIO-527) - Unable to display Active Directory GUIDs
* [DIRSTUDIO-529](https://issues.apache.org/jira/browse/DIRSTUDIO-529) - Unpretty 2-3 pixels height margin at the top of the Browser view
* [DIRSTUDIO-530](https://issues.apache.org/jira/browse/DIRSTUDIO-530) - Unpretty 2-3 pixels height margin at the top of the Entry editor
* [DIRSTUDIO-531](https://issues.apache.org/jira/browse/DIRSTUDIO-531) - Unpretty 2-3 pixels height margin at the top of the Search Results editor
* [DIRSTUDIO-532](https://issues.apache.org/jira/browse/DIRSTUDIO-532) - Refreshing parent of referral may give ConcurrentModificationException
* [DIRSTUDIO-537](https://issues.apache.org/jira/browse/DIRSTUDIO-537) - Error in the title of the Properties window of a server in the Apache DS plugin
* [DIRSTUDIO-545](https://issues.apache.org/jira/browse/DIRSTUDIO-545) - Widget disposed too early
* [DIRSTUDIO-547](https://issues.apache.org/jira/browse/DIRSTUDIO-547) - Editor for Classes userClass saves or reloads incorrect value
* [DIRSTUDIO-549](https://issues.apache.org/jira/browse/DIRSTUDIO-549) - subtree userClass editor does not keep full DN for base component upon its selection
* [DIRSTUDIO-550](https://issues.apache.org/jira/browse/DIRSTUDIO-550) - Root DSE properties: Directory types IBM Tivoli Directory Server 6.1 and 6.2 not detected correctly 
* [DIRSTUDIO-552](https://issues.apache.org/jira/browse/DIRSTUDIO-552) - NullPointerException if Root DSE of IBM Tivoli Directory Server displayed in Entry Editor
* [DIRSTUDIO-553](https://issues.apache.org/jira/browse/DIRSTUDIO-553) - Add descriptions for server specific OIDs of IBM Tivoli Directory Server 6.1 and 6.2
* [DIRSTUDIO-557](https://issues.apache.org/jira/browse/DIRSTUDIO-557) - Edit value and edit entry are not working if DN is invalid
* [DIRSTUDIO-565](https://issues.apache.org/jira/browse/DIRSTUDIO-565) - Inconsistent handling of the 'modified schemas' flag
* [DIRSTUDIO-568](https://issues.apache.org/jira/browse/DIRSTUDIO-568) - When editing an AT or OC, using the scroll wheel may trigger a combo change
* [DIRSTUDIO-569](https://issues.apache.org/jira/browse/DIRSTUDIO-569) - Exceptions showing up in the log when starting a server in the Apache DS plugin
* [DIRSTUDIO-570](https://issues.apache.org/jira/browse/DIRSTUDIO-570) - Integer Value Editor does not accept negative numbers
* [DIRSTUDIO-571](https://issues.apache.org/jira/browse/DIRSTUDIO-571) - Modification is logged even if referred to another directory server
* [DIRSTUDIO-575](https://issues.apache.org/jira/browse/DIRSTUDIO-575) - Bookmarks not working

**Improvement**

* [DIRSTUDIO-145](https://issues.apache.org/jira/browse/DIRSTUDIO-145) - Multiple tabs for entry editor
* [DIRSTUDIO-263](https://issues.apache.org/jira/browse/DIRSTUDIO-263) - Add certificate validation for ldaps and StartTLS
* [DIRSTUDIO-371](https://issues.apache.org/jira/browse/DIRSTUDIO-371) - Entries with a ref  attribute should be shown N times in the browser (N = number of ref values)
* [DIRSTUDIO-444](https://issues.apache.org/jira/browse/DIRSTUDIO-444) - Allow the user to enter the names of an item inline (using ',' as separator) in the OC and AT Editors
* [DIRSTUDIO-485](https://issues.apache.org/jira/browse/DIRSTUDIO-485) - Provide default IAuthHandler and IReferralHandler to be used in connections core without connections ui
* [DIRSTUDIO-487](https://issues.apache.org/jira/browse/DIRSTUDIO-487) - Empty namingcontexts causes javax.naming.InvalidNameException: Bad DN
* [DIRSTUDIO-496](https://issues.apache.org/jira/browse/DIRSTUDIO-496) - Password editor improvements
* [DIRSTUDIO-509](https://issues.apache.org/jira/browse/DIRSTUDIO-509) - Load schema from the directory server
* [DIRSTUDIO-513](https://issues.apache.org/jira/browse/DIRSTUDIO-513) - Do delete before add when modifying attribute values
* [DIRSTUDIO-521](https://issues.apache.org/jira/browse/DIRSTUDIO-521) - Replace the XSLT transformation by the use of the Dom4J OutputFormat class for XML pretty print
* [DIRSTUDIO-533](https://issues.apache.org/jira/browse/DIRSTUDIO-533) - Only show referral handling dialog when opening or expanding referral entry
* [DIRSTUDIO-534](https://issues.apache.org/jira/browse/DIRSTUDIO-534) - Re-order the preference pages for better understanding
* [DIRSTUDIO-535](https://issues.apache.org/jira/browse/DIRSTUDIO-535) - Use SWT.SEARCH and SWT.CANCEL style bits on search text field for a native search field on Mac OS X
* [DIRSTUDIO-541](https://issues.apache.org/jira/browse/DIRSTUDIO-541) - Add support for version 1.5.5 of the Apache DS
* [DIRSTUDIO-548](https://issues.apache.org/jira/browse/DIRSTUDIO-548) - SubtreeSpecification Editor does not accept empty filter if it's selected
* [DIRSTUDIO-554](https://issues.apache.org/jira/browse/DIRSTUDIO-554) - Add option to save tabular entry editor automatically or manually
* [DIRSTUDIO-555](https://issues.apache.org/jira/browse/DIRSTUDIO-555) - Human readable descriptions of OIDs in binary attributes preference page
* [DIRSTUDIO-558](https://issues.apache.org/jira/browse/DIRSTUDIO-558) - Load special entries (aliases, referrals, subentries) per request, add menu items to browser's context menu
* [DIRSTUDIO-574](https://issues.apache.org/jira/browse/DIRSTUDIO-574) - Add 'Cancel' button to "Select copy strategy"  (was Abort of copy/paste not possible)

**New Feature**

* [DIRSTUDIO-62](https://issues.apache.org/jira/browse/DIRSTUDIO-62) - Add GSSAPI authentication - Cannot connect to Active Directory if not using Simple authentication
* [DIRSTUDIO-434](https://issues.apache.org/jira/browse/DIRSTUDIO-434) - Add value editor for Active Directory objectGUID and objectSid attributes
* [DIRSTUDIO-462](https://issues.apache.org/jira/browse/DIRSTUDIO-462) - Add Export to Open Document Format
* [DIRSTUDIO-494](https://issues.apache.org/jira/browse/DIRSTUDIO-494) - Add value editor for certificates (syntax 1.3.6.1.4.1.1466.115.121.1.8)
* [DIRSTUDIO-510](https://issues.apache.org/jira/browse/DIRSTUDIO-510) - Add functionality to copy/merge schema elements between schema projects
* [DIRSTUDIO-515](https://issues.apache.org/jira/browse/DIRSTUDIO-515) - Add extensibility to Entry Editor
* [DIRSTUDIO-536](https://issues.apache.org/jira/browse/DIRSTUDIO-536) - Add support for version 1.5.5 of the Apache DS server.xml configuration file
* [DIRSTUDIO-556](https://issues.apache.org/jira/browse/DIRSTUDIO-556) - Add value editor for UUID
* [DIRSTUDIO-562](https://issues.apache.org/jira/browse/DIRSTUDIO-562) - Add 'Copy Display Value' action, default copy action should copy displayed value

**Task**

* [DIRSTUDIO-479](https://issues.apache.org/jira/browse/DIRSTUDIO-479) - Object classes of an entry should always be present
* [DIRSTUDIO-523](https://issues.apache.org/jira/browse/DIRSTUDIO-523) - Update Eclipse dependencies to version 3.5 Galileo
* [DIRSTUDIO-525](https://issues.apache.org/jira/browse/DIRSTUDIO-525) - Remove support for the Linux PPC distribution
* [DIRSTUDIO-573](https://issues.apache.org/jira/browse/DIRSTUDIO-573) - Update bundled Apache DS Schema files to version 1.5.5

**Sub-task**

* [DIRSTUDIO-516](https://issues.apache.org/jira/browse/DIRSTUDIO-516) - Create a new Entry Editor extension point
* [DIRSTUDIO-517](https://issues.apache.org/jira/browse/DIRSTUDIO-517) - Create a new single-window Entry Editor
* [DIRSTUDIO-518](https://issues.apache.org/jira/browse/DIRSTUDIO-518) - Create a new multi-window Entry Editor
* [DIRSTUDIO-519](https://issues.apache.org/jira/browse/DIRSTUDIO-519) - Create a new LDIF Entry Editor

**Wish**

* [DIRSTUDIO-167](https://issues.apache.org/jira/browse/DIRSTUDIO-167) - Show custom icons for various kinds of schema elements while browsing schema data

***

## Apache Directory Studio 1.4.0 (April 10th 2009)

**Bug**

* [DIRSTUDIO-373](https://issues.apache.org/jira/browse/DIRSTUDIO-373) - Can't delete a tagged attribute if the non tagged attribute belong to the DN
* [DIRSTUDIO-395](https://issues.apache.org/jira/browse/DIRSTUDIO-395) - Problems with special chars (german Umlauts)
* [DIRSTUDIO-396](https://issues.apache.org/jira/browse/DIRSTUDIO-396) - Custom LDAP attributes not shown in entry editor
* [DIRSTUDIO-419](https://issues.apache.org/jira/browse/DIRSTUDIO-419) - Problems switching between connections
* [DIRSTUDIO-420](https://issues.apache.org/jira/browse/DIRSTUDIO-420) - Unable to locate in DIT (f3)
* [DIRSTUDIO-423](https://issues.apache.org/jira/browse/DIRSTUDIO-423) - Outline view does not respect the settings of the Entry Editor on displaying or not the operational attributes
* [DIRSTUDIO-427](https://issues.apache.org/jira/browse/DIRSTUDIO-427) - Operational attributes turned on by itself
* [DIRSTUDIO-430](https://issues.apache.org/jira/browse/DIRSTUDIO-430) - NullPointer exception when fetching children of a node
* [DIRSTUDIO-436](https://issues.apache.org/jira/browse/DIRSTUDIO-436) - Eclipse Hangs on Startup
* [DIRSTUDIO-440](https://issues.apache.org/jira/browse/DIRSTUDIO-440) - Multiple user permissions precedence issue
* [DIRSTUDIO-442](https://issues.apache.org/jira/browse/DIRSTUDIO-442) - Typo in a warning of the New ObjectClass wizard ('attribute type' instead of 'object class')
* [DIRSTUDIO-456](https://issues.apache.org/jira/browse/DIRSTUDIO-456) - Cannot create an entry with mandatory binary attribute
* [DIRSTUDIO-457](https://issues.apache.org/jira/browse/DIRSTUDIO-457) - Unknown schema causes attributes to be treated as operational
* [DIRSTUDIO-460](https://issues.apache.org/jira/browse/DIRSTUDIO-460) - Pressing 'Enter' in New Entry wizard should edit the attribute
* [DIRSTUDIO-463](https://issues.apache.org/jira/browse/DIRSTUDIO-463) - Browsing the directory produce too many search requests
* [DIRSTUDIO-465](https://issues.apache.org/jira/browse/DIRSTUDIO-465) - Context entry created from an LDIF import is not shown in the Browser view
* [DIRSTUDIO-466](https://issues.apache.org/jira/browse/DIRSTUDIO-466) - Incorrect error message when importing a bad XML schema file
* [DIRSTUDIO-468](https://issues.apache.org/jira/browse/DIRSTUDIO-468) - The LDIF parser does not correctly parse changes
* [DIRSTUDIO-469](https://issues.apache.org/jira/browse/DIRSTUDIO-469) - Added wrong AttributeTypes can't be deleted
* [DIRSTUDIO-470](https://issues.apache.org/jira/browse/DIRSTUDIO-470) - Schema Browser view is not bring to front when using the 'Open Schema Browser' menu item while the view is already opened but not the frontmost view
* [DIRSTUDIO-472](https://issues.apache.org/jira/browse/DIRSTUDIO-472) - SWTException (Widget is disposed) when disabling DIT Quick Search
  
**Improvement**

* [DIRSTUDIO-115](https://issues.apache.org/jira/browse/DIRSTUDIO-115) - Unable to edit operational attribute values
* [DIRSTUDIO-150](https://issues.apache.org/jira/browse/DIRSTUDIO-150) - Improve error handling
* [DIRSTUDIO-207](https://issues.apache.org/jira/browse/DIRSTUDIO-207) - Operationnal attributes cannot be shown entirely
* [DIRSTUDIO-234](https://issues.apache.org/jira/browse/DIRSTUDIO-234) - Greyed out menu items should have a tool tip explaining *why* they're greyed out
* [DIRSTUDIO-241](https://issues.apache.org/jira/browse/DIRSTUDIO-241) - The "New Value" action (in the Entry Editor) should be disabled if the AT is defined as single valued
* [DIRSTUDIO-411](https://issues.apache.org/jira/browse/DIRSTUDIO-411) - Select a new created folder in the connection view
* [DIRSTUDIO-412](https://issues.apache.org/jira/browse/DIRSTUDIO-412) - Add expand all and collapse all actions to the connections view
* [DIRSTUDIO-426](https://issues.apache.org/jira/browse/DIRSTUDIO-426) - Overwritten hashCode() method should not use super.hashCode()
* [DIRSTUDIO-455](https://issues.apache.org/jira/browse/DIRSTUDIO-455) - Cannot copy/past an existing search
* [DIRSTUDIO-477](https://issues.apache.org/jira/browse/DIRSTUDIO-477) - Update Eclipse dependencies to version 3.4.2
* [DIRSTUDIO-478](https://issues.apache.org/jira/browse/DIRSTUDIO-478) - The 'Exit' menu item from the 'File' menu should be removed when running on Mac OS X
  
**New Feature**

* [DIRSTUDIO-335](https://issues.apache.org/jira/browse/DIRSTUDIO-335) - DIT Quick Search
* [DIRSTUDIO-397](https://issues.apache.org/jira/browse/DIRSTUDIO-397) - Request for multi-language GUI
* [DIRSTUDIO-474](https://issues.apache.org/jira/browse/DIRSTUDIO-474) - Add a new GeneralizedTime Value Editor
* [DIRSTUDIO-474](https://issues.apache.org/jira/browse/DIRSTUDIO-474) - Support for parentOfEntry userClass in ACI Editor
  
**Task**

* [DIRSTUDIO-451](https://issues.apache.org/jira/browse/DIRSTUDIO-451) - (I18n) Templates not I18ned in LdifEditor
* [DIRSTUDIO-458](https://issues.apache.org/jira/browse/DIRSTUDIO-458) - (I18n) Bundle Eclipse language packs
* [DIRSTUDIO-480](https://issues.apache.org/jira/browse/DIRSTUDIO-480) - Update copyright year in the splash screen to 2009
  
**Wish**

* [DIRSTUDIO-439](https://issues.apache.org/jira/browse/DIRSTUDIO-439) - Ldif importer should be case-insensitive in the changeType attribute

***

## Apache Directory Studio 1.3.0 (November 24th 2008)

**Sub-task**

* [DIRSTUDIO-398](https://issues.apache.org/jira/browse/DIRSTUDIO-398) - Improve the DSML decorated classes by adding an empty constructor and linking the methods of the underlying ldapmessage

**Bug**

* [DIRSTUDIO-260](https://issues.apache.org/jira/browse/DIRSTUDIO-260) - Unable to do a DSML Export from eDirectory
* [DIRSTUDIO-291](https://issues.apache.org/jira/browse/DIRSTUDIO-291) - Adding of an objectclass requiring attributes not present to an entry in the ldap browser, modify operation fails
* [DIRSTUDIO-293](https://issues.apache.org/jira/browse/DIRSTUDIO-293) - Values of attributes of the syntax 'Generalized Time' must have the g-time-zone 'Z' and minutes and seconds set to be interpreted and shown as a date instead of the raw value
* [DIRSTUDIO-354](https://issues.apache.org/jira/browse/DIRSTUDIO-354) - Search window, paste problem
* [DIRSTUDIO-355](https://issues.apache.org/jira/browse/DIRSTUDIO-355) - DSML Import and Export fail with "Internal Error: null"
* [DIRSTUDIO-367](https://issues.apache.org/jira/browse/DIRSTUDIO-367) - Tree delete control should not be used automatically
* [DIRSTUDIO-372](https://issues.apache.org/jira/browse/DIRSTUDIO-372) - NPE when using the LdifEntryEditorDialog w/o selecting a connection
* [DIRSTUDIO-379](https://issues.apache.org/jira/browse/DIRSTUDIO-379) - Class NewEntryWizard not found, application doesn't starts
* [DIRSTUDIO-380](https://issues.apache.org/jira/browse/DIRSTUDIO-380) - Attribute and Entry property pages makes the dialog very tall
* [DIRSTUDIO-382](https://issues.apache.org/jira/browse/DIRSTUDIO-382) - Unable to launch Apache Directory Server with Turkish Regional Settings
* [DIRSTUDIO-386](https://issues.apache.org/jira/browse/DIRSTUDIO-386) - Can't change 5-digit port number by typing
* [DIRSTUDIO-389](https://issues.apache.org/jira/browse/DIRSTUDIO-389) - Back/Forward Navigation isn't working
* [DIRSTUDIO-394](https://issues.apache.org/jira/browse/DIRSTUDIO-394) - SASL Realms are not correctly saved in the 1.5.2 and 1.5.3 Apache DS Configuration Editor

**Improvement**

* [DIRSTUDIO-114](https://issues.apache.org/jira/browse/DIRSTUDIO-114) - Group container entries first in browser view
* [DIRSTUDIO-116](https://issues.apache.org/jira/browse/DIRSTUDIO-116) - Expand all folds by default
* [DIRSTUDIO-147](https://issues.apache.org/jira/browse/DIRSTUDIO-147) - Allow LDIF imports to overwrite existing entries
* [DIRSTUDIO-182](https://issues.apache.org/jira/browse/DIRSTUDIO-182) - Use property file to designate ldap context factory etc. instead of hard code
* [DIRSTUDIO-228](https://issues.apache.org/jira/browse/DIRSTUDIO-228) - Mask userPassword in the log view
* [DIRSTUDIO-244](https://issues.apache.org/jira/browse/DIRSTUDIO-244) - Add selection for copy strategy if an entry to copy already exists
* [DIRSTUDIO-255](https://issues.apache.org/jira/browse/DIRSTUDIO-255) - Run in background should be configurable so one could set it to true by default
* [DIRSTUDIO-272](https://issues.apache.org/jira/browse/DIRSTUDIO-272) - Use the rat maven plugin with the -Prelease profile option to generate releases
* [DIRSTUDIO-292](https://issues.apache.org/jira/browse/DIRSTUDIO-292) - Using the 'new entry'/'use existing entry as template' feature from the context menu of an entry, the parent dn is also copied from the template entry
* [DIRSTUDIO-311](https://issues.apache.org/jira/browse/DIRSTUDIO-311) - Provide Goto DN dialog
* [DIRSTUDIO-327](https://issues.apache.org/jira/browse/DIRSTUDIO-327) - Add support for Paged Results Control
* [DIRSTUDIO-358](https://issues.apache.org/jira/browse/DIRSTUDIO-358) - Connections View can have an extension point for initial values
* [DIRSTUDIO-363](https://issues.apache.org/jira/browse/DIRSTUDIO-363) - Browser View doesn't accept menu additions thru viewerContribution extension point
* [DIRSTUDIO-377](https://issues.apache.org/jira/browse/DIRSTUDIO-377) - Add value editor for OIDs
* [DIRSTUDIO-378](https://issues.apache.org/jira/browse/DIRSTUDIO-378) - An attribute name containing an underscore ("_") is split in two when used in "Returning Attributes" field of the "Search" dialog
* [DIRSTUDIO-383](https://issues.apache.org/jira/browse/DIRSTUDIO-383) - Make "Fetch subentries" setting configurable per connection, move from browser preferences to connection properties
* [DIRSTUDIO-384](https://issues.apache.org/jira/browse/DIRSTUDIO-384) - Improve New Attribute Type, New Object Class and New Schema Wizards when no schema project is opened
* [DIRSTUDIO-391](https://issues.apache.org/jira/browse/DIRSTUDIO-391) - Show default values directly
* [DIRSTUDIO-393](https://issues.apache.org/jira/browse/DIRSTUDIO-393) - Add support for ApacheDS 1.5.4 server.xml file in the ApacheDS Configuration Editor
* [DIRSTUDIO-405](https://issues.apache.org/jira/browse/DIRSTUDIO-405) - Update the Apache DS plugin to use Apache DS 1.5.4 dependencies
* [DIRSTUDIO-406](https://issues.apache.org/jira/browse/DIRSTUDIO-406) - The New Server Wizard should be listed in the NewWizards section
* [DIRSTUDIO-407](https://issues.apache.org/jira/browse/DIRSTUDIO-407) - Stack the Servers view aside the Connections view as a perpective extension of the LDAP Browser Perpective
* [DIRSTUDIO-408](https://issues.apache.org/jira/browse/DIRSTUDIO-408) - In the NewEntryWizard, the first selected object class on the left side should be added if the Enter key is hit in the text field

**New Feature**

* [DIRSTUDIO-85](https://issues.apache.org/jira/browse/DIRSTUDIO-85) - Add support for search dialog to include * and + for returnable attributes
* [DIRSTUDIO-107](https://issues.apache.org/jira/browse/DIRSTUDIO-107) - Enable Select/Copy in Property page of RootDSE in order to copy and paste detected OIDs
* [DIRSTUDIO-153](https://issues.apache.org/jira/browse/DIRSTUDIO-153) - Allow offline modifications of entries
* [DIRSTUDIO-297](https://issues.apache.org/jira/browse/DIRSTUDIO-297) - Add a 'save as' for logs
* [DIRSTUDIO-356](https://issues.apache.org/jira/browse/DIRSTUDIO-356) - Add a way to get the connection config as an URL
* [DIRSTUDIO-385](https://issues.apache.org/jira/browse/DIRSTUDIO-385) - Add dialog to create a new context entry

**Task**

* [DIRSTUDIO-19](https://issues.apache.org/jira/browse/DIRSTUDIO-19) - Add Javadoc to LDAP Browser classes
* [DIRSTUDIO-374](https://issues.apache.org/jira/browse/DIRSTUDIO-374) - Clean duplicated dependencies in plugins
* [DIRSTUDIO-375](https://issues.apache.org/jira/browse/DIRSTUDIO-375) - Move each plugin IDs in a plugin.properties file
* [DIRSTUDIO-376](https://issues.apache.org/jira/browse/DIRSTUDIO-376) - Move to the latest Eclipse 3.4 dependencies

***

## Apache Directory Studio 1.2.0 (August 19th 2008)

**Bug**

* [DIRSTUDIO-89](https://issues.apache.org/jira/browse/DIRSTUDIO-89) - Entry painted even though not created in server
* [DIRSTUDIO-121](https://issues.apache.org/jira/browse/DIRSTUDIO-121) - Some property pages make the dialog very tall
* [DIRSTUDIO-157](https://issues.apache.org/jira/browse/DIRSTUDIO-157) - Studio looses STRG-V over some time of use
* [DIRSTUDIO-209](https://issues.apache.org/jira/browse/DIRSTUDIO-209) - Cannot expand attribute list
* [DIRSTUDIO-266](https://issues.apache.org/jira/browse/DIRSTUDIO-266) - OpenLDAP schema files parser fails when DESC contains an empty string ''
* [DIRSTUDIO-273](https://issues.apache.org/jira/browse/DIRSTUDIO-273) - Unable to get Base DNs on OID (Oracle Internet Directory)
* [DIRSTUDIO-298](https://issues.apache.org/jira/browse/DIRSTUDIO-298) - NullPointerException raised when drag'n'dropping a connection to a folder (on Mac OS X only)
* [DIRSTUDIO-315](https://issues.apache.org/jira/browse/DIRSTUDIO-315) - Choosing new value, in entry editor shows new entry when server error occures
* [DIRSTUDIO-318](https://issues.apache.org/jira/browse/DIRSTUDIO-318) - Rename of multi-values RDN does not work when changing the second RDN
* [DIRSTUDIO-319](https://issues.apache.org/jira/browse/DIRSTUDIO-319) - LDAP Browser creating new entry becomes empty and unusable in Windows Vista after certain actions
* [DIRSTUDIO-323](https://issues.apache.org/jira/browse/DIRSTUDIO-323) - Studio fails to read ApacheDS server.xml
* [DIRSTUDIO-325](https://issues.apache.org/jira/browse/DIRSTUDIO-325) - Keybinding conflicts occurred. They may interfere with normal accelerator operation.
* [DIRSTUDIO-326](https://issues.apache.org/jira/browse/DIRSTUDIO-326) - Non-Operational attributes are marked as operational when bind to Siemens DirX 7.0
* [DIRSTUDIO-330](https://issues.apache.org/jira/browse/DIRSTUDIO-330) - CoreException raised in editor when opening a *.txt file
* [DIRSTUDIO-336](https://issues.apache.org/jira/browse/DIRSTUDIO-336) - Errors when parsing schema of some LDAP servers
* [DIRSTUDIO-341](https://issues.apache.org/jira/browse/DIRSTUDIO-341) - Paste error
* [DIRSTUDIO-342](https://issues.apache.org/jira/browse/DIRSTUDIO-342) - Relax the parser for the *.schema files
* [DIRSTUDIO-343](https://issues.apache.org/jira/browse/DIRSTUDIO-343) - Referrals not handled.
* [DIRSTUDIO-347](https://issues.apache.org/jira/browse/DIRSTUDIO-347) - Keybinding conflict for CTRL+Q
* [DIRSTUDIO-349](https://issues.apache.org/jira/browse/DIRSTUDIO-349) - Unable to enter large values for uid
* [DIRSTUDIO-350](https://issues.apache.org/jira/browse/DIRSTUDIO-350) - DS is not properly displaying case of group DN
* [DIRSTUDIO-360](https://issues.apache.org/jira/browse/DIRSTUDIO-360) - cannot read attribute from items with a / in the dn
* [DIRSTUDIO-364](https://issues.apache.org/jira/browse/DIRSTUDIO-364) - Installing in Eclipse fails
* [DIRSTUDIO-365](https://issues.apache.org/jira/browse/DIRSTUDIO-365) - Can't delete entry with studio 1.1.0. works with 1.0.1

**Improvement**

* [DIRSTUDIO-46](https://issues.apache.org/jira/browse/DIRSTUDIO-46) - Add connections import/export
* [DIRSTUDIO-126](https://issues.apache.org/jira/browse/DIRSTUDIO-126) - Triple click to edit attribute
* [DIRSTUDIO-295](https://issues.apache.org/jira/browse/DIRSTUDIO-295) - Add a console for errors
* [DIRSTUDIO-329](https://issues.apache.org/jira/browse/DIRSTUDIO-329) - Replace internal URL class by shared-ldap LdapURL class
* [DIRSTUDIO-337](https://issues.apache.org/jira/browse/DIRSTUDIO-337) - Add Save and Print actions in the toolbar of the RCP application
* [DIRSTUDIO-361](https://issues.apache.org/jira/browse/DIRSTUDIO-361) - Auto-activate 'show operational attributes' when adding an operational attribute

**New Feature**

* [DIRSTUDIO-321](https://issues.apache.org/jira/browse/DIRSTUDIO-321) - Need to be able to set SOCKS proxy in the RCP version
* [DIRSTUDIO-328](https://issues.apache.org/jira/browse/DIRSTUDIO-328) - Search Logs View

**Task**

* [DIRSTUDIO-128](https://issues.apache.org/jira/browse/DIRSTUDIO-128) - Replace internal schema parser with the schema parser in shared-ldap.
* [DIRSTUDIO-317](https://issues.apache.org/jira/browse/DIRSTUDIO-317) - Update legal files after moving to Apache Directory Shared LDAP version 0.9.9
* [DIRSTUDIO-332](https://issues.apache.org/jira/browse/DIRSTUDIO-332) - Add support for 1.5.3, 1.5.2 and 1.5.0 server.xml configuration files
* [DIRSTUDIO-338](https://issues.apache.org/jira/browse/DIRSTUDIO-338) - Update Eclipse dependencies to the latest Eclipse version (3.3.2)
* [DIRSTUDIO-339](https://issues.apache.org/jira/browse/DIRSTUDIO-339) - Add the 'org.eclipse.ui.carbon' Eclipse plugin to the Mac OS X distribution

***

## Apache Directory Studio 1.1.0 (April 8th 2008)

See changelog of Apache Directory Studio 1.1.0 RC and Apache Directory Studio 1.1.0 RC2

***

## Apache Directory Studio 1.1.0 RC2 (March 4th 2008)

**Bug**

* [DIRSTUDIO-286](https://issues.apache.org/jira/browse/DIRSTUDIO-286) - Update Site is not working, missing dependencies in ldifeditor, ldapbrower and schemaeditor feature
* [DIRSTUDIO-285](https://issues.apache.org/jira/browse/DIRSTUDIO-285) - Export into LDIF format could be corrupted
* [DIRSTUDIO-284](https://issues.apache.org/jira/browse/DIRSTUDIO-284) - Changing "Supported Authentication Mechanism" doesn't set the dirty flag.
* [DIRSTUDIO-281](https://issues.apache.org/jira/browse/DIRSTUDIO-281) - LDIF and Apache DS configuration files can't be saved in RCP mode
* [DIRSTUDIO-279](https://issues.apache.org/jira/browse/DIRSTUDIO-279) - Filter Editor doesn't remove spaces and line breaks after OK
* [DIRSTUDIO-270](https://issues.apache.org/jira/browse/DIRSTUDIO-270) - Copy and paste does not work when value being edited

**Task**

* [DIRSTUDIO-280](https://issues.apache.org/jira/browse/DIRSTUDIO-280) - Remove remaining unwanted contributions from Eclipse

***

## Apache Directory Studio 1.1.0 RC (February 20th 2008)

**Sub-task**

* [DIRSTUDIO-142](https://issues.apache.org/jira/browse/DIRSTUDIO-142) - Add SASL authentication

**Bug**

* [DIRSTUDIO-48](https://issues.apache.org/jira/browse/DIRSTUDIO-48) - Errors when help is open
* [DIRSTUDIO-95](https://issues.apache.org/jira/browse/DIRSTUDIO-95) - Not returning large queries
* [DIRSTUDIO-120](https://issues.apache.org/jira/browse/DIRSTUDIO-120) - 100% CPU when deleting thousands of entries
* [DIRSTUDIO-139](https://issues.apache.org/jira/browse/DIRSTUDIO-139) - Operational attributes not shown in the Entry Editor
* [DIRSTUDIO-152](https://issues.apache.org/jira/browse/DIRSTUDIO-152) - New entry creator does not know that 'dc' and 'domainComponent' is the same thing
* [DIRSTUDIO-154](https://issues.apache.org/jira/browse/DIRSTUDIO-154) - Studio getting slower and slower on bulk operations
* [DIRSTUDIO-161](https://issues.apache.org/jira/browse/DIRSTUDIO-161) - Unable to enter Base DN ending in 'dc='
* [DIRSTUDIO-166](https://issues.apache.org/jira/browse/DIRSTUDIO-166) - LDif Import changetype: modify add attribute attrId is not case insensitive
* [DIRSTUDIO-184](https://issues.apache.org/jira/browse/DIRSTUDIO-184) - Error while reading entry in Active Directory
* [DIRSTUDIO-191](https://issues.apache.org/jira/browse/DIRSTUDIO-191) - Connection Name mess up if it contains non-ascii chars
* [DIRSTUDIO-196](https://issues.apache.org/jira/browse/DIRSTUDIO-196) - Error dialog displayed after Problems View is closed
* [DIRSTUDIO-197](https://issues.apache.org/jira/browse/DIRSTUDIO-197) - Following referrals throws NPE
* [DIRSTUDIO-198](https://issues.apache.org/jira/browse/DIRSTUDIO-198) - Search string is not working properly with metacharacters (*, +...)
* [DIRSTUDIO-201](https://issues.apache.org/jira/browse/DIRSTUDIO-201) - Project Name mess up if it contains non-ascii chars
* [DIRSTUDIO-203](https://issues.apache.org/jira/browse/DIRSTUDIO-203) - Help contexts of LDAP Browser does not display in the Dynamic Help window
* [DIRSTUDIO-204](https://issues.apache.org/jira/browse/DIRSTUDIO-204) - Warning displayed when showing the properties of a connection
* [DIRSTUDIO-205](https://issues.apache.org/jira/browse/DIRSTUDIO-205) - Windows installer's publisher is set to "Unknown Publisher"
* [DIRSTUDIO-206](https://issues.apache.org/jira/browse/DIRSTUDIO-206) - Browse does not work in subtree editor base selection
* [DIRSTUDIO-210](https://issues.apache.org/jira/browse/DIRSTUDIO-210) - Filter parser accepts bad filters
* [DIRSTUDIO-211](https://issues.apache.org/jira/browse/DIRSTUDIO-211) - Connections window doesn't display swedish characters properly
* [DIRSTUDIO-213](https://issues.apache.org/jira/browse/DIRSTUDIO-213) - NullPointerException raised when selecting an OC with no alias as a superior in the NewObjectClassWizard
* [DIRSTUDIO-214](https://issues.apache.org/jira/browse/DIRSTUDIO-214) - IllegalArgumentException raised when selecting an AT with no alias as superior in the NewAttributeTypeWizard
* [DIRSTUDIO-217](https://issues.apache.org/jira/browse/DIRSTUDIO-217) - Eclipse 3.3 New Connections shows "Browser Options" without possibility to add new address
* [DIRSTUDIO-220](https://issues.apache.org/jira/browse/DIRSTUDIO-220) - lowercase {crypt} in userPassword is an "Unsupported Hash Method"
* [DIRSTUDIO-222](https://issues.apache.org/jira/browse/DIRSTUDIO-222) - Pb when creating an entry with an invalid atribute as a RDN
* [DIRSTUDIO-223](https://issues.apache.org/jira/browse/DIRSTUDIO-223) - NullPointerException raised when adding values in the New Entry Wizard
* [DIRSTUDIO-224](https://issues.apache.org/jira/browse/DIRSTUDIO-224) - Can't Open Schema View with JDK 6.0
* [DIRSTUDIO-226](https://issues.apache.org/jira/browse/DIRSTUDIO-226) - Attribute Type Description is not imported when reading an OpenLDAP schema file
* [DIRSTUDIO-230](https://issues.apache.org/jira/browse/DIRSTUDIO-230) - Locate Dn in DIT Action does not work well
* [DIRSTUDIO-233](https://issues.apache.org/jira/browse/DIRSTUDIO-233) - Browsing base DN returns [LDAP: error code 10 - Referral)
* [DIRSTUDIO-235](https://issues.apache.org/jira/browse/DIRSTUDIO-235) - Non ASCII characters are not rendered properly in the LDAP Browser View when label is limited to a certain number of characters
* [DIRSTUDIO-239](https://issues.apache.org/jira/browse/DIRSTUDIO-239) - No error message when importing a bad schema
* [DIRSTUDIO-242](https://issues.apache.org/jira/browse/DIRSTUDIO-242) - Inconsistent state of the Entry Editor after using "New Value" (or "New Attribute...") and pressing "Escape".
* [DIRSTUDIO-243](https://issues.apache.org/jira/browse/DIRSTUDIO-243) - Modified value of Equality Matching Rule in the AttributeTypeEditor is not saved
* [DIRSTUDIO-245](https://issues.apache.org/jira/browse/DIRSTUDIO-245) - Apache DS Configuration Plugin cannot parse server.xml file correctly
* [DIRSTUDIO-247](https://issues.apache.org/jira/browse/DIRSTUDIO-247) - Don't use implicit ManageDsaIT control magic of JNDI
* [DIRSTUDIO-249](https://issues.apache.org/jira/browse/DIRSTUDIO-249) - Modification Logs view does not display request controls, if sent to the server
* [DIRSTUDIO-250](https://issues.apache.org/jira/browse/DIRSTUDIO-250) - Unable to load entries if RDN is quoted and contains unescaped comma
* [DIRSTUDIO-252](https://issues.apache.org/jira/browse/DIRSTUDIO-252) - Advanced value editors don't work in NewEntryWizard
* [DIRSTUDIO-253](https://issues.apache.org/jira/browse/DIRSTUDIO-253) - cant open server.xml with directory studio
* [DIRSTUDIO-258](https://issues.apache.org/jira/browse/DIRSTUDIO-258) - ArrayIndexOutOfBoundsException when changing Base DN
* [DIRSTUDIO-259](https://issues.apache.org/jira/browse/DIRSTUDIO-259) - NPE when trying to turn back on "save password" on connection properties
* [DIRSTUDIO-261](https://issues.apache.org/jira/browse/DIRSTUDIO-261) - LDAP Browser shows same root objects two times under Root DSE
* [DIRSTUDIO-264](https://issues.apache.org/jira/browse/DIRSTUDIO-264) - ldif parser doesn't accept attributes with empty values
* [DIRSTUDIO-267](https://issues.apache.org/jira/browse/DIRSTUDIO-267) - Clicking on a bookmark loops and does not display attributes
* [DIRSTUDIO-269](https://issues.apache.org/jira/browse/DIRSTUDIO-269) - Attributes not displayed when browsing BEA Weblogic embedded LDAP

**Improvement**

* [DIRSTUDIO-37](https://issues.apache.org/jira/browse/DIRSTUDIO-37) - Improve authentication methods and security mechanisms
* [DIRSTUDIO-119](https://issues.apache.org/jira/browse/DIRSTUDIO-119) - Allow user to disabled the Modification logs windows
* [DIRSTUDIO-123](https://issues.apache.org/jira/browse/DIRSTUDIO-123) - Refactor IConnection interface and Connection class
* [DIRSTUDIO-136](https://issues.apache.org/jira/browse/DIRSTUDIO-136) - Remove the "Apache DS" menu from the Java Perspective
* [DIRSTUDIO-138](https://issues.apache.org/jira/browse/DIRSTUDIO-138) - Add visual feedback to the user, if SSL (ldaps) is enabled
* [DIRSTUDIO-156](https://issues.apache.org/jira/browse/DIRSTUDIO-156) - useability improvement: when exporting an OU use the applied filter by default
* [DIRSTUDIO-187](https://issues.apache.org/jira/browse/DIRSTUDIO-187) - Add the ability to organize connections in folders
* [DIRSTUDIO-189](https://issues.apache.org/jira/browse/DIRSTUDIO-189) - Replace connection combo-box with BrowserConnectionWidget
* [DIRSTUDIO-195](https://issues.apache.org/jira/browse/DIRSTUDIO-195) - Add key bindings to the Schema Editor
* [DIRSTUDIO-199](https://issues.apache.org/jira/browse/DIRSTUDIO-199) - Add scopes for OC and AT in search
* [DIRSTUDIO-200](https://issues.apache.org/jira/browse/DIRSTUDIO-200) - Add an OC and AT hierarchical global view
* [DIRSTUDIO-202](https://issues.apache.org/jira/browse/DIRSTUDIO-202) - Add help contexts to the help plugin of the Schema Editor
* [DIRSTUDIO-216](https://issues.apache.org/jira/browse/DIRSTUDIO-216) - Improve Type Hierarchy View
* [DIRSTUDIO-221](https://issues.apache.org/jira/browse/DIRSTUDIO-221) - Improve Object Class selection in the New Entry Wizard
* [DIRSTUDIO-227](https://issues.apache.org/jira/browse/DIRSTUDIO-227) - Add the ability to select OpenLDAP schema files as core schemas when creating a project
* [DIRSTUDIO-237](https://issues.apache.org/jira/browse/DIRSTUDIO-237) - It would be good to be able to import 'core' schemas into an existing project
* [DIRSTUDIO-238](https://issues.apache.org/jira/browse/DIRSTUDIO-238) - Automatically add an alias when the 'ok' button is selected
* [DIRSTUDIO-240](https://issues.apache.org/jira/browse/DIRSTUDIO-240) - Memorize the last import's path
* [DIRSTUDIO-251](https://issues.apache.org/jira/browse/DIRSTUDIO-251) - Replace the Text Widget for the OID in the new AT and OC wizards by a Drop-Down Combo with history of the last used OIDs
* [DIRSTUDIO-254](https://issues.apache.org/jira/browse/DIRSTUDIO-254) - schema import does not provide error reporting when parsing schema file
* [DIRSTUDIO-257](https://issues.apache.org/jira/browse/DIRSTUDIO-257) - Use system small fonts on Mac OS X
* [DIRSTUDIO-275](https://issues.apache.org/jira/browse/DIRSTUDIO-275) - Import/Export wizards should display an error if no Schema Project is open

**New Feature**

* [DIRSTUDIO-192](https://issues.apache.org/jira/browse/DIRSTUDIO-192) - Add an extension point in the Schema Editor for SchemaConnectors
* [DIRSTUDIO-193](https://issues.apache.org/jira/browse/DIRSTUDIO-193) - Add the abitilty to import/export the Schema from/to a directory Server
* [DIRSTUDIO-194](https://issues.apache.org/jira/browse/DIRSTUDIO-194) - Add a SchemaConnector for Apache Directory Server
* [DIRSTUDIO-246](https://issues.apache.org/jira/browse/DIRSTUDIO-246) - Add support for simulated renaming of non-leaf entries
* [DIRSTUDIO-248](https://issues.apache.org/jira/browse/DIRSTUDIO-248) - Add support for simulated moving of non-leaf entries

**Task**

* [DIRSTUDIO-218](https://issues.apache.org/jira/browse/DIRSTUDIO-218) - Some packages are not signed
* [DIRSTUDIO-225](https://issues.apache.org/jira/browse/DIRSTUDIO-225) - Update documentation for Schema Editor Plugin
* [DIRSTUDIO-229](https://issues.apache.org/jira/browse/DIRSTUDIO-229) - Replace internal DN/RDN/RDNPart with LdapDN/Rdn/ATAV of shared-ldap
* [DIRSTUDIO-236](https://issues.apache.org/jira/browse/DIRSTUDIO-236) - Update the Apache DS Configuration plugin to work with the server.xml file of Apache DS 1.5.1
* [DIRSTUDIO-265](https://issues.apache.org/jira/browse/DIRSTUDIO-265) - Migrate our build system from Ant+Ivy to Maven

***

## Apache Directory Studio 1.0.1 (September 18th 2007)

**Bug**

* [DIRSTUDIO-162](https://issues.apache.org/jira/browse/DIRSTUDIO-162) - Delete old RDN on rename has no effect
* [DIRSTUDIO-180](https://issues.apache.org/jira/browse/DIRSTUDIO-180) - Connection wizard and properties tabs are out of order
* [DIRSTUDIO-183](https://issues.apache.org/jira/browse/DIRSTUDIO-183) - It's not possible to select a Connection in a New Search
* [DIRSTUDIO-186](https://issues.apache.org/jira/browse/DIRSTUDIO-186) - When copying an entry it isn't displayed correctly in the browser tree
* [DIRSTUDIO-190](https://issues.apache.org/jira/browse/DIRSTUDIO-190) - SSL connections are no longer working

**Improvement**

* [DIRSTUDIO-185](https://issues.apache.org/jira/browse/DIRSTUDIO-185) - Provide completion for all attribute types in the attribute wizard

**Task**

* [DIRSTUDIO-181](https://issues.apache.org/jira/browse/DIRSTUDIO-181) - Update the documentation of the Schema Editor Plugin
* [DIRSTUDIO-188](https://issues.apache.org/jira/browse/DIRSTUDIO-188) - Move LDIF Editor help to its own help plugin

***

## Apache Directory Studio 1.0.0 (September 4th 2007)

**Sub-task**

* [DIRSTUDIO-131](https://issues.apache.org/jira/browse/DIRSTUDIO-131) - Rename package names and plugin IDs for ldap browser plugins and features
* [DIRSTUDIO-140](https://issues.apache.org/jira/browse/DIRSTUDIO-140) - Add Eclipse Intro mecanism to the Apache Directory Studio RCP plugin
* [DIRSTUDIO-141](https://issues.apache.org/jira/browse/DIRSTUDIO-141) - Add content to Apache Directory Studio Intro
* [DIRSTUDIO-177](https://issues.apache.org/jira/browse/DIRSTUDIO-177) - Update dependencies on Apache DS jars

**Bug**

* [DIRSTUDIO-73](https://issues.apache.org/jira/browse/DIRSTUDIO-73) - Password appears in clear
* [DIRSTUDIO-96](https://issues.apache.org/jira/browse/DIRSTUDIO-96) - installation into existing Eclipse ruins key bindings for JDT
* [DIRSTUDIO-101](https://issues.apache.org/jira/browse/DIRSTUDIO-101) - Configuration lost on brutal exit
* [DIRSTUDIO-110](https://issues.apache.org/jira/browse/DIRSTUDIO-110) - No DIT shown when opening a connection with the 'open' icon
* [DIRSTUDIO-117](https://issues.apache.org/jira/browse/DIRSTUDIO-117) - Double click attribute to rename entry displays two dialog boxes
* [DIRSTUDIO-127](https://issues.apache.org/jira/browse/DIRSTUDIO-127) - Missing ASL 2.0 headers in package-info.java files for ACIEditor
* [DIRSTUDIO-149](https://issues.apache.org/jira/browse/DIRSTUDIO-149) - Problems with the slash / in DN
* [DIRSTUDIO-168](https://issues.apache.org/jira/browse/DIRSTUDIO-168) - NPE when opening search dialog and connection is closed
* [DIRSTUDIO-172](https://issues.apache.org/jira/browse/DIRSTUDIO-172) - Syntax length definitions in schemas exported from LDAP Studio throws exception on Apache DS start-up.

**Improvement**

* [DIRSTUDIO-47](https://issues.apache.org/jira/browse/DIRSTUDIO-47) - Improve filter widget and filter editor dialog
* [DIRSTUDIO-67](https://issues.apache.org/jira/browse/DIRSTUDIO-67) - Clear "Modification Logs" functionality missing
* [DIRSTUDIO-75](https://issues.apache.org/jira/browse/DIRSTUDIO-75) - Improve LDAP Studio build system
* [DIRSTUDIO-93](https://issues.apache.org/jira/browse/DIRSTUDIO-93) - Add server detection for ApacheDS and TivoliDS on RootDSE property page
* [DIRSTUDIO-99](https://issues.apache.org/jira/browse/DIRSTUDIO-99) - Display both OID and text for controls etc. in the property page of the Root DSE
* [DIRSTUDIO-102](https://issues.apache.org/jira/browse/DIRSTUDIO-102) - Add descriptions for OIDs for LDAP controls and extended ops specific to IBM Tivoli Directory Server
* [DIRSTUDIO-103](https://issues.apache.org/jira/browse/DIRSTUDIO-103) - Include Apache brand in splash screen of RCP application
* [DIRSTUDIO-104](https://issues.apache.org/jira/browse/DIRSTUDIO-104) - Add "Apache" prefix to window title of RCP Application
* [DIRSTUDIO-105](https://issues.apache.org/jira/browse/DIRSTUDIO-105) - Add descriptions for OIDs for LDAP controls and extended ops specific to Netscape Directory Server
* [DIRSTUDIO-106](https://issues.apache.org/jira/browse/DIRSTUDIO-106) - Add descriptions for OIDs for LDAP controls and extended ops specific to MS Active Directory
* [DIRSTUDIO-108](https://issues.apache.org/jira/browse/DIRSTUDIO-108) - Superlasses
* [DIRSTUDIO-122](https://issues.apache.org/jira/browse/DIRSTUDIO-122) - Schema editor should allow a user to add an OID in the Syntax input box
* [DIRSTUDIO-125](https://issues.apache.org/jira/browse/DIRSTUDIO-125) - Bootstrap Ivy
* [DIRSTUDIO-151](https://issues.apache.org/jira/browse/DIRSTUDIO-151) - Simplify IValueEditor interface
* [DIRSTUDIO-158](https://issues.apache.org/jira/browse/DIRSTUDIO-158) - Create a separte connection plugin
* [DIRSTUDIO-165](https://issues.apache.org/jira/browse/DIRSTUDIO-165) - Add the version number of Apache Directory Studio in the "About window" of the RCP application
* [DIRSTUDIO-169](https://issues.apache.org/jira/browse/DIRSTUDIO-169) - Make connection parameters editable even if the connection is opened
* [DIRSTUDIO-174](https://issues.apache.org/jira/browse/DIRSTUDIO-174) - Use an unique ID as connection identifier instead of the connection name

**New Feature**

* [DIRSTUDIO-90](https://issues.apache.org/jira/browse/DIRSTUDIO-90) - Add a Welcome view that is displayed at first launch

**Task**

* [DIRSTUDIO-113](https://issues.apache.org/jira/browse/DIRSTUDIO-113) - Rename "LDAP Studio" to "Apache Directory Studio"
* [DIRSTUDIO-129](https://issues.apache.org/jira/browse/DIRSTUDIO-129) - Rename project names in trunk
* [DIRSTUDIO-130](https://issues.apache.org/jira/browse/DIRSTUDIO-130) - Rename package names and plugin IDs
* [DIRSTUDIO-159](https://issues.apache.org/jira/browse/DIRSTUDIO-159) - Create a separte feature project for the LDIF Editor
* [DIRSTUDIO-175](https://issues.apache.org/jira/browse/DIRSTUDIO-175) - Verify and add if needed the Notice.txt and Licence.txt files of all plugins
* [DIRSTUDIO-176](https://issues.apache.org/jira/browse/DIRSTUDIO-176) - Edit Release Notes.txt files for the 1.0 release
* [DIRSTUDIO-178](https://issues.apache.org/jira/browse/DIRSTUDIO-178) - Edit features and update site with the new update site URL

**Wish**

* [DIRSTUDIO-100](https://issues.apache.org/jira/browse/DIRSTUDIO-100) - Interface IRootDSE does not sufficiently define return values of methods

***

## Apache LDAP Studio 0.8.1 (July 24th 2007)

**Bug**

* [DIRSTUDIO-80](https://issues.apache.org/jira/browse/DIRSTUDIO-80) - LDAP Studio does not work on x86_64
* [DIRSTUDIO-144](https://issues.apache.org/jira/browse/DIRSTUDIO-144) - Unable to install plugins from updatesite on x86_64 architecture

***

## Apache LDAP Studio 0.8.0 (May 4th 2007)

**Bug**

* [DIRSTUDIO-71](https://issues.apache.org/jira/browse/DIRSTUDIO-71) - LDAP Studio installer creates bad shortcuts
* [DIRSTUDIO-74](https://issues.apache.org/jira/browse/DIRSTUDIO-74) - empty DN does not work
* [DIRSTUDIO-82](https://issues.apache.org/jira/browse/DIRSTUDIO-82) - Export to XLS or CSV
* [DIRSTUDIO-83](https://issues.apache.org/jira/browse/DIRSTUDIO-83) - Generated LDIF of a schema doesn't support the m-dependencies attribute
* [DIRSTUDIO-84](https://issues.apache.org/jira/browse/DIRSTUDIO-84) - Binding with a bad DN is accepted
* [DIRSTUDIO-86](https://issues.apache.org/jira/browse/DIRSTUDIO-86) - No way to specify search on rootDSE in search dialog
* [DIRSTUDIO-88](https://issues.apache.org/jira/browse/DIRSTUDIO-88) - Schema export to Apache DS has a spelling error which causes the import to fail.

**Improvement**

* [DIRSTUDIO-78](https://issues.apache.org/jira/browse/DIRSTUDIO-78) - Refactor browser-ui plugin

**New Feature**

* [DIRSTUDIO-12](https://issues.apache.org/jira/browse/DIRSTUDIO-12) - Editor for editing ACIs
* [DIRSTUDIO-76](https://issues.apache.org/jira/browse/DIRSTUDIO-76) - Value editor for administrativeRole
* [DIRSTUDIO-79](https://issues.apache.org/jira/browse/DIRSTUDIO-79) - Value editor for subtreeSpecification
* [DIRSTUDIO-91](https://issues.apache.org/jira/browse/DIRSTUDIO-91) - Add a new plugin for handling the Apache DS server configuration file

***

## Apache LDAP Studio 0.7.0 (April 6th 2007)

**Bug**

* [DIRSTUDIO-1](https://issues.apache.org/jira/browse/DIRSTUDIO-1) - DSML Parser does not throw an exception when it doesn't find a requestID attribute when processing=parallel and responseOrder=unordered
* [DIRSTUDIO-4](https://issues.apache.org/jira/browse/DIRSTUDIO-4) - Selection in Schema
* [DIRSTUDIO-31](https://issues.apache.org/jira/browse/DIRSTUDIO-31) - Source Code View of a schema is not refreshed when one of its objectclasses or attributetypes is updated.
* [DIRSTUDIO-57](https://issues.apache.org/jira/browse/DIRSTUDIO-57) - Search Result editor isn't initialized properly
* [DIRSTUDIO-63](https://issues.apache.org/jira/browse/DIRSTUDIO-63) - Should not package ui-forms in org.apache.directory.ldapstudio.schemas_0.6.0jar
* [DIRSTUDIO-64](https://issues.apache.org/jira/browse/DIRSTUDIO-64) - Unable to modify an Attribute Type's OID
* [DIRSTUDIO-69](https://issues.apache.org/jira/browse/DIRSTUDIO-69) - Problems with search base and DN serialization

**Improvement**

* [DIRSTUDIO-33](https://issues.apache.org/jira/browse/DIRSTUDIO-33) - Add syntax coloring to the Source Code view of AT, OC & Schema editors
* [DIRSTUDIO-35](https://issues.apache.org/jira/browse/DIRSTUDIO-35) - Disable action icons of the Schemas view when actions are not available
* [DIRSTUDIO-39](https://issues.apache.org/jira/browse/DIRSTUDIO-39) - Allow the user to switch between 'Standard schemas files' and 'Use specific schemas files' without having to relaunch the application.
* [DIRSTUDIO-40](https://issues.apache.org/jira/browse/DIRSTUDIO-40) - Source Code view of an AT or OC should reflect the changes made in the graphical editor
* [DIRSTUDIO-44](https://issues.apache.org/jira/browse/DIRSTUDIO-44) - Add small hover icon identifiers for OC and AC to differenciate them
* [DIRSTUDIO-49](https://issues.apache.org/jira/browse/DIRSTUDIO-49) - Improve history navigation
* [DIRSTUDIO-51](https://issues.apache.org/jira/browse/DIRSTUDIO-51) - Add a way to get the OC which use an AT
* [DIRSTUDIO-52](https://issues.apache.org/jira/browse/DIRSTUDIO-52) - may and must ATs are not sorted
* [DIRSTUDIO-53](https://issues.apache.org/jira/browse/DIRSTUDIO-53) - Bad search incon in the Schema perspective
* [DIRSTUDIO-55](https://issues.apache.org/jira/browse/DIRSTUDIO-55) - Adding 'instant search' into entry creation
* [DIRSTUDIO-56](https://issues.apache.org/jira/browse/DIRSTUDIO-56) - Automatic completion of inherited OC
* [DIRSTUDIO-58](https://issues.apache.org/jira/browse/DIRSTUDIO-58) - Improve the Hierarchy View
* [DIRSTUDIO-59](https://issues.apache.org/jira/browse/DIRSTUDIO-59) - Add a Schema Field in the AT/OC editors
* [DIRSTUDIO-61](https://issues.apache.org/jira/browse/DIRSTUDIO-61) - Pressing the down key in the search field of the Search View should pass the focus to the search results table
* [DIRSTUDIO-66](https://issues.apache.org/jira/browse/DIRSTUDIO-66) - Refresh of the LDAP Browser viewer after import

**New Feature**

* [DIRSTUDIO-7](https://issues.apache.org/jira/browse/DIRSTUDIO-7) - OID View
* [DIRSTUDIO-41](https://issues.apache.org/jira/browse/DIRSTUDIO-41) - Add an Overview page on the Schema Editor that displays all ATs and OCs of the schema 

***

## Apache LDAP Studio 0.6.0 (February 13th 2007)

Initial Release.
