---
title: ADS 2.0 configuration
---

<a name="ADS2.0configuration-Introduction"></a>
# Introduction

ADS 2.0 configuration has been completely reworked since 1.0 and 1.5
versions. While those two versions were XML based, we decided to store the
new configuration in the DiT (Directory Information Tree).

It's now available either through an LDAP browser, programatically using an
LDAP API or simply by editing the LDIF files stored on the disk.

<a name="ADS2.0configuration-Configurationstructure"></a>
# Configuration structure

ADS is more than a *LDAP* server. It's also a *Kerberos* server, a *DNS*
Server and a *DHCP* server. In other words, we have to define a
configuration for many servers, some of them being backed by a *Directory
Service*.

We can consider that the main service is the *Directory Service*, on top of
which we have servers. Each server has a specific network configuration. We
will expose the associated configuration.

<a name="ADS2.0configuration-UsingApacheDirectoryStudiotomanagetheconfiguration"></a>
## Using Apache DirectoryStudio to manage the configuration

The easiest way to manage a server configuration is to use Studio for that.
Defining a new server will allow you to configure it, but you can also
modify an existing server's configuration, as soon as you can connect on to
this server. Let's see how we process in both cases.

<a name="ADS2.0configuration-Newserverconfiguration"></a>
### New server configuration

You can define a brand new server configuration using Studio. All you have
to do is :
- to create a new Server instance
- modify it's configuration
- save the configuration as a file (ldif)
- move this ldif file in the installed server workspace at the right place
(under the configuration partition)

<a name="ADS2.0configuration-Creationofanewserver"></a>
#### Creation of a new server

Click on the 'New Server' icon :


![New server icon](../../images/NewServer.png)

This will popup this window : 

![New server creation](../../images/NewServerCreation.png) 

Select the type of server you want to configure (here, 2.0) and name your
server.

<a name="ADS2.0configuration-Configurationoverview"></a>
#### Configuration overview

By double-clicking on the created server, you will see an overview of the
current configuration (all the value are default values at this point) :

![Overview](../../images/Overview.png)

You can modify the server port here, and access to the advanced
configurations from this screen.

<a name="ADS2.0configuration-LDAP/LDAPSconfiguration"></a>
#### LDAP/LDAPS configuration

The LDAP/LDAPS tab let you configure all the SASL and TLS configuration,
plus the server limits :

![Ldap Ldaps](../../images/LdapLdaps.png)

We manage two kind of limits :
- The maximum time the server will take to process a request (when this
time has been expired, the request will be stopped)
- The maximum number of entries we will return

<a name="ADS2.0configuration-Kerberosconfiguration"></a>
#### Kerberos configuration
In this tab, you can setup all the parameters needed to configure your
Kerberos server :

![Kerberos](../../images/Kerberos.png)

<a name="ADS2.0configuration-Partitionconfiguration"></a>
#### Partition configuration

This is where you add new partitions and modify them.

There are a few importants elements to configure for a partition :
- its ID, which is an external name
- its Suffix, which must be a valid DN
- the cache size used for this partition (it's the number of page that will
be kept in memory, considering that a page may contain more than one entry)

Then you also have to configure the index used by this partition. Some of
them are mandatory (*apacheRdn*, *apacheSubLevel*, *apachePresence*,
*apacheOneLevel*, *apacheOneAlias*, *apacheSubAlias*, *apacheAlias*,
*objectClass*, *entryUuid*, *entryCsn*), you can just modify their cache,
all the others are user index, you have to create them. Each index is
associated with an existing AttributeType.

![Partition](../../images/Partition.png)

<a name="ADS2.0configuration-Replication"></a>
#### Replication
Not yet available

<a name="ADS2.0configuration-Modifyinganexistingserverconfiguration"></a>
### Modifying an existing server configuration

The server should accept live modification. If this is the case, you just
have to connect on the server and to modify it.

<a name="ADS2.0configuration-DiTconfigurationstructure"></a>
## DiT configuration structure

We need to define a directory tree to store the configuration.

