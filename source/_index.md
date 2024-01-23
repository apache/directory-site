---
title: Welcome to Apache Directory
---

<STYLE type="text/css">
h1 {text-align: center;}
</STYLE>

# The Apache Directory&trade; Project

## Project Vision

We strive to increase LDAP awareness, comfort and adoption to bring forth what we call the Modern LDAP Renaissance. Learn more about our vision [here](https://directory.apache.org/vision.html)

## Directory Sub-Projects

The Apache Directory Project provides directory solutions entirely written in Java. These include a directory server, which has been certified as LDAP v3 compliant by the Open Group (ApacheDS), and Eclipse-based directory tools (Apache Directory Studio).

<table id="subProjects">
  <tbody>
    <tr>
      <!-- ApacheDS project -->
	    <td>
        {{< download-apacheds >}}
		ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs. 
	    </td>
      <!-- Apache Studio project -->
	    <td>
        {{< download-studio >}}
		    Apache Directory Studio is a complete directory tooling platform intended to be used with any LDAP server however it is particularly designed for use with ApacheDS. It is an Eclipse RCP application, composed of several Eclipse (OSGi) plugins, that can be easily upgraded with additional ones. These plugins can even run within Eclipse itself.  
	    </td>
	  </tr>
    <tr>
      <!-- Apache LDAP API project -->
      <td>
        {{< download-api >}}
        The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).
        This is a "schema aware" API with some convenient ways to access all types of LDAP servers, not only ApacheDS but any LDAP server.
        The API is OSGI ready and extensible. New controls, schema elements and network layer could be added or used in the near future. 
      </td>
      <!-- Apache Mavibot project -->
      <td>
        {{< download-mavibot >}}
        Mavibot&trade; is a <em>Multi Version Concurrency Control</em> (MVCC) BTree in Java. It is expected to be a replacement for JDBM (The current backend for the Apache Directory Server), but could be a good fit for any other project in need of a Java MVCC BTree implementation. 
      </td>
    </tr>
    <tr>
      <!-- Apache Kerby project -->
      <td>
        {{< download-kerby >}}
        Apache Kerby&trade; is a Java Kerberos binding. It provides a rich, intuitive and interoperable implementation, library, KDC and various facilities that integrates PKI, OTP and token (OAuth2) as desired in modern environments such as cloud, Hadoop and mobile.
      </td>
      <!-- Apache Fortress project -->
      <td>
        {{< download-fortress >}}
        Apache Fortress&trade; is a standards-based authorization system that provides attribute and role-based access control, delegated administration and password policy services using an LDAP backend.
      </td>
    </tr>
    <tr>
      <!-- Apache SCIMple project -->
      <td>
        {{< download-scimple >}}
        Apache SCIMple&trade; is a Jakarta EE implementation of the SCIM 2.0 specification. It can be used to build custom SCIM servers and clients used to synchronize users and groups between systems.
      </td>
      <td></td>
    </tr>
  </tbody>
</table>
