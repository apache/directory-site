---
title: News
---

# News
<h2 class="news">ApacheDS 2.0.0.AM26 released <em>posted on March 7th, 2020</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0.AM26, the 26th milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Downloads are available [here](downloads.html)

This is a major release of ApacheDS. It brings many bug fixes, and is the first version implementing LDAP transactions,
which are now used internally for atomic operations, but can also be used through an extended operation, to apply many
operations in one transaction.
We also have changed the Cache system we were using (ehcache) to use the more efficient and lighter [Caffeine](https://github.com/ben-manes/caffeine/wiki).
Otherwise, we don't anymore store certificates in the server by default, but use an external keystore.

We can't anymore produce the Mac OSX installer package, we are working on finding a solution for that issue (Apple
deprecated the MakePackage tool and is now applying way more stringent checks and controls for packages, like
and Apple signature). This will most certainly be fixed in the next revision.

It uses the Apache LDAP API 2.0.0 release

Here is the release note for Apache Directory ApacheDS 2.0.0.AM26:

<b>Bugs :</b>

* [DIRSERVER-1414](https://issues.apache.org/jira/browse/DIRSERVER-1414) - Normalization is not handling correctly (but this has no impact)
* [DIRSERVER-1580](https://issues.apache.org/jira/browse/DIRSERVER-1580) - Numerous JUnit tests failing on Windows, again.
* [DIRSERVER-1878](https://issues.apache.org/jira/browse/DIRSERVER-1878) - Bad warning from 'maven-shade-plugin' when creating the 'apacheds-service' jar
* [DIRSERVER-1924](https://issues.apache.org/jira/browse/DIRSERVER-1924) - The MavibotPartition entry cache is not correctly set
* [DIRSERVER-1974](https://issues.apache.org/jira/browse/DIRSERVER-1974) - Rename Operation Issue - ApacheDS
* [DIRSERVER-2049](https://issues.apache.org/jira/browse/DIRSERVER-2049) - Queries interrupted with delete/add operations   
* [DIRSERVER-2066](https://issues.apache.org/jira/browse/DIRSERVER-2066) - Maven 3.3.x produces Invalid installers/archives
* [DIRSERVER-2070](https://issues.apache.org/jira/browse/DIRSERVER-2070) - Null pointer exception on kerberos password changing
* [DIRSERVER-2071](https://issues.apache.org/jira/browse/DIRSERVER-2071) - MinaKerberosDecoder fails with NullPointerException if the kerberos message is split in multiple packets
* [DIRSERVER-2074](https://issues.apache.org/jira/browse/DIRSERVER-2074) - small default TCP receive/send buffer size causing TCP packet fragmentation on some platforms
* [DIRSERVER-2089](https://issues.apache.org/jira/browse/DIRSERVER-2089) - AttributeType breaks the equals/hashCode override contract
* [DIRSERVER-2099](https://issues.apache.org/jira/browse/DIRSERVER-2099) - NOTICE and LICENSE files for DS 2.0.0-M20 are incorrect   
* [DIRSERVER-2146](https://issues.apache.org/jira/browse/DIRSERVER-2146) - Using special chars in uid makes problem
* [DIRSERVER-2197](https://issues.apache.org/jira/browse/DIRSERVER-2197) - Debian installer package contains the binary 4 times
* [DIRSERVER-2237](https://issues.apache.org/jira/browse/DIRSERVER-2237) - Application opens but can't 'Open Connection' - IllegalArgumentException
* [DIRSERVER-2247](https://issues.apache.org/jira/browse/DIRSERVER-2247) - Invalid signature file digest for Manifest main attributes - When switching from 2.0.0-M24 to 2.0.0-AM25
* [DIRSERVER-2253](https://issues.apache.org/jira/browse/DIRSERVER-2253) - NIS schema object class and attribute problem   
* [DIRSERVER-2264](https://issues.apache.org/jira/browse/DIRSERVER-2264) - missing schema type for NIS: nisMapName
* [DIRSERVER-2273](https://issues.apache.org/jira/browse/DIRSERVER-2273) - Le serveur ne démarre plus
* [DIRSERVER-2275](https://issues.apache.org/jira/browse/DIRSERVER-2275) - Les schemas LDIF générés à partir du schema browser font planter Directory au démarrage
* [DIRSERVER-2289](https://issues.apache.org/jira/browse/DIRSERVER-2289) - Paging support to retrieve all the entries available in ApacheDS between different client and LDAP server connections

<b>Improvements :</b>

* [DIRSERVER-959](https://issues.apache.org/jira/browse/DIRSERVER-959) - We nedd a global cache
* [DIRSERVER-1639](https://issues.apache.org/jira/browse/DIRSERVER-1639) - Add support for specifying cipher suites in LdapServer's configuration   
* [DIRSERVER-1892](https://issues.apache.org/jira/browse/DIRSERVER-1892) - We don't need to clone the full entry when returning it from the backen
* [DIRSERVER-1916](https://issues.apache.org/jira/browse/DIRSERVER-1916) - Don't drop 'top' from ObjectClass index, it's never present in the BTree
* [DIRSERVER-2044](https://issues.apache.org/jira/browse/DIRSERVER-2044) - The CacheService.initialize() method takes an unused InstanceID argument
* [DIRSERVER-2132](https://issues.apache.org/jira/browse/DIRSERVER-2132) - Add the structuralObjectClass attribute to every returned entry
* [DIRSERVER-2133](https://issues.apache.org/jira/browse/DIRSERVER-2133) - Add the hasSubordinates operational attribute to entries
* [DIRSERVER-2145](https://issues.apache.org/jira/browse/DIRSERVER-2145) - A BIND request will do 2 lookups of the entry trying to bind
* [DIRSERVER-2168](https://issues.apache.org/jira/browse/DIRSERVER-2168) - Possible performance improvement in the Add operation
* [DIRSERVER-2262](https://issues.apache.org/jira/browse/DIRSERVER-2262) - The LdapServer.loadkeyStore() method do the work twice if there is no KeyStore defined
* [DIRSERVER-2270](https://issues.apache.org/jira/browse/DIRSERVER-2270) - Inconsistent log level practices

<b>New features :</b>

* [DIRSERVER-279](https://issues.apache.org/jira/browse/DIRSERVER-279) - Transaction support
* [DIRSERVER-1422](https://issues.apache.org/jira/browse/DIRSERVER-1422) - Delegation of Authentication
* [DIRSERVER-1956](https://issues.apache.org/jira/browse/DIRSERVER-1956) - Add support for rfc4525 (increment)
* [DIRSERVER-2245](https://issues.apache.org/jira/browse/DIRSERVER-2245) - Implement the transaction support in ApachedS
* [DIRSERVER-2248](https://issues.apache.org/jira/browse/DIRSERVER-2248) - The server generates some errors when starting (Schema isues)


<b>Tasks :</b>

* [DIRSERVER-1245](https://issues.apache.org/jira/browse/DIRSERVER-1245) - Source audit
* [DIRSERVER-2063](https://issues.apache.org/jira/browse/DIRSERVER-2063) - Automat testing of installers
* [DIRSERVER-2097](https://issues.apache.org/jira/browse/DIRSERVER-2097) - Fix usage of default charset|locale|timezone and enable forbiddenapis check
* [DIRSERVER-2271](https://issues.apache.org/jira/browse/DIRSERVER-2271) - Replace Ehcache with Caffeine

<b>Tests :</b>

* [DIRSERVER-1847](https://issues.apache.org/jira/browse/DIRSERVER-1847) - Introduce time provider for time dependent tests

<h2 class="news">ApacheDS 2.0.0.AM25 released <em>posted on August 18th, 2018</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0.AM25, the 25th milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Downloads are available [here](downloads.html)

This is a major release of ApacheDS.

It uses the Apache LDAP API 2.0.0.AM1 release, which itself brings a lot of improvements and bug fixes.

But the major improvement is the cross-indexes transaction support that has been added, which is expecting to solve the database corruption issue we are facing for years.

Here is the release note for Apache Directory ApacheDS 2.0.0.AM25:

<b>Bugs :</b>

* [DIRSERVER-2109](https://issues.apache.org/jira/browse/DIRSERVER-2109) - Apply LDIF with special crafted DN creates two CN attributes
* [DIRSERVER-2220](https://issues.apache.org/jira/browse/DIRSERVER-2220) - ApacheDS should not log credentials
* [DIRSERVER-2231](https://issues.apache.org/jira/browse/DIRSERVER-2231) - NPE in AbstractBTreePartition when cacheService is not used
* [DIRSERVER-2234](https://issues.apache.org/jira/browse/DIRSERVER-2234) - Kinit via TCP causes ApacheDS to create a
NioProcessor thread at 100% CPU

<b>Improvements :</b>

* [DIRSERVER-2242](https://issues.apache.org/jira/browse/DIRSERVER-2242) - Keystore change from JKS to PKCS12
* [DIRSERVER-2225](https://issues.apache.org/jira/browse/DIRSERVER-2225) - Usage of maven-source-plugin goal jar-no-fork instead of jar
* [DIRSERVER-2230](https://issues.apache.org/jira/browse/DIRSERVER-2230) - SCM pointing to gitbox instead of svn
* [DIRSERVER-2229](https://issues.apache.org/jira/browse/DIRSERVER-2229) - Remove duplicated declaration of
versions-maven-plugin in pom.xml

<b>Tasks :</b>

* [DIRSERVER-2244](https://issues.apache.org/jira/browse/DIRSERVER-2244) - Support AES Encryption with HMAC-SHA2 for Kerberos
5 defined in RFC 8009


<h2 class="news">ApacheDS 2.0.0-M24 released <em>posted on June 7th, 2017</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M24, the 24th milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Downloads are available [here](downloads.html)

This is mainly a maintenance release, and it's needed to be able to release Studio with many fixes related to the server itself. The main fixes are related to SyntaxCheckers, which are now immutable, and the switch to LDAP 1.0.0 which fixes a critical SSL issue. Otherwise, the 'repair' command has been fixed, and a thread leak has been fixed.

In order to repair the database, one has just to start the server passing the 'repair' command to the apacheds script, instead of the 'start' command. The server will start after having repaired the database.

Here is the release note for Apache Directory ApacheDS 2.0.0-M24:

<b>Bugs :</b>

  * [DIRSERVER-2190](https://issues.apache.org/jira/browse/DIRSERVER-2190) - there is thread leak when did following operations: ADD,DELETE,MODIFY,MOVE,RENAME
  * [DIRSERVER-2173](https://issues.apache.org/jira/browse/DIRSERVER-2173) - Linux binary installation fails because RUN_AS_GROUP not used in chown commands
  * [DIRSERVER-2121](https://issues.apache.org/jira/browse/DIRSERVER-2121) - ApacheDS fails  to start after upgrading to 2.0.0-M21
  * [DIRSERVER-2072](https://issues.apache.org/jira/browse/DIRSERVER-2072) - Documentation For Kerberos Configuration Needs To Be Updated


<b>Improvements :</b>

  * [DIRSERVER-2186](https://issues.apache.org/jira/browse/DIRSERVER-2186) - Fix repair command 
  

<h2 class="news">ApacheDS 2.0.0-M23 released <em>posted on July 22th, 2016</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M23, the 23th milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Downloads are available [here](downloads.html)

This release is a bug fix release. It fixes the installers that were broken on Linux. It also fixes teh 'repair' command, that allows user who have a broken backend to fix it (We still have some use case where the database can get corrupted. We are working on fixing this, but it's far from being easy...)

In order to repair the database, one has just to start the server passing the 'repair' command to the apacheds script, instead of the 'start' comamnd. The server will start after having repaired the database.

Here is the release note for Apache Directory ApacheDS 2.0.0-M23:

<b>Bugs :</b>

  * [DIRSERVER-2158](https://issues.apache.org/jira/browse/DIRSERVER-2158) - unable to start ApacheDS M22 x64
  

<b>Improvements :</b>

  * [DIRKRB-595](https://issues.apache.org/jira/browse/DIRKRB-595) - Add mode to allow KerberosString's to contain UTF-8 for MSFT KDC interop
  

# News
<h2 class="news">ApacheDS 2.0.0-M22 released <em>posted on June 28th, 2016</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M22, the 22th milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Downloads are available [here](downloads.html)

This release is a bug fix release. We also added a 'repair' mode taht can be used to fix a database corruption : you just have to start the server with the 'repair' parameter.

This release also fixed the painful problem we have in Studio, when trying
to save the configuration.

Here is the release note for Apache Directory ApacheDS 2.0.0-M22:

<b>Bugs :</b>

  * [DIRSERVER-2120](https://issues.apache.org/jira/browse/DIRSERVER-2120) - apacheds init.d script always returning 0
  * [DIRSERVER-2125](https://issues.apache.org/jira/browse/DIRSERVER-2125) - More than one value has been provided for the single-valued attribute: pwdAccountLockedTime
  * [DIRSERVER-2139](https://issues.apache.org/jira/browse/DIRSERVER-2139) - IBM with IPV6
  * [DIRSERVER-2141](https://issues.apache.org/jira/browse/DIRSERVER-2141) - Some tests are declaring user index with reverse


<b>Improvements :</b>

  * [DIRSERVER-2124](https://issues.apache.org/jira/browse/DIRSERVER-2124) - Add support for modular crypt format password
  * [DIRSERVER-2128](https://issues.apache.org/jira/browse/DIRSERVER-2128) - Uplift dependency on commons-io from 2.4 to 2.5

  

<b>New features :</b>

  * [DIRSERVER-2113](https://issues.apache.org/jira/browse/DIRSERVER-2113) - Integrate the 'partition-plumber' into ApacheDS
  * [DIRSERVER-2129](https://issues.apache.org/jira/browse/DIRSERVER-2129>) - Add the number of descendant and the number of children to entries


<b>Task : </b>
  * [DIRSERVER-2123](https://issues.apache.org/jira/browse/DIRSERVER-2123) - Remove reference to commons.io and use the LDAP API Fileutils class instead


# News
<h2 class="news">ApacheDS 2.0.0-M21 released <em>posted on December 21th, 2015</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M21, the 21th milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Downloads are available [here](downloads.html)

This release is a bug fix release. We fixed some random failures on startup, and some fixes in the start scripts, beside many other smaller issues.

Here is the release note for Apache Directory ApacheDS 2.0.0-M21:

<b>Bugs :</b>

  * [DIRSERVER-2108](https://issues.apache.org/jira/browse/DIRSERVER-2108) - Update Apache Commons Collections to 3.2.2 due to vulnerability in 3.2.1
  * [DIRSERVER-2100](https://issues.apache.org/jira/browse/DIRSERVER-2100) - Zip file does not unpack cleanly on case-insensitive OSes
  * [DIRSERVER-2085](https://issues.apache.org/jira/browse/DIRSERVER-2085) - The PasswordPolicyConfiguration holds the password attribute as a String
  * [DIRSERVER-2082](https://issues.apache.org/jira/browse/DIRSERVER-2082) - User is allowed to perform all operations even when password must be reset
  * [DIRSERVER-2075](https://issues.apache.org/jira/browse/DIRSERVER-2075) - apacheds.sh creates a file called '0' during stop action


<b>Improvements :</b>

  * [DIRSERVER-1901](https://issues.apache.org/jira/browse/DIRSERVER-1901>) - subschemaSubentry attribute only available under root DSE
  * [DIRSERVER-2080](https://issues.apache.org/jira/browse/DIRSERVER-2080>) - Add a way to politely stop apacheds from apacheds.sh
  * [DIRSERVER-2084](https://issues.apache.org/jira/browse/DIRSERVER-2084>) - Admin user should be exempt from the pwdHistory check


<b>Tasks :</b>


  * [DIRSERVER-2096](https://issues.apache.org/jira/browse/DIRSERVER-2096>) - Fix violations of coding standards and enable checkstyle check


<h2 class="news">ApacheDS 2.0.0-M20 released <em>posted on May 2nd, 2015</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M20, the twentieth milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Downloads are available [here](downloads.html)

This release is a bug fix release. We fixed some random failures on startup, and some fixes in the start scripts, beside many other smaller issues.

Here is the release note for Apache Directory ApacheDS 2.0.0-M19:

<b>Bugs :</b>

  * [DIRSERVER-2025](https://issues.apache.org/jira/browse/DIRSERVER-2025) - ApacheDS fails to return sortedResults when searched against a certain number of entries
  * [DIRSERVER-2026](https://issues.apache.org/jira/browse/DIRSERVER-2026) - Version M19 does not allow eszet (ß) in any tested field of inetOrgPerson
  * [DIRSERVER-2034](https://issues.apache.org/jira/browse/DIRSERVER-2034) - ReplayCache entries can't be written to disk
  * [DIRSERVER-2035](https://issues.apache.org/jira/browse/DIRSERVER-2035) - Sporadic test failure due to fix for DIRSERVER-2034
  * [DIRSERVER-2047](https://issues.apache.org/jira/browse/DIRSERVER-2047) - Some data can be lost when using ldapadd command to insert data into apacheds
  * [DIRSERVER-2048](https://issues.apache.org/jira/browse/DIRSERVER-2048) - Searching for entries with numerous MV attributes can be long
  * [DIRSERVER-2055](https://issues.apache.org/jira/browse/DIRSERVER-2055) - Apacheds M19 not starting
  * [DIRSERVER-2057](https://issues.apache.org/jira/browse/DIRSERVER-2057) - Server returns search continuation only if 'ref' or '+' attributes are requested
  * [DIRSERVER-2060](https://issues.apache.org/jira/browse/DIRSERVER-2060) - Bind not working after server startup
  * [DIRSERVER-2065](https://issues.apache.org/jira/browse/DIRSERVER-2065) - apacheds.sh in tar.gz archive is not executable


<b>Improvements :</b>

  * [DIRSERVER-1809](https://issues.apache.org/jira/browse/DIRSERVER-1809) - Allow password policy changes to take effect without server restart.
  * [DIRSERVER-2030](https://issues.apache.org/jira/browse/DIRSERVER-2030) - Remove the casting in generateResponse() method of SearchRequestHandler
  * [DIRSERVER-2031](https://issues.apache.org/jira/browse/DIRSERVER-2031) - Use a properly random port when creating a KDCServer via annotation
  * [DIRSERVER-2033](https://issues.apache.org/jira/browse/DIRSERVER-2033) - Upgrade BouncyCastle dependency
  * [DIRSERVER-2036](https://issues.apache.org/jira/browse/DIRSERVER-2036) - Upgrade EhCache dependency
  * [DIRSERVER-2050](https://issues.apache.org/jira/browse/DIRSERVER-2050) - Move configuration from single LDIF to multiple LDIF structure
  * [DIRSERVER-2061](https://issues.apache.org/jira/browse/DIRSERVER-2061) - Logging config bundled with installers is too strict


<b>Tasks :</b>

  * [DIRSERVER-2024](https://issues.apache.org/jira/browse/DIRSERVER-2024) - Add some configuration for the list of supported TLS protocol
  * [DIRSERVER-2039](https://issues.apache.org/jira/browse/DIRSERVER-2039) - Replace non-OSGi dependencies
  * [DIRSERVER-2041](https://issues.apache.org/jira/browse/DIRSERVER-2041) - Add OSGi tests
  * [DIRSERVER-2064](https://issues.apache.org/jira/browse/DIRSERVER-2064) - Uninstallof deb package incomplete


<b>Test :</b>

  * [DIRSERVER-2037](https://issues.apache.org/jira/browse/DIRSERVER-2037) - ClientInitialRefreshIT test failures


  
# News
<h2 class="news">ApacheDS 2.0.0-M19 released <em>posted on November 22th, 2014</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M19, the nineteenth milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Downloads are available [here](downloads.html)

This release is a security fix release : the server is not anymore accepting SSLv3 as a valid protocol.

Here is the release note for Apache Directory ApacheDS 2.0.0-M19:

<b>Bugs</b>

  * [DIRSERVER-2020](https://issues.apache.org/jira/browse/DIRSERVER-2020) - Poodle remediation for ApacheDS 2.X
  
# News
<h2 class="news">ApacheDS 2.0.0-M18 released <em>posted on November 13th, 2014</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M18, the eighteenth milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Downloads are available [here](downloads.html)

Here is the release note for Apache Directory ApacheDS 2.0.0-M18:

<b>Bugs</b>

  * [DIRSERVER-2016](https://issues.apache.org/jira/browse/DIRSERVER-2018) Race condition in PasswordPolicy Bind handling
  * [DIRSERVER-2016](https://issues.apache.org/jira/browse/DIRSERVER-2017) Another Java 8 only error (with Kerberos)
  * [DIRSERVER-2016](https://issues.apache.org/jira/browse/DIRSERVER-2016) Java 7 vs Java 8 : failure in Java 8
  * [DIRSERVER-2014](https://issues.apache.org/jira/browse/DIRSERVER-2014) Synchronization is stopped if remote server was not restored during refresh interval
  * [DIRSERVER-2012](https://issues.apache.org/jira/browse/DIRSERVER-2012) Replication ignores startTLS when ads replStrictCertValidation is true
  * [DIRSERVER-2010](https://issues.apache.org/jira/browse/DIRSERVER-2010) LdifFileLoader cannot load LDIFS from the classpath unless they are very specific location
  * [DIRSERVER-2006](https://issues.apache.org/jira/browse/DIRSERVER-2006) Licencing for apacheds-all
  * [DIRSERVER-2003](https://issues.apache.org/jira/browse/DIRSERVER-2003) Remove ONE and SUB level index configuration from default configuration file
  * [DIRSERVER-2002](https://issues.apache.org/jira/browse/DIRSERVER-2002) OutOfMemory error while loading more than 70K entries at once
  * [DIRSERVER-2001](https://issues.apache.org/jira/browse/DIRSERVER-2001) Replication using TLS does not work when confidentiality is enforced
  * [DIRSERVER-1992](https://issues.apache.org/jira/browse/DIRSERVER-1992) LRUMap used as Entry DN cache in AbstractBTreePartition is going into an inconsistent state
  * [DIRSERVER-1986](https://issues.apache.org/jira/browse/DIRSERVER-1986) Delegated authentication fails when password policy is enabled
  * [DIRSERVER-1978](https://issues.apache.org/jira/browse/DIRSERVER-1978) Unable to import ldif when operational attribute pwdChangedTime is present

<b>Improvement</b>

  * [DIRSERVER-1965](https://issues.apache.org/jira/browse/DIRSERVER-1965) An Index should speed up searches starting with '*'

# News
<h2 class="news">ApacheDS 2.0.0-M17 released <em>posted on July 4th, 2014</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M17, the seventeenth milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Downloads are available [here](downloads.html)

Here is the release note for Apache Directory ApacheDS 2.0.0-M17:

<b>Bugs</b>

  * [DIRSERVER-1971](https://issues.apache.org/jira/browse/DIRSERVER-1971) - Allow any sort of modification on operational attriutes while processing replication events in the consumer
  * [DIRSERVER-1976](https://issues.apache.org/jira/browse/DIRSERVER-1976) - JDBM partition is not building new indices added to the configuration
  * [DIRSERVER-1979](https://issues.apache.org/jira/browse/DIRSERVER-1979) - Adding child entries can't be found after restarting server
  * [DIRSERVER-1980](https://issues.apache.org/jira/browse/DIRSERVER-1980) - pwdReset isn't replicated properly
  * [DIRSERVER-1982](https://issues.apache.org/jira/browse/DIRSERVER-1982) - Couldn't see KDC Principal field under Kerberos settings
  * [DIRSERVER-1986](https://issues.apache.org/jira/browse/DIRSERVER-1986) - Delegated authentication fails when password policy is enabled

<b>New Features</b>

  * [DIRSERVER-1967](https://issues.apache.org/jira/browse/DIRSERVER-1967) - Add the support for the WhoAmI extended operation

# News
<h2 class="news">ApacheDS 2.0.0-M16 released <em>posted on March 13th, 2014</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M16, the sixteenth milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Downloads are available [here](downloads.html)

Here is the release note for Apache Directory ApacheDS 2.0.0-M16:

<b>Bugs</b>

  * DIRSERVER-1092 - org.apache.directory.server.dns.store.RecordStore not support ordered multiple resource record answers
  * DIRSERVER-1252 - Server tools dump command broken due to use of old paths
  * DIRSERVER-1412 - Modifying the schema with more than one mod may fail
  * DIRSERVER-1471 - Providing a right fix for DIRSERVER-1459
  * DIRSERVER-1761 - Unable to use external keystore for SSL
  * DIRSERVER-1810 - Test case org.apache.directory.server.replication.ClientServerReplicationIT.testModDn() fails permanently
  * DIRSERVER-1845 - Sporadic failure on CollectivAttributeServiceIT
  * DIRSERVER-1855 - java.lang.IllegalStateException: Can't overwrite cause at org.apache.directory.server.core.authz.GroupCache.initialize(GroupCache.java:190)
  * DIRSERVER-1860 - Invalid DN in returned entry
  * DIRSERVER-1870 - Persistent control is not decoded properly
  * DIRSERVER-1873 - Searching on member attribute (multivalued) for groups is not working as expected
  * DIRSERVER-1884 - Incorrect length specified in PaswordUtil.splitCredentials
  * DIRSERVER-1885 - The JDBM index cache configuration is not used at all
  * DIRSERVER-1888 - Some pwdPolicy schema AT are incorrect
  * DIRSERVER-1894 - Multi-Master replicated startup does not complete
  * DIRSERVER-1900 - Password hashing interceptor is not encrypting the passwords
  * DIRSERVER-1902 - Concurrent reads cause LDAP:Error 80, LDAP: Error 1 and LDAP: error code 49 errors
  * DIRSERVER-1905 - KeytabDecoder should use '/' instead of '\' to separate principal name components
  * DIRSERVER-1906 - We still store entryUUID associated with 'top' in the OC index
  * DIRSERVER-1909 - Integer cannot be cast to java.lang.Long in JdbmTable prevents service start
  * DIRSERVER-1911 - Incorrect installation presumption toward user naming convention
  * DIRSERVER-1917 - Class Cast Exception when doing paged search
  * DIRSERVER-1921 - Indexes dont work on distinguishedNameMatch attributeType
  * DIRSERVER-1922 - Not Operator in Ldap Filter on Indexed Attributes
  * DIRSERVER-1928 - PasswordPolicy should be ignored from Admin session
  * DIRSERVER-1932 - Password policy pwdMinAge check should check for required reset
  * DIRSERVER-1948 - NPE in AuthenticationInterceptor when password policy is in place and user does not have a pwdChangedTime
  * DIRSERVER-1953 - "entryDn" attribute is not returned when requested along with wildcard attribute symbol *
  * DIRSERVER-1954 - Second startup of an embedded server fails (after an ungraceful shutdown of the first startup)
  * DIRSERVER-1955 - Directory Apacheds sends wrong empty response for password policy request
  * DIRSERVER-1957 - chpass/passwd failure (Linux)
  * DIRSERVER-1959 - Certificates corruption during replication
  * DIRSERVER-1961 - Searches wth Object level scope and non-existing attribute assertion in filter are not working
  * DIRSERVER-1962 - Replication Consumer "Enabled" checkbox not working
  * DIRSERVER-1963 - Add contextCSN attribute to the list of ignored attributes in ReplicationConsumerImpl

<b>Improvements</b>

  * DIRSERVER-1081 - Injecting more information in the opContext structure
  * DIRSERVER-1294 - Add size() and hasNext() methods to cursors
  * DIRSERVER-1338 - Allow non-Jdbm schema partition
  * DIRSERVER-1460 - Add locale to configuration
  * DIRSERVER-1534 - Improving implementation of loading LDIF files during startup
  * DIRSERVER-1601 - New index to add : PrescriptiveACI, member, uniqueMember
  * DIRSERVER-1634 - Add a DN cache for Stores
  * DIRSERVER-1676 - Provide a set of error codes along with an AuthenticationException to indicate its root cause.
  * DIRSERVER-1716 - Add a ParentIdAndRdn cache
  * DIRSERVER-1920 - Refactor DefaultDirectoryServiceFactory/DefaultDirectoryService for extensability
  * DIRSERVER-1926 - Supply Entry to PasswordValidator instead of username
  * DIRSERVER-1935 - Include password policy control in the password modify extended operation response if requested

<b>New Features</b>

  * DIRSERVER-264 - Add Support for Sort Control
  * DIRSERVER-265 - In-memory backend storage support
  * DIRSERVER-442 - Synchronize suffix entries in configuration with entry on disk
  * DIRSERVER-1030 - Add CascadeControl and add functionality to cascade modify and delete effects
  * DIRSERVER-1246 - Add shell scripts and batch files for clients
  * DIRSERVER-1263 - Add authz schema
  * DIRSERVER-1852 - Sort the entry based on the DN before returning them
  * DIRSERVER-1886 - Add configuration schema elements for Mavibot partition
  * DIRSERVER-1889 - Credentials cache for Kerberos
  * DIRSERVER-1898 - Authentication mechanism: PKCS5S2

<b>Task</b>

  * DIRSERVER-575 - Convert all non-forwarding (out of band) nextInterceptor calls to use the proxy with bypass instructions

We have also fixed many Kerberos related issues :

<b>Bugs</b>

  * DIRKRB-28 - Allow setting searchBaseDN
  * DIRKRB-30 - Decoding incoming request over TCP fails
  * DIRKRB-96 - Unable to obtain ticket after changing the password

<b>Tasks</b>

  * DIRKRB-31 - Create the Authenticator grammar
  * DIRKRB-32 - Create the EncTicketPart grammar
  * DIRKRB-33 - Create the AS-REQ grammar
  * DIRKRB-34 - Create the AS-REP grammar
  * DIRKRB-35 - Create the TGS-REQ grammar
  * DIRKRB-36 - Create the TGS-REP grammar
  * DIRKRB-37 - Create the AP-REQ grammar
  * DIRKRB-38 - Create the AP-REP grammar
  * DIRKRB-39 - Create the KRB-SAFE grammar
  * DIRKRB-40 - Create the KRB-PRIV grammar
  * DIRKRB-41 - Create the KRB-CRED grammar
  * DIRKRB-42 - Create the EncASRepPart grammar
  * DIRKRB-43 - Create the EncTGSRepPart grammar
  * DIRKRB-44 - Create the EncAPRepPart grammar
  * DIRKRB-45 - Create the EncKrbPrivPart grammar
  * DIRKRB-46 - Create the EncKrbCredPart grammar
  * DIRKRB-47 - Create the KRB-ERROR grammar
  * DIRKRB-48 - Create the PA-DATA grammar
  * DIRKRB-49 - Create the Checksum grammar
  * DIRKRB-50 - Create the TransitedEncoding grammar
  * DIRKRB-51 - Create the KDC-REQ-BODY grammar
  * DIRKRB-52 - Create the KDC-REP grammar
  * DIRKRB-53 - Create the EncKDCRepPart grammar
  * DIRKRB-54 - Create the LastReq grammar
  * DIRKRB-55 - Create the KRB-SAFE-BODY grammar
  * DIRKRB-56 - Create the KrbCredInfo grammar
  * DIRKRB-57 - Create the METHOD-DATA grammar
  * DIRKRB-58 - Create the TYPED-DATA grammar
  * DIRKRB-59 - Create the PA-ENC-TIMESTAMP grammar
  * DIRKRB-60 - Create the PA-ENC-TS-ENC grammar
  * DIRKRB-61 - Create the ETYPE-INFO-ENTRY grammar
  * DIRKRB-62 - Create the ETYPE-INFO grammar
  * DIRKRB-63 - Create the ETYPE-INFO2-ENTRY grammar
  * DIRKRB-64 - Create the ETYPE-INFO2 grammar
  * DIRKRB-65 - Create the AD-IF-RELEVANT grammar
  * DIRKRB-66 - Create the AD-KDCIssued grammar
  * DIRKRB-67 - Create the AD-AND-OR grammar
  * DIRKRB-68 - Create the AD-MANDATORY-FOR-KDC grammar
  * DIRKRB-69 - Create the Ticket grammar
  * DIRKRB-70 - Create the EncryptedData grammar
  * DIRKRB-71 - Create the PrincipalName grammar
  * DIRKRB-72 - Create the HostAddresses grammar
  * DIRKRB-73 - Create the HostAddress grammar
  * DIRKRB-74 - Create the AuthorizationData grammar
  * DIRKRB-75 - Create the EncryptionKey grammar
  * DIRKRB-76 - Create the KDC-REQ grammar
  * DIRKRB-77 - Adapt the error messages we use in grammars
  * DIRKRB-78 - Add tests for all the grammars


<h2 class="news">ApacheDS 2.0.0-M15 released <em>posted on August 18th, 2013</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M15, the fifteenth milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Here is the release note for Apache Directory ApacheDS 2.0.0-M15:

<b>Bugs</b>

  * DIRSERVER-1325 - Simple Authentication can not be disabled
  * DIRSERVER-1490 - Not 100% sure, but the DN caches we have in the server might not be updated when doing a Move
  * DIRSERVER-1871 - Logging Not Working in M14
  * DIRSERVER-1872 - The JournalInterceptor is not present in the configuration
  * DIRSERVER-1874 - Persistent search is not considering the scope of the search
  * DIRSERVER-1875 - Persistent search is not filtering the attributes before returning entries
  * DIRSERVER-1879 - Incorrect check on result code done in the PwdModifyResponseImpl constructor
  * DIRSERVER-1880 - ApacheDS failed to start on boot
  * DIRSERVER-1882 - KertabEncoder.write() method should take into account the size of the entries list to determine the buffer size
  * DIRSERVER-1883 - Searching for entries starting at the rootDSE does not work


<b>Improvement</b>

  * DIRSERVER-1049 - [PERF] Speed improvement in Search operation
  * DIRSERVER-1519 - [perf] The MoveAndRename operation is not optimal

Downloads are available [here](downloads.html)


<h2 class="news">ApacheDS 2.0.0-M14 released <em>posted on July 1st, 2013</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M14, the fourteenth milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

This release does not contain any change, but it depends on a new version of the Apache LDAP API, which contains a fix
for a critical bug. 

This is a critical version, and anyone using 2.0.0-M13 should replace it with this version.  

Downloads are available [here](downloads.html)


<h2 class="news">ApacheDS 2.0.0-M13 released <em>posted on June 25th, 2013</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M13, the thirteenth milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Here is the release note for Apache Directory ApacheDS 2.0.0-M13:

<b>Bugs</b>

  * DIRSERVER-1325 - Simple Authentication can not be disabled
  * DIRSERVER-1490 - Not 100% sure, but the DN caches we have in the server might not be updated when doing a Move
  * DIRSERVER-1491 - Improve schema extractor
  * DIRSERVER-1500 - Error searching children of known element.
  * DIRSERVER-1521 - dc=example,dc=com DIT no longer exists as a default partition (DIT) in 1.5.7?
  * DIRSERVER-1579 - Various problems using moddn operation
  * DIRSERVER-1661 - Kerberos tests not working with JDK 1.6.0_27 and JDK 1.7.0
  * DIRSERVER-1806 - The DelegatedAuthIT test does not test a delegated authentication
  * DIRSERVER-1829 - bug in initializing authenticators for AuthenticatorInterceptor
  * DIRSERVER-1836 - When extedning an interceptor, the operation are executed twice
  * DIRSERVER-1840 - Wrong default duration for ads-repllogmaxidle
  * DIRSERVER-1846 - Configuring SSL/Start TLS keystore does not accept backward slash (\) in path
  * DIRSERVER-1849 - Invalid prefixes format for password stored using SHA-2 hashing mechanisms (SHA-256, SHA-384, SHA-512)
  * DIRSERVER-1862 - Concurrent searches and adds may break the backend


<b>Improvement</b>

  * DIRSERVER-289 - Configure an optional password message digest algorithm which is applied on userPassword attribute values at add and modify operations.
  * DIRSERVER-1236 - Store an AttributeEntry object in filter's node
  * DIRSERVER-1310 - Improve the way we handle controls encoding/decoding
  * DIRSERVER-1346 - Use ServiceLifecycleListener to avoid having System.out messages for service start/stop events.
  * DIRSERVER-1447 - loadAllEnabled() method is taking way too long
  * DIRSERVER-1489 - Provide access to remote connection info
  * DIRSERVER-1511 - Some operations are present in the Partition interface when they should not
  * DIRSERVER-1617 - Add a feature to support TLS in DelegatingAuthenticator
  * DIRSERVER-1801 - The authenticator cache is invalidated too frequently


<b>New Feature</b>

  * DIRSERVER-275 - Add Support for LDAP Password Modify Extended Operation
  * DIRSERVER-434 - Add Support for Paged Search Results Control
  * DIRSERVER-866 - Initialization with another backend than JDBM for the system partition
  * DIRSERVER-1203 - RFC2307bis Support is missing
  * DIRSERVER-1837 - The DelegatingAuthenticator does not support SSL/StartTLS/SASL


<b>Task</b>

  * DIRSERVER-710 - Exception tree should be reviewed



This is a critical version, and anyone using 2.0.0-M12 should replace it with this version.  

Downloads are available [here](downloads.html)



<h2 class="news">ApacheDS 2.0.0-M12 released <em>posted on May 2nd, 2013</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M12, the twelwth milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Here is the release note for Apache Directory ApacheDS 2.0.0-M12:

<b>Bugs</b>

  * DIRSERVER-1798 - The AdministrativePoint interceptor is always activated, even if it's not part of the config
  * DIRAPI-80] - Cannot issue a direct operation without having connected to the server
  * DIRSERVER-1143 - ldappasswd fails to bind
  * DIRSERVER-1584 - document how to limit the available ciphers for ldaps (how to disable SSL3_RSA_RC4_40_MD5 : SSL_EXPORT SSL3_RSA_DES_40_CBC_SHA)
  * DIRSERVER-1812 -  The default admin account should never get locked forever 
  * DIRSERVER-1814 - Using anon connection results in UnbindRequestHandler reporting 'LdapNoSuchObjectException: ERR_268 Cannot find a partition for ' 
  * DIRSERVER-1826 - The ads-pwdFailureCountInterval is not taken into account
  * DIRSERVER-1834 - Broken backend when using AT with no EQUALITY MR

This is a critical version, and anyone using 2.0.0-M11 should replace it with this version.  

Downloads are available [here](downloads.html)

<h2 class="news">ApacheDS 2.0.0-M11 released <em>posted on March 3rd, 2013</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M11, the eleventh milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Here is the release note for Apache Directory ApacheDS 2.0.0-M11:

<b>Bugs</b>

  * DIRSERVER-1281 - StreamCorruptedException after brutal shutdown
  * DIRSERVER-1797 - The AdministrativeRole AT is not indexed, leadings to huge delay when starting the server
  * DIRSERVER-1798 - The AdministrativePoint interceptor is always activated, even if it's not part of the config
  * DIRSERVER-1799 - When deleting values from an existing entry, the presence index might get out of date
  * DIRSERVER-1802 - Disabling an authenticator results in a NPE
  * DIRSERVER-1803 - When the SimpleAuthenticator is disabled, and the auth level is set to SIMPLE, we can bind freely
  * DIRSERVER-1804 - [patch] Fix ApacheDS code to allow control and reduce number of outputted logs
  * DIRSERVER-1805 - The replication janitor thread is not stopped correctly when the server is stopped
  * DIRSERVER-1321 - Clarify relationship between partition.syncOnWrite and apacheDS.syncPeriodMillis configuration attributes
  * DIRSERVER-1322 - Auto inferring context entry
  * DIRSERVER-1808 - We should evaluate the Scope and any other index in a fliter only when the # of candidate is above a threshold
  * DIRKRB-85 - @CreateKdcServer should include searchBaseDn attribute
  * DIRKRB-86 - The Kerberos server badly need some logging...

Note that this is a milestone, and some parts of the API or configuration can change before the 2.0 GA. We don't have any defined time frame for the 2.0-GA release, we do expect to release a few more milestones before reaching the 2.0-GA.

Downloads are available [here](downloads.html)

<h2 class="news">ApacheDS 2.0.0-M10 released <em>posted on January 29th, 2013</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M10, the tenth milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Here is the release note for Apache Directory ApacheDS 2.0.0-M10:

<b>Bugs</b>

* DIRSERVER-1704 - Inconistency in Master-Slave Replication
* DIRSERVER-1740 - REPLICATION data loss
* DIRSERVER-1772 - Improve the replication logs
* DIRSERVER-1788 - ConfigurationReader fails to correctly read byte[] values
* DIRSERVER-1789 - Changes to an existing replication consumer may not be taken into account
* DIRSERVER-1790 - When we restart the server, some user index are lost
* DIRSERVER-1791 - Interrupting a search on the client side cause the connection to be closed by the server
* DIRSERVER-1792 - Replication and Modification of ACIs

Note that this is a milestone, and some parts of the API or configuration can change before the 2.0 GA. We don't have any defined time frame for the 2.0-GA release, we do expect to release a few more milestones before reaching the 2.0-GA.

Downloads are available [here](downloads.html)


<h2 class="news">ApacheDS 2.0.0-M8 released <em>posted on October 12th, 2012</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M8, the eigth milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Here is the release note for Apache Directory ApacheDS 2.0.0-M8:

<b>Bugs</b>

* DIRSERVER-1458 - Cursor API generic usage is totally wrong
* DIRSERVER-1624 - Index are not created when added after the server has been started
* DIRSERVER-1655 - Possible incorrect insertion of modifications in the consumer log
* DIRSERVER-1659 - the apacheds.sh/bat files contains a hard coded revision. This is not good
* DIRSERVER-1663 - NPE when doing add/delete and search at the same time on the same entries
* DIRSERVER-1677 - Dependencies cleanup
* DIRSERVER-1689 - testNoSearchByNonAdmin does not throw an LdapNoPermissionException, as expected
* DIRSERVER-1706 - be sure we close the cursors when the session expires and if we have paged searches or persistent search going on
* DIRSERVER-1709 - Adding an index does not create the index if the server is already started
* DIRSERVER-1710 - The memory default (128M) is not enouh in most case
* DIRSERVER-1715 - Implement backward browse for DescendantCursor and ChildrenCursor
* DIRSERVER-1718 - Problems when adding a schema containing one or more uppercased letters
* DIRSERVER-1722 - The PagedSearchIT.testPagedSearchWrongCookie() test blocks randomly the build
* DIRSERVER-1723 - Potential LRUCache exhaustion with searches
* DIRSERVER-1726 - DefaultPasswordValidator always throws PasswordPolicyException when consecutive non-letter chars are in RDN
* DIRSERVER-1727 - LDAP Searches against boolean attributes with booleanMatch equality never return matches
* DIRSERVER-1732 - ERR_04131 The value is expected to be a String
* DIRSERVER-1735](https://issues.apache.org/jira/browse/DIRSERVER-1735) - When ads-pwdmaxage attribute is set to more then 2147483, then all user passwords are expirer forever.
* DIRSERVER-1737 - ApacheDS should be able to start even when one of its indexed attributes can't be found in the schema manager
* DIRSERVER-1738 - Can't restart ApacheDS after setting a value superior to Integer.MAX_VALUE in an AT with Integer syntax
* DIRSERVER-1739 - LDAP Searches Slow
* DIRSERVER-1744 - Compex LDAP search filters returning unmatched objects
* DIRSERVER-1747 - Presence index is not up to date when the server is started
* DIRSERVER-1748 - EqualityEvaluator does not work correctly

Note that this is a milestone, and some parts of the API or configuration can change before the 2.0 GA. We don't have any defined time frame for the 2.0-GA release, we do expect to release a few more milestones before reaching the 2.0-GA.

Downloads are available [here](downloads.html)


<h2 class="news">ApacheDS 2.0.0-M7 released <em>posted on May 21st, 2012</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M7, the seventh milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Here is the release note for Apache Directory ApacheDS 2.0.0-M7:

<b>Bugs</b>

* DIRSERVER-1093 - the ResourceRecordEncoder and QuestionRecordEncoder have bug for empty domainName
* DIRSERVER-1697 - Creation of new syntax fails due to ERR_277 Attribute m-obsolete not declared in objectClasses of entry
* DIRSERVER-1698 - Search on entries with multiple AVA in RDN does not work correctly if the initial RDN order is not used
* DIRSERVER-1702 - Adding an index through annotation does not work
* DIRSERVER-1712 - If the index are created using their alias, they are deleted immediately
* DIRSERVER-1711 - Index initialization is taking way too much time
* DIRSERVER-1713 - Error on console with first start of clean system

Note that this is a milestone, and some parts of the API or configuration can change before the 2.0 GA. We don't have any defined time frame for the 2.0-GA release, we do expect to release a few more milestones before reaching the 2.0-GA.

Downloads are available [here](downloads.html)


<h2 class="news">ApacheDS 2.0.0-M6 released <em>posted on February 29th, 2012</em></h2>

The Apache Directory team is pleased to announce the release of ApacheDS 2.0.0-M6, the sixth milestone towards a 2.0 version.

ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.

Here is the release note for Apache Directory ApacheDS 2.0.0-M6:

<b>Bugs</b>

* DIRSERVER-1644 - User provided value is not retained during rename operation
* DIRSERVER-1681 - adding entries with attribute userCertificate;binary fails with "No such attribute"
* DIRSERVER-1692 - Unable to add a JPEG image to an entry due to an 'Invalid Attribute Syntax' error
* DIRSERVER-1693 - Renaming an entry when the RDN uses a case insensitive AT should be possible
* DIRSERVER-1694 - Renaming an existing entry with a DN containing upper cased chars will not store the CN as provided
* DIRSERVER-1696 - Creation of an entry like cn=test1+cn=test2, ou=system should not be allowed
* DIRSERVER-1699 - DN/RDN handling is incorrect when there are some escaped values into them
* DIRSERVER-1700 - Version in Root DSE is reported as '$pom.version'

Note that this is a milestone, and some parts of the API or configuration can change before the 2.0 GA. We don't have any defined time frame for the 2.0-GA release, we do expect to release a few more milestones before reaching the 2.0-GA.

Downloads are available [here](downloads.html)