Here is the existing structure, where we have defined one *LDAP* server
(_ldapServer1_), backed by one *Directory Service* (_DS1_), and two
associated transports (*ldapSrv1* and *ldapsSrv1*) :


    ou=config
     |
     +--ads-directoryServiceId=default
          |
          +--ads-changeLogId=defaultChangeLog
          |
          +--ads-journalId=defaultJournal
          |
          +--ou=interceptors
          |    |
          |    +--ads-interceptorId=aciAuthorizationInterceptor
          |    |
          |    +--ads-interceptorId=authenticationInterceptor
          |    |	|
          |    |	+--ou=authenticators
          |    |	|    |
          |    |	|    +--ads-authenticatorid=anonymousauthenticator
          |    |	|    |
          |    |	|    +--ads-authenticatorid=simpleauthenticator
          |    |	|    |
          |    |	|    +--ads-authenticatorid=strongauthenticator
          |    |	|
          |    |	+--ou=passwordPolicies
          |    |	     |
          |    |	     +--ads-pwdId=default
          |    |
          |    +--ads-interceptorId=collectiveAttributeInterceptor
          |    |
          |    +--ads-interceptorId=defaultAuthorizationInterceptor
          |    |
          |    +--ads-interceptorId=eventInterceptor
          |    |
          |    +--ads-interceptorId=exceptionInterceptor
          |    |
          |    +--ads-interceptorId=keyDerivationInterceptor
          |    |
          |    +--ads-interceptorId=normalizationInterceptor
          |    |
          |    +--ads-interceptorId=operationalAttributeInterceptor
          |    |
          |    +--ads-interceptorId=passwordHashingInterceptor
          |    |
          |    +--ads-interceptorId=referralInterceptor
          |    |
          |    +--ads-interceptorId=schemaInterceptor
          |    |
          |    +--ads-interceptorId=subentryInterceptor
          |    |
          |    +--ads-interceptorId=triggerInterceptor
          |
          +--ou=partitions
          |    |
          |    +--ads-partitionId=system
          |    |	|
          |    |	+--ou=indexes
          |    |	     |
          |    |	     +--ads-indexAttributeId=apacheRdn
          |    |	     |
          |    |	     +--ads-indexAttributeId=apacheSubLevel
          |    |	     |
          |    |	     +--ads-indexAttributeId=apachePresence
          |    |	     |
          |    |	     +--ads-indexAttributeId=apacheOneLevel
          |    |	     |
          |    |	     +--ads-indexAttributeId=apacheOneAlias
          |    |	     |
          |    |	     +--ads-indexAttributeId=apacheSubAlias
          |    |	     |
          |    |	     +--ads-indexAttributeId=apacheAlias
          |    |	     |
          |    |	     +--ads-indexAttributeId=objectClass
          |    |	     |
          |    |	     +--ads-indexAttributeId=entryUUID
          |    |	     |
          |    |	     +--ads-indexAttributeId=entryCSN
          |    |	     |
          |    |	     +--ads-indexAttributeId=ou
          |    |	     |
          |    |	     +--ads-indexAttributeId=uid
          |    |
          |    +--ads-partitionId=example
          | 	|
          | 	+--ou=indexes
          | 	     |
          | 	     +--ads-indexAttributeId=apacheRdn
          | 	     |
          | 	     +--ads-indexAttributeId=apacheSubLevel
          | 	     |
          | 	     +--ads-indexAttributeId=apachePresence
          | 	     |
          | 	     +--ads-indexAttributeId=apacheOneLevel
          | 	     |
          | 	     +--ads-indexAttributeId=apacheOneAlias
          | 	     |
          | 	     +--ads-indexAttributeId=apacheSubAlias
          | 	     |
          | 	     +--ads-indexAttributeId=apacheAlias
          | 	     |
          | 	     +--ads-indexAttributeId=objectClass
          | 	     |
          | 	     +--ads-indexAttributeId=entryUUID
          | 	     |
          | 	     +--ads-indexAttributeId=entryCSN
          | 	     |
          | 	     +--ads-indexAttributeId=ou
          | 	     |
          | 	     +--ads-indexAttributeId=uid
          | 	     |
          | 	     +--ads-indexAttributeId=dc
          | 	     |
          | 	     +--ads-indexAttributeId=krb5PrincipalName
          |
          +--ou=servers
    	   |
    	   +--ads-serverId=changePasswordServer
    	   |	|
    	   |	+--ou=transports
    	   |	     |
    	   |	     +--ads-transportId=tcp
    	   |	     |
    	   |	     +--ads-transportId=udp
    	   |
    	   +--ads-serverId=dnsServer
    	   |	|
    	   |	+--ou=transports
    	   |	     |
    	   |	     +--ads-transportId=tcp
    	   |	     |
    	   |	     +--ads-transportId=udp
    	   |
    	   +--ads-serverId=httpServer
    	   |	|
    	   |	+--ou=transports
    	   |	|    |
    	   |	|    +--ads-transportid=http
    	   |	|    |
    	   |	|    +--ads-transportid=https
    	   |	|
    	   |	+--ou=httpWebApps
    	   |	     |
    	   |	     +--ads-id=testapp
    	   |
    	   +--ads-serverId=kerberosServer
    	   |	|
    	   |	+--ou=transports
    	   |	     |
    	   |	     +--ads-transportid=tcp
    	   |	     |
    	   |	     +--ads-transportid=udp
    	   |
    	   +--ads-serverId=ldapServer
    	   |	|
    	   |	+--ou=replConsumers
    	   |	|
    	   |	+--ou=transports
    	   |	|    |
    	   |	|    +--ads-transportid=ldap
    	   |	|    |
    	   |	|    +--ads-transportid=ldaps
    	   |	|
    	   |	+--ou=extendedOpHandlers
    	   |	|    |
    	   |	|    +--ads-extendedOpId=gracefulShutdownHandler
    	   |	|    |
    	   |	|    +--ads-extendedOpId=starttlshandler
    	   |	|    |
    	   |	|    +--ads-extendedOpId=storedprochandler
    	   |	|
    	   |	+--ou=saslMechHandlers
    	   |	     |
    	   |	     +--ads-saslMechName=CRAM-MD5
    	   |	     |
    	   |	     +--ads-saslMechName=DIGEST-MD5
    	   |	     |
    	   |	     +--ads-saslMechName=GSS-SPNEGO
    	   |	     |
    	   |	     +--ads-saslMechName=GSSAPI
    	   |	     |
    	   |	     +--ads-saslMechName=NTLM
    	   |	     |
    	   |	     +--ads-saslMechName=SIMPLE
    	   |
    	   +--ads-serverId=ntpServer
    		|
    		+--ou=transports
    		     |
    		     +--ads-transportId=tcp
    		     |
    		     +--ads-transportId=udp
    

