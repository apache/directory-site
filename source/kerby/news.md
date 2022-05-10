---
title: News
---

# News
<h2 class="news">Apache Kerby 2.0.2 released <em>posted on May 9, 2022</em></h2>

The Apache Directory team is pleased to announce the release of Apache Kerby
2.0.2.

The issues fixed are available [here](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12310910&version=12348361).

Downloads are available [here](downloads.html)

<h2 class="news">Apache Kerby 2.0.1 released <em>posted on June 3, 2020</em></h2>

The Apache Directory team is pleased to announce the release of Apache Kerby
2.0.1.

The issues fixed are available [here](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12310910&version=12344836).

Downloads are available [here](downloads.html)

<h2 class="news">Apache Kerby 2.0.0 released <em>posted on Jan 14, 2019</em></h2>

The Apache Directory team is pleased to announce the release of Apache Kerby
2.0.0.

The issues fixed are available [here](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12310910&version=12342433).

Downloads are available [here](downloads.html)
<h2 class="news">Apache Kerby 1.1.1 released <em>posted on May 25th, 2018</em></h2>

The Apache Directory team is pleased to announce the release of Apache Kerby
1.1.1. 

The issues fixed are available [here](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12310910&version=12342211).

Downloads are available [here](downloads.html)
<h2 class="news">Apache Kerby 1.1.0 released <em>posted on November 27th, 2017</em></h2>

The Apache Directory team is pleased to announce the release of Apache Kerby
1.1.0. This is a new major release of Apache Kerby, which implements
cross-realm support, and also includes a GSSAPI module.

The issues fixed are available [here](https://issues.apache.org/jira/projects/DIRKRB/versions/12341144).

Downloads are available [here](downloads.html)
<h2 class="news">Apache Kerby 1.0.1 released <em>posted on September 4th, 2017</em></h2>

The Apache Directory team is pleased to announce the release of Apache Kerby
1.0.1. The issues fixed are available [here](https://issues.apache.org/jira/projects/DIRKRB/versions/12340574).

Downloads are available [here](downloads.html)

<h2 class="news">Apache Kerby 1.0.0 released <em>posted on May 13th, 2017</em></h2>

The Apache Directory team is pleased to announce the release of Apache Kerby
1.0.0. The issues fixed are available [here](https://issues.apache.org/jira/browse/DIRKRB/fixforversion/12332775).

Downloads are available [here](downloads.html)

<h2 class="news">Apache Kerby 1.0.0-RC2 released <em>posted on March 14th, 2016</em></h2>

The Apache Directory team is pleased to announce the release of Apache Kerby 1.0.0-RC2.

105 JIRA issues were resolved and with the following Features and important changes since 1.0.0-RC1:

1. Anonymous PKINIT support(BETA): allows a client to obtain anonymous credentials without authenticating as any particular principal.

2. Finished token support:
  * Add ability to encrypt and sign using non-RSA keys;
  * Get the verify key for signed JWT token from kdc config;
  * Token issuer must be trusted as one of preconfigured issuers;
  * Add support for decrypting JWT tokens in the KDC.

3. PKIX CMS/X509 support.

4. BER encoding support.

5. Improved the ASN1 framework:
  * Separate Asn1 parser;
  * Support decoding of primitive but constructed encoded types;
  * Allow to define explicit and implicit fields more easily for collection types;
  * Providing an API to use some useful ASN1 functions by consolidating existing utilities

6. Dump support for Asn1.
  * provide an ASN1 dumping tool for troubleshooting

7. Separate KrbClient, KrbTokenClient, and KrbPkinitClient APIs.

<h2 class="news">Apache Kerby 1.0.0-RC1 released <em>posted on September 16th, 2015</em></h2>

The Apache Directory team is pleased to announce the release of Apache Kerby 1.0.0-RC1, the 
first release candidate towards a 1.0 version.

Downloads are available [here](downloads.html)

Apache Kerby 1.0.0-RC1 Release Notes
====================================

In this release 236 JIRA issues were resolved and the following features are supported:

1. Kerberos libraries:
    * Client
    * KDC server
    * Kadmin
    * Credential cache and keytab utilities

2. Standalone KDC server .

3. Support for various identity backends:
    * In-memory
    * JSON
    * LDAP
    * Mavibot(MVCC BTree)
    * Zookeeper

4. Embedded KDC server allows easy integration into products for unit tests or production deployment.

5. FAST/Preauthentication framework to allow popular and useful authentication mechanisms.

6. Token Preauth mechanism to allow clients to request tickets using JWT tokens.

7. Client can request a TGT with:
    * User plain password credential
    * User keyTab
    * User token credential

8. Client can request a service ticket with:
    * user TGT credential for a server
    * user AccessToken credential for a server

9. Network support including UDP and TCP transport with two implementations:
    * Default implementation based on the JRE without depending on other libraries.
    * Netty based implementation for better throughput, lower latency.

10. Tools:
    * kdcinit: Initialize and prepare KDC, like choose storage type, setting up necessary principals (tgs, kadmin) etc.
    * kadmin: Command-line interfaces to administration system.
    * kinit: Obtains and caches an initial ticket-granting ticket for principal.
    * klist: Lists the Kerby principal and tickets held in a credentials cache, or the keys held in a keytab file.

11. Support for JAAS, GSSAPI and SASL frameworks that applications can leverage the authentication mechanisms provided by Kerby.

12. Building support: checking style and find bugs.

