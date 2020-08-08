---
title: Overview
---

## The Initiatives/Goals

* Aims to become the preferred Kerberos server implementation in java, with rich facilities that integrate Kerberos, PKI and token (OAuth2) on both client and server sides.
* Provides client API to interact with any KDC server.
* Provides an embeddable and standalone KDC server that supports various backends for storing principals and keys.
* Comes with in-memory, Mavibot(MVCC BTree), JSON, LDAP and Zookeeper backends to store data.
* Embedded KDC server allows easy integration into products for unit testing or production deployment.
* Supports FAST/Preauthentication framework to allow popular and useful authentication mechanisms.
* Supports PKINIT mechanism to allow clients to request tickets using x509 certificate credentials.
* Supports Token Preauth mechanism to allow clients to request tickets using JWT tokens.
* Supports OTP mechanism to allow clients to request tickets using One Time Password.
* Provides support for JAAS, GSSAPI and SASL frameworks that applications can leverage.
* Minimal dependencies, SLF4J is the only external dependency in the core part.