![configuration-schema-dit](../../images/configuration-dit.png)

<a name="ADS2.0configuration-DirectoryService"></a>
### Directory Service

For every server backed by a directory, this is the place we define this
service's configuration.

The Directory Service configuration itself depends on some sub-elements,
which needs their own configuration :
* changeLog
* interceptors
* journal
* partitions
* replication

see [configuration schema description](adsconfig.html)

Otherwise, we also have a set of simple parameters, listed in the following
table :

<a name="ADS2.0configuration-ads-directoryServiceObjectClass"></a>
#### ads-directoryService ObjectClass

We have many parameters we can configure in order to get the
DirectoryService functioning. Some parameters are mandatory, other aren't.
Some may have one single value, others may not.

Here is the list of mandatory and optional parameters

<a name="ADS2.0configuration-Mandatoryparameters"></a>
##### Mandatory parameters

<table>
<tr><th> Name </th><th> OID </th><th> Mandatory </th><th> type </th><th> SV/MV </th><th> Composite </th><th> Description </th></tr>
<tr><td> ads-directoryServiceId </td><td> 1.3.6.1.4.1.18060.0.4.1.2.100 </td><td>
Yes </td><td> PrintableString </td><td> SV </td><td>
No </td><td> The unique identifier for this DirectoryService </td></tr>
<tr><td> ads-dsReplicaId </td><td> 1.3.6.1.4.1.18060.0.4.1.2.112 </td><td> Yes </td><td>
PrintableString </td><td> SV </td><td> No </td><td> The numeric ID
(between 000 and 999) for this instance </td></tr>
<tr><td> ads-interceptors </td><td> 1.3.6.1.4.1.18060.0.4.1.2.116 </td><td> Yes </td><td>
PrintableString </td><td> MV </td><td> Yes </td><td> The list of
interceptors </td></tr>
<tr><td> ads-partitions </td><td> 1.3.6.1.4.1.18060.0.4.1.2.108 </td><td> Yes </td><td>
PrintableString </td><td> MV </td><td> Yes </td><td> The list of
partitions </td></tr>
</table>

<a name="ADS2.0configuration-Optionalparameters"></a>
##### Optional parameters

<table>
<tr><th> Name </th><th> OID </th><th> Mandatory </th><th> type </th><th> SV/MV </th><th> Composite </th><th> Description </th></tr>
<tr><td> ads-servers </td><td> 1.3.6.1.4.1.18060.0.4.1.2.115 </td><td> No </td><td>
PrintableString </td><td> SV </td><td> Yes </td><td> The servers we
have to start </td></tr>
<tr><td> ads-dsAccessControlEnabled </td><td> 1.3.6.1.4.1.18060.0.4.1.2.101 </td><td>
No </td><td> Boolean </td><td> SV </td><td> No </td><td> Is
the access control enabled or not (default to no) </td></tr>
<tr><td> ads-dsAllowAnonymousAccess </td><td> 1.3.6.1.4.1.18060.0.4.1.2.102 </td><td>
No </td><td> Boolean </td><td> SV </td><td> No </td><td> If
one can connect with the anonymous account (default to no) </td></tr>
<tr><td> ads-changeLog </td><td> 1.3.6.1.4.1.18060.0.4.1.2.105 </td><td> No </td><td>
PrintableString </td><td> SV </td><td> Yes </td><td> The ChangeLog
configuration </td></tr>
<tr><td> ads-dsDenormalizeOpAttrsEnabled </td><td> 1.3.6.1.4.1.18060.0.4.1.2.103 </td><td>
No </td><td> Boolean </td><td> SV </td><td> No </td><td> A
flag telling the server to return a denormalized version of operational
attributes </td></tr>
<tr><td> ads-journal </td><td> 1.3.6.1.4.1.18060.0.4.1.2.117 </td><td> No </td><td>
PrintableString </td><td> SV </td><td> Yes </td><td> The Journal
configuration </td></tr>
<tr><td> ads-dsMaxPDUSize </td><td> 1.3.6.1.4.1.18060.0.4.1.2.110 </td><td> No </td><td>
Integer </td><td> SV </td><td> No </td><td> The max size for an
incoming PDU </td></tr>
<tr><td> ads-dsPasswordHidden </td><td> 1.3.6.1.4.1.18060.0.4.1.2.104 </td><td> No
</td><td> Boolean </td><td> SV </td><td> No </td><td> Tells if the password
is hidden </td></tr>
<tr><td> ads-dsSyncPeriodMillis </td><td> 1.3.6.1.4.1.18060.0.4.1.2.111 </td><td>
No </td><td> Integer </td><td> SV </td><td> No </td><td>
Duration between two flush on disk </td></tr>
<tr><td> ads-dsTestEntries </td><td> 1.3.6.1.4.1.18060.0.4.1.2.113 </td><td> No </td><td>
PrintableString </td><td> MV </td><td> No </td><td> The set of
entries to inject at startup (may be obsolete) </td></tr>
</table>


