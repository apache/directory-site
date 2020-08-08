---
title: 9 - ApacheDS internals
navPrev: 
navPrevText: 
navUp: ../advanced-user-guide.html
navUpText: Advanced User Guide
---

# 9 - ApacheDS internals

## Startup

The server is started by calling the *UberJarMain* class, with the directory containing the server's layout. The layout is the list of directory where we will store various server's files :

* The instance directory, ie the base directory for the server : $BASE
* The configuration directory : _${BASE}/conf/_
* The log directory : _${BASE}/log/_
* The partition directory, which will contain the data :  _${BASE}/partitions/_
* The run directory, which will contain the server PID : _${BASE}/run/_
* The cache directory, containing the cache files : _${BASE}/cache/_

All those directories will be created if they do not exist already. It's also possible to provide specific directories by setting some environment variables : _apacheds.log.dir_ for the logs directory, and _apacheds.run.dir_ for the run directory.

The server will also loog for some configuration files :

* The wrapper configuration : _${BASE}/conf/wrapper.conf_
* The log configuration file : _${BASE}/conf/log4j.properties_

Once those elements configured, we start an instance of _ApacheDsService_, which is responsible for initializing the service, and the various configured servers :

    ...
    // Creating ApacheDS service
    service = new ApacheDsService();

    service.start( layout );
    ...


We first create the cache service, which will be used all over the server. This cache can be configured by creating and tuning the _${BASE}/conf/directory-cacheservice.xml_ file, otherwise we use a default configuration.

The next step is to initialize the _SchemaManager_ which, again, will be used by the whole service. This will read the existing schema, or extract the default schema, and load it in an instance of the _SchemaManager_ class. The schema is extracted on disk as LDIF files, into the _${BASE}/partitions/schema_ directory.

We also initialize the _DnFactory_ class, which is used to cache created DNs. This factory has a cache. Every _Dn_ created using this factory will be schema aware, as we passed a _SchemaManager_ instance to the factory.

Then we create the schema partition, that will manage access and updates done on the schema.

The configuration is now initialized. If it wasn't existing, we extract a default one. We create a configuration partition, which will be stored on _${BASE}/conf/ou=config_.
The configuration is in LDIF format, it is read from disk, and a in-memory representation is created.

The _DirectoryService_ can now be created and initialized.

### DirectoryService initialization

The _DirectoryService_ is the core of the system. It manages the access to the data though the interceptors chain, offer the needed services to all the servers that need it, and manage the sessions.

LdapApiService
--------------

Load the default controls
Load the default extended operations
Create the LDAP decoder and encoder (should be done when we start the LDAP server)
Create the OperationManager
Create the changeLog
Create the Journal
Create the default interceptors (ordered) :

        NormalizationInterceptor
        AuthenticationInterceptor
            create the authenticators
            initialize the passwordPolicies
        ReferralInterceptor
        AciAuthorizationInterceptor
        DefaultAuthorizationInterceptor
        AdministrativePointInterceptor
        ExceptionInterceptor
        SchemaInterceptor
        OperationalAttributeInterceptor
        CollectiveAttributeInterceptor
        SubentryInterceptor
        EventInterceptor
        TriggerInterceptor
        ChangeLogInterceptor
        JournalInterceptor

Create the partitions :

    system
    example (or whatever user partition is defined)

Create the changeLog
Create the Journal
Add the Schema partition
Add the config partition

and startup the directoryService, which will create a shutdown hook, and initialize the various compnents (cachService, schemaPartition, partitionNexus which loads the rootDSE, the system partition, interceptors, changeLog, journal and the vatious user's partitions)

### Servers initialization

It's time to initialize the servers : LDAP (if requested), NTP (if requested), Kerberos (if requested), HTTP (if requested). The DNS and DHCP server are not supported at the moment. As we can see, we can start many different servers, which will rely - or not - on the DirectoryService.

#### LDAP server

We first load a KeyStore taht will be used to manage certificates, then create the LDAP protocol handles - the handlers are responsible for processing each LDAP operation, like BIND, ADD, etc... -. We also register the extended operations, the SASL mechanisms, start the replication producer if needed, and starts the needed transports - we may have two : the default transport and the encrypted transport -. At the end, we initialize the replication consumer if needed.

#### NTP server

The NTP server registers the protocol handler, and start the associated transport (UDP, port 123)


#### Kerberos server
To be completed


#### Http server

This is mainly use as a mean to manage the LDAP server through a HTTP layer. 

### Last steps

We register an event listener to manage dynamic configuration updates, start the shutdown hook, and we are done !
