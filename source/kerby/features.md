---
title: Features
---

# Kerby Features

Kerby is an implementation of Kerberos V5 protocol in pure Java. It provides a rich, intuitive and interoperable library, KDC and various facilities that integrate PKI, OTP and token (OAuth2) as desired in modern environments such as cloud, Hadoop and mobile.
Following features are (already) supported:

* Kerberos libraries:
    * Client
    * KDC server
    * Kadmin
    * Credential cache and keytab utilities

* Standalone KDC server

* Support for various backends:
    * In-memory
    * Mavibot (MVCC BTree)
    * LDAP
    * JSON
    * Zookeeper

* Embeddable KDC server allows easy integration into products for unit testing or production deployment.

* FAST/Preauthentication framework, to allow popular and useful authentication mechanisms.

* Token Preauth mechanism, to allow clients to request tickets using JWT tokens.

* Client can request a TGT with:
    * User plain password credential
    * User keyTab
    * User token credential

* Client can request a service ticket with:
    * user TGT credential for a server 
    * user AccessToken credential for a server 

* Network support including UDP and TCP transport with two implementations: 
    * Default implementation based on the JRE without depending on other libraries.
    * Netty based implementation for better throughput, lower latency.

* Tools:
    * kdcinit: Initialize and prepare KDC, like choose storage type, setting up necessary principals (tgs, kadmin) etc.
    * kadmin: Command-line interface to administer Kerby.
    * kinit: Obtains and caches initial ticket-granting tickets for principals.
    * klist: Lists the Kerberos principals and tickets held in a credentials cache, or the keys held in a keytab file.

* Support for JAAS, GSSAPI and SASL frameworks, allowing applications to leverage the authentication mechanisms provided by Kerby.