<a name="ADS2.0configuration-Interceptors"></a>
## Interceptors

Some interceptors can be configured (Authentication and PassowordPolicy).
They will be described with a specific ObjectClass.

Otherwise, they only have an identifier, and an order number, as the
interceptors are used in an ordered chain. (we may want later to allow an
administrator to inject a new interceptor)

This ObjectClass contains the informations relative to a base interceptor.
It will be extended by each interceptor specific interceptor.

<a name="ADS2.0configuration-Mandatoryparameters"></a>
#### Mandatory parameters

<table>
<tr><th> Name </th><th> OID </th><th> Mandatory </th><th> type </th><th> SV/MV </th><th> Composite </th><th> Description </th></tr>
<tr><td> ads-interceptorId </td><td> 1.3.6.1.4.1.18060.0.4.1.2.130 </td><td> Yes </td><td>
PrintableString </td><td> SV </td><td> No </td><td> The Interceptor
identifier </td></tr>
<tr><td> ads-interceptorOrder </td><td> 1.3.6.1.4.1.18060.0.4.1.2.131 </td><td>
Yes </td><td> Integer </td><td> SV </td><td> No </td><td>
The Interceptor order number </td></tr>
<tr><td> ads-interceptorClassName </td><td> 1.3.6.1.4.1.18060.0.4.1.2.804 </td><td>
Yes </td><td> PrintableString </td><td> SV </td><td>
No </td><td> Fully qualified class name of the interceptor </td></tr>
</table>

<a name="ADS2.0configuration-Authenticationinterceptor"></a>
### Authentication interceptor

<a name="ADS2.0configuration-ads-authenticationInterceptor"></a>
#### ads-authenticationInterceptor

<table>
<tr><th> Name </th><th> OID </th><th> Mandatory </th><th> type </th><th> SV/MV </th><th> Composite </th><th> Description </th></tr>
<tr><td> ads-authenticators </td><td> 1.3.6.1.4.1.18060.0.4.1.2.933 </td><td> No </td><td>
N/A </td><td> MV </td><td> Yes </td><td> A
reference to the authenticators </td></tr>
<tr><td> ads-passwordPolicies </td><td> 1.3.6.1.4.1.18060.0.4.1.2.313 </td><td> No
</td><td> PrintableString </td><td> MV </td><td> Yes </td><td> The
PasswordPolicy configurations </td></tr>
</table>







<a name="ADS2.0configuration-ChangeLog"></a>
## ChangeLog

Here is the configuration :

<table>
<tr><th> Parameter </th><th> Default value </th><th> Description </th></tr>
<tr><td> changeLogStore </td><td> </td><td> A store for change events on the directory (not
described atm) </td></tr>
<tr><td> enabled </td><td> true </td><td> Tells if the changeLog system is up and running </td></tr>
<tr><td> exposed </td><td> false </td><td> Tells if the changeLog system is visible by the clients
</td></tr>
<tr><td> partitionSuffix </td><td> ou=changelog </td><td> The prefix of the partition </td></tr>
<tr><td> revisionsContainerName </td><td> ou=revisions </td><td> The name of the revisions
container under the partition </td></tr>
<tr><td> tagsContainerName </td><td> ou=tags </td><td> The name of the tags container under the
partition </td></tr>
</table>

{note}
The _partitionSuffix_, _revisionsContainerName_ and _tagsContainerName_
should not be exposed. They won't be associated with a schema element. The
_changeLogStore_ is not defined right now, as we only have a InMemory
changeLog system working.
{note}



<a name="ADS2.0configuration-ChangeLogschema"></a>
### ChangeLog schema


<a name="ADS2.0configuration-AttributeTypes"></a>
#### AttributeTypes

Here is the list of AttributeTypes we need for the changeLog :

