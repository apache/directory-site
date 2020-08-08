---
type: kerby
title: Welcome to Apache Kerby
slug: index
---

<div class="hero clearfix">
  <div class="left">
    <h1>Apache Kerby&trade;</h1>
    <h2>A Kerberos Protocol and KDC Implementation</h2>
  </div>
  <div class="right">
    <img src="../images/kerby_logo.png" width="125" height="125" border="0"/>
  </div>
</div>

<div class="description">
  Apache Kerby&trade; is a Java Kerberos binding. It provides a rich, intuitive and interoperable implementation, library, KDC and various facilities that integrates PKI, OTP and token (OAuth2) as desired in modern environments such as cloud, Hadoop and mobile.<br/>
</div>
<!-- div class="download-link">
  <a href="/kerby/downloads.html" class="download_badge"><b>Download Apache<br>Kerby {{< param version_kerby >}}</b></a>
</div-->

<div class="news">

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

</div>

<div class="news">
    {{< grabpage "kerby/news.md" >}}
</div>