<table>
<tr><th> AttributeType </th><th> ADS </th><th> OID </th><th> Description </th></tr>
<tr><td> [ads-changeLogEnabled](configuration-schema#ads-changelogenabled.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> </td></tr>
<tr><td> [ads-changeLogExposed](configuration-schema#ads-changelogexposed.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> </td></tr>
</table>

<a name="ADS2.0configuration-ObjectClass"></a>
#### ObjectClass

Here is the ObjectClass we need for the changeLog :

<table>
<tr><th> ObjectClass </th><th> type </th><th> ADS </th><th> OID </th><th> Description </th></tr>
<tr><td> [ads-changeLog](configuration-schema#ads-changelog.html)
 </td><td> STRUCTURAL </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.3.xxx </td><td> The ChangeLog
ObjectClass </td></tr>
</table>


<a name="ADS2.0configuration-Journal"></a>
## Journal

This is the system storing every modifications in order to be able to
restore the server if it crashes, or to manage replication. It is backed by
a store, which needs to be configured too. Here is the configuration :

<table>
<tr><th> Parameter </th><th> Default value </th><th> Description </th></tr>
<tr><td> enabled </td><td> true </td><td> Tells if the journal system is up and running </td></tr>
<tr><td> rotation </td><td> 0 </td><td> The size before a journal rotation occurs </td></tr>
<tr><td> filename </td><td> journal.ldif </td><td> The journal's file name </td></tr>
<tr><td> workingDirectory </td><td> the DirectoryService working directory </td><td> The place on
disk where the journal is stored </td></tr>
</table>

<a name="ADS2.0configuration-Journalschema"></a>
### Journal schema


<a name="ADS2.0configuration-AttributeTypes"></a>
#### AttributeTypes

Here is the list of AttributeTypes we need for the journal :

<table>
<tr><th> AttributeType </th><th> ADS </th><th> OID </th><th> Description </th></tr>
<tr><td> [ads-journalFileName](configuration-schema#ads-journalfilename.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The journal's file name </td></tr>
<tr><td> [ads-journalWorkingDirectory](configuration-schema#ads-journalworkingdirectory.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The place on disk where the
journal is stored </td></tr>
<tr><td> [ads-journalRotation](configuration-schema#ads-journalrotation.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The size before a journal rotation
occurs </td></tr>
<tr><td> [ads-journalEnabled](configuration-schema#ads-journalenabled.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> Tells if the journal system is up
and running </td></tr>
</table>

<a name="ADS2.0configuration-ObjectClass"></a>
#### ObjectClass

Here is the ObjectClass we need for the journal :

<table>
<tr><th> ObjectClass </th><th> type </th><th> ADS </th><th> OID </th><th> Description </th></tr>
<tr><td> [ads-journal](configuration-schema#ads-journal.html)
 </td><td> STRUCTURAL </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.3.xxx </td><td> The Journal
ObjectClass </td></tr>
</table>


<a name="ADS2.0configuration-Partition"></a>
## Partition

The Partition parameters are listed in the following table :

<table>
<tr><th> Parameter </th><th> Default value </th><th> Description </th></tr>
<tr><td> cacheSize </td><td> 100 </td><td> Number of cached entries </td></tr>
<tr><td> id </td><td> N/A </td><td> The partition id </td></tr>
<tr><td> indexedAttributes </td><td> N/A </td><td> The list of indexed attributes </td></tr>
<tr><td> optimizerEnabled </td><td> true </td><td> Tells if the optimizer is enabled or not </td></tr>
<tr><td> property </td><td> N/A </td><td> ??? </td></tr>
<tr><td> suffix </td><td> N/A </td><td> The partition's suffix </td></tr>
<tr><td> syncOnWrite </td><td> true </td><td> Tells the server to flush on disk for every write </td></tr>
</table>

the *indexedAttributes* parameter itself is a composite attribute, and will
be described below.

{note}
The 'property' parameter will probably be removed.
{note}

{note}
The 'optimizerEnabled' parameter will probably be removed.
{note}


<a name="ADS2.0configuration-Partitionschema"></a>
### Partition schema


<a name="ADS2.0configuration-AttributeTypes"></a>
#### AttributeTypes

<table>
<tr><th> Parameter </th><th> Default value </th><th> Description </th></tr>
<tr><td> ads-partitionCacheSize </td><td> 100 </td><td> Number of cached entries </td></tr>
<tr><td> ads-partitionId </td><td> N/A </td><td> The partition Id </td></tr>
<tr><td> ads-partitionIndexedAttributes </td><td> N/A </td><td> The list of indexed attributes </td></tr>
<tr><td> ads-partitionOptimizerEnabled </td><td> true </td><td> Tells if the optimizer is enabled
or not. probably a useless parameter </td></tr>
<tr><td> ads-partitionProperty </td><td> N/A </td><td> Will be removed </td></tr>
<tr><td> ads-partitionSuffix </td><td> N/A </td><td> The partition suffix </td></tr>
<tr><td> ads-partitionSyncOnWrite </td><td> true </td><td> Tells the server to flush on disk for
every write </td></tr>
</table>

<a name="ADS2.0configuration-ObjectClass"></a>
#### ObjectClass

<table>
<tr><th> ObjectClass </th><th> type </th><th> ADS </th><th> OID </th><th> Description </th></tr>
<tr><td> ads-partition </td><td> STRUCTURAL </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.3.xxx </td><td> The
Partition ObjectClass </td></tr>
</table>

<a name="ADS2.0configuration-Index"></a>
## Index

The Index parameters are listed in the following table :

<table>
<tr><th> Parameter </th><th> Default value </th><th> Description </th></tr>
<tr><td> attributeId </td><td> N/A </td><td> The attributeType name or OID </td></tr>
<tr><td> cacheSize </td><td> 100 </td><td> Number of key we cache </td></tr>
<tr><td> numDupLimit </td><td> 512 </td><td> The number of duplicated element we allow before
switching to a secondary tree </td></tr>
<tr><td> filename </td><td> the attributeName </td><td> Name of the index file </td></tr>
<tr><td> workingDirectory </td><td> The DS's working directory </td><td> The place on disk where
the index will be stored </td></tr>
</table>

{note}
The cacheSize is likely to be removed.
{note}

<a name="ADS2.0configuration-Indexschema"></a>
### Index schema

<a name="ADS2.0configuration-AttributeTypes"></a>
#### AttributeTypes

<table>
<tr><th> Parameter </th><th> Default value </th><th> Description </th></tr>
<tr><td> [ads-indexAttributeId](configuration-schema#ads-indexattributeid.html)
 </td><td> N/A </td><td> The attributeType name or OID </td></tr>
<tr><td> [ads-indexCacheSize](configuration-schema#ads-indexcachesize.html)
 </td><td> 100 </td><td> Number of key we cache </td></tr>
<tr><td> [ads-indexNumDupLimit](configuration-schema#ads-indexnumduplimit.html)
 </td><td> 512 </td><td> The number of duplicated element we allow before switching to a
secondary tree </td></tr>
<tr><td> [ads-indexFilename](configuration-schema#ads-indexfilename.html)
 </td><td> the attributeName </td><td> Name of the index file </td></tr>
<tr><td> [ads-indexWorkingDirectory](configuration-schema#ads-indexworkingdirectory.html)
 </td><td> The DS's working directory </td><td> The place on disk where the index will be
stored </td></tr>
</table>

<a name="ADS2.0configuration-ObjectClass"></a>
#### ObjectClass

We will define at least two ObjectClasses, as we may have different kind of
index (JDBM, Oracle, ...)

<table>
<tr><th> ObjectClass </th><th> type </th><th> ADS </th><th> OID </th><th> Description </th></tr>
<tr><td> [ads-index](configuration-schema#ads-index.html)
 </td><td> ABSTRACT </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.3.xxx </td><td> A global indexed
attribute (can be JDBM or anything else) </td></tr>
<tr><td> [ads-jdbmIndex](configuration-schema#ads-jdbmindex.html)
 </td><td> STRUCTURAL </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.3.xxx </td><td> A JDBM indexed
attribute </td></tr>
</table>

<a name="ADS2.0configuration-LdapServer"></a>
## LdapServer

The LdapServer parameters are described in the following table :

<table>
<tr><th> Parameter </th><th> Default value </th><th> Description </th></tr>
<tr><td> id </td><td> N/A </td><td> The LdapServer identifier </td></tr>
<tr><td> transports </td><td> N/A </td><td> The LdapServer transports </td></tr>
<tr><td> confidentialityRequired </td><td> false </td><td> Tells the server to accept requests
using startTLS or LDAPS </td></tr>
<tr><td> allowAnonymousAccess </td><td> true </td><td> Tells the server to accept Anynymous
requests or not </td></tr>
<tr><td> maxSizeLimit </td><td> 1000 </td><td> The maximum number of entries to return </td></tr>
<tr><td> MaxTimeLimit </td><td> 1000 </td><td> The maximul time before an operation is aborted (in
seconds) </td></tr>
<tr><td> extendedOperationHandlers </td><td> ??? </td></tr>
<tr><td> saslHost </td><td> N/A </td><td> The name of this host, validated during SASL negotiation
</td></tr>
<tr><td> saslPrincipal </td><td> ldap/ldap.example.com@EXAMPLE.COM </td><td> The service
principal, used by GSSAPI </td></tr>
<tr><td> saslQop </td><td> "auth, "auth-int", "auth-conf" </td><td> The quality of protection
(QoP), used by DIGEST-MD5 and GSSAPI </td></tr>
<tr><td> saslRealms </td><td> N/A </td><td> The realms serviced by this SASL host </td></tr>
<tr><td> saslMechanismHandlers </td><td> N/A </td><td> <String, MechanismHandler> \--> To be
explicited </td></tr>
<tr><td> directoryService </td><td> N/A </td><td> The reference to the associated DirectoryService
</td></tr>
<tr><td> keystoreFile </td><td> The JVM keystore </td><td> The keystore file to use to store
certificates </td></tr>
<tr><td> certificatePassword </td><td> N/A </td><td> The certificate passord </td></tr>
<tr><td> replicationSystem </td><td> </td><td> ??? Should be associated to the DirectoryService </td></tr>
</table>

Some of the parameters will not be used : _extendedOperationHandlers_,
_saslQop_, _saslMechanismHandlers_ and _replicationSystem_.

None of those parameters are composite, except the DirectoryService, which
has already been described.

<a name="ADS2.0configuration-LdapServerschema"></a>
### LdapServer schema


<a name="ADS2.0configuration-AttributeTypes"></a>
#### AttributeTypes

<table>
<tr><th> AttributeType </th><th> ADS </th><th> OID </th><th> Description </th></tr>
<tr><td> [ads-ldapServerId](configuration-schema#ads-ldapserverid.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The LdapServer identifier </td></tr>
<tr><td> [ads-ldapServerId](configuration-schema#ads-ldapserverid.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The LdapServer transports </td></tr>
<tr><td> [ads-ldapServerTransports](configuration-schema#ads-ldapservertransports.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> Tells the server to accept
requests using startTLS or LDAPS </td></tr>
<tr><td> [ads-ldapServerAllowAnonymousAccess](configuration-schema#ads-ldapserverallowanonymousaccess.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> Tells the server to accept
Anynymous requests or not </td></tr>
<tr><td> [ads-ldapServerMaxSizeLimit](configuration-schema#ads-ldapservermaxsizelimit.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The maximum number of entries to
return </td></tr>
<tr><td> [ads-ldapServerMaxTimeLimit](configuration-schema#ads-ldapservermaxtimelimit.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The maximul time before an
operation is aborted (in seconds) </td></tr>
<tr><td> [ads-ldapServerSaslHost](configuration-schema#ads-ldapserversaslhost.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The name of this host, validated
during SASL negotiation </td></tr>
<tr><td> [ads-ldapServerSaslPrincipal](configuration-schema#ads-ldapserversaslprincipal.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The service principal, used by
GSSAPI </td></tr>
<tr><td> [ads-ldapServerSaslRealms](configuration-schema#ads-ldapserversaslrealms.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The realms serviced by this SASL
host </td></tr>
<tr><td> [ads-ldapServerDirectoryService](configuration-schema#ads-ldapserverdirectoryservice.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The reference to the associated
DirectoryService </td></tr>
<tr><td> [ads-ldapServerKeystoreFile](configuration-schema#ads-ldapserverkeystorefile.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The keystore file to use to store
certificates </td></tr>
<tr><td> [ads-ldapServerCertificatePassword](configuration-schema#ads-ldapservercertificatepassword.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The certificate passord </td></tr>
</table>

<a name="ADS2.0configuration-ObjectClass"></a>
#### ObjectClass

Here is the list of ObjectClasses we need for the LdapServer

<table>
<tr><th> ObjectClass </th><th> type </th><th> ADS </th><th> OID </th><th> Description </th></tr>
<tr><td> [ads-ldapServer](configuration-schema#ads-ldapserver.html)
 </td><td> STRUCTURAL </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.3.xxx </td><td> Base class for the
LdapServer ObjectClass </td></tr>
</table>


<a name="ADS2.0configuration-KerberosServer"></a>
## KerberosServer

The KerberosServer parameters are described in the following table :

<table>
<tr><th> Parameter </th><th> Default value </th><th> Description </th></tr>
<tr><td> id </td><td> N/A </td><td> The KerberosServer identifier </td></tr>
<tr><td> transports </td><td> N/A </td><td> The KerberosServer transports </td></tr>
<tr><td> AllowableClockSkew </td><td> </td><td> The allowable clock skew </td></tr>
<tr><td> EncryptionTypes </td><td> </td><td> The encryption types </td></tr>
<tr><td> EmptyAddressesAllowed </td><td> true </td><td> Whether empty addresses are allowed </td></tr>
<tr><td> ForwardableAllowed </td><td> true </td><td> Whether forwardable addresses are allowed </td></tr>
<tr><td> PaEncTimestampRequired </td><td> true </td><td> Whether pre-authentication by encrypted
timestamp is required </td></tr>
<tr><td> PostdatedAllowed </td><td> true </td><td> Whether postdated tickets are allowed </td></tr>
<tr><td> ProxiableAllowed </td><td> true </td><td> Whether proxiable addresses are allowed </td></tr>
<tr><td> RenewableAllowed </td><td> true </td><td> Whether renewable tickets are allowed </td></tr>
<tr><td> KdcPrincipal </td><td> krbtgt/EXAMPLE.COM@EXAMPLE.COM </td><td> The service principal
name </td></tr>
<tr><td> MaximumRenewableLifetime </td><td> 7 days </td><td> The maximum renewable lifetime </td></tr>
<tr><td> MaximumTicketLifetime </td><td> 1 day </td><td> The maximum ticket lifetime </td></tr>
<tr><td> PrimaryRealm </td><td> EXAMPLE.COM </td><td> The primary realm </td></tr>
<tr><td> BodyChecksumVerified </td><td> true </td><td> Whether to verify the body checksum </td></tr>
<tr><td> SearchBaseDn </td><td> NA </td><td> The place we are looking for entries </td></tr>
</table>

<a name="ADS2.0configuration-KerberosServerSchema"></a>
### KerberosServer Schema

<a name="ADS2.0configuration-AttributeTypes"></a>
#### AttributeTypes

Here is the list of AttributeTypes we need for the KerberosServer

<table>
<tr><th> AttributeType </th><th> ADS </th><th> OID </th><th> Description </th></tr>
<tr><td> [ads-krbAllowableClockSkew](configuration-schema#ads-krballowableclockskew.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The allowable clock skew </td></tr>
<tr><td> [ads-krbEncryptionTypes](configuration-schema#ads-krbencryptiontypes.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The encryption types </td></tr>
<tr><td> [ads-krbEmptyAddressesAllowed](configuration-schema#ads-krbemptyaddressesallowed.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> Whether empty addresses are
allowed </td></tr>
<tr><td> [ads-krbForwardableAllowed](configuration-schema#ads-krbforwardableallowed.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> Whether forwardable addresses are
allowed </td></tr>
<tr><td> [ads-krbForwardableAllowed](configuration-schema#ads-krbforwardableallowed.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> Whether forwardable addresses are
allowed </td></tr>
<tr><td> [ads-krbPaEncTimestampRequired](configuration-schema#ads-krbpaenctimestamprequired.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> Whether pre-authentication by
encrypted timestamp is required </td></tr>
<tr><td> [ads-krbPostdatedAllowed](configuration-schema#ads-krbpostdatedallowed.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> Whether postdated tickets are
allowed </td></tr>
<tr><td> [ads-krbProxiableAllowed](configuration-schema#ads-krbproxiableallowed.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> Whether proxiable addresses are
allowed </td></tr>
<tr><td> [ads-krbRenewableAllowed](configuration-schema#ads-krbrenewableallowed.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> Whether renewable tickets are
allowed </td></tr>
<tr><td> [ads-krbKdcPrincipal](configuration-schema#ads-krbkdcprincipal.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The service principal name </td></tr>
<tr><td> [ads-krbMaximumRenewableLifetime](configuration-schema#ads-krbmaximumrenewablelifetime.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The maximum renewable lifetime </td></tr>
<tr><td> [ads-krbMaximumTicketLifetime](configuration-schema#ads-krbmaximumticketlifetime.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The maximum ticket lifetime </td></tr>
<tr><td> [ads-krbPrimaryRealm](configuration-schema#ads-krbprimaryrealm.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The primary realm </td></tr>
<tr><td> [ads-krbBodyChecksumVerified](configuration-schema#ads-krbbodychecksumverified.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> Whether to verify the body
checksum </td></tr>
<tr><td> [ads-kerberosServerId](configuration-schema#ads-kerberosserverid.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The kerberos server identifier </td></tr>
</table>

<a name="ADS2.0configuration-ObjectClasses"></a>
#### ObjectClasses

Here is the list of ObjectClass we need for the KerberosServer

<table>
<tr><th> ObjectClass </th><th> type </th><th> ADS </th><th> OID </th><th> Description </th></tr>
</table>

<a name="ADS2.0configuration-TransportLayer"></a>
## Transport Layer

The *transport layer* is the layer in charge of managing incoming requests
and outgoing responses. All the servers are depending on this layer. It
support *TCP* and *UDP* transports.

The configuration parameters are the following :

<table>
<tr><th> Parameter </th><th> Default value </th><th> Description </th></tr>
<tr><td> address </td><td> localhost </td><td> The listening address. Can be '*' if the server is
listening on all the interfaces </td></tr>
<tr><td> port </td><td> \-1 </td><td> The port the server is listening on. </td></tr>
<tr><td> sslEnabled </td><td> false </td><td> Tells if SSL is enabled for this transport. Only
available for a TCP transport </td></tr>
<tr><td> backlog </td><td> 50 </td><td> The number of incoming requests queued when all the
threads are busy </td></tr>
<tr><td> threads </td><td> 3 </td><td> The number of threads to use in the executor to handle the
incoming requests </td></tr>
</table>

The base transport is determinated by the type of transport object we will
create :_TcpTransport_ or _UdpTransport_.

For instance, in the current *server.xml* file, we have this configuration
for the *LDAP* server and for the *Kerberos* server :

      ...
      <ldapServer id="ldapServer" ...>
        <transports>
          <tcpTransport address="0.0.0.0" port="10389" nbThreads="8"
backLog="50" enableSSL="false"/>
          <tcpTransport address="localhost" port="10686" enableSSL="true"/>
        </transports>
      ...




      ...
      <kdcServer id="kdcServer">
        <transports>
          <tcpTransport port="60088" nbThreads="4" backLog="50"/>
          <udpTransport port="60088" nbThreads="4" backLog="50"/>
        </transports>
      ...


<a name="ADS2.0configuration-Transportschema"></a>
### Transport schema

To be able to store the transport in the *DiT*, we must define a specific
set of AttributeTypes and ObjectClasses to store them. Here are those
definitions.

<a name="ADS2.0configuration-AttributeTypes"></a>
#### AttributeTypes

Here is the list of AttributeTypes we need for the transport layer

<table>
<tr><th> AttributeType </th><th> ADS </th><th> OID </th><th> Description </th></tr>
<tr><td> [ads-transportAddress](configuration-schema#ads-transportaddress.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The IP Address </td></tr>
<tr><td> [ipServicePort](http://ldap.akbkhome.com/index.php/attribute/ipServicePort.html)
 </td><td> no </td><td> 1.3.6.1.1.1.1.15 </td><td> The IP port </td></tr>
<tr><td> [ads-transportBacklog](configuration-schema#ads-transportbacklog.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The backlog size </td></tr>
<tr><td> [ads-transportEnableSSL](configuration-schema#ads-transportenablessl.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> Tells if SSL is on </td></tr>
<tr><td> [ads-transportNbThreads](configuration-schema#ads-transportnbthreads.html)
 </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.2.xxx </td><td> The number of threads in the
executor </td></tr>
</table>

<a name="ADS2.0configuration-ObjectClasses"></a>
#### ObjectClasses

Here is the list of ObjectClasses we need for the transport layer

<table>
<tr><th> ObjectClass </th><th> type </th><th> ADS </th><th> OID </th><th> Description </th></tr>
<tr><td> [ads-transport](configuration-schema#ads-transport.html)
 </td><td> ABSTRACT </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.3.xxx </td><td> Base class for the
transport's ObjectClasses </td></tr>
<tr><td> [ads-tcpTransport](configuration-schema#ads-tcptransport.html)
 </td><td> STRUCTURAL </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.3.xxx </td><td> The TCP transport </td></tr>
<tr><td> [ads-udpTransport](configuration-schema#ads-udptransport.html)
 </td><td> STRUCTURAL </td><td> yes </td><td> 1.3.6.1.4.1.18060.0.4.1.3.xxx </td><td> The UDP transport </td></tr>
