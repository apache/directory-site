---
title: Welcome to Apache Directory
---

<center>
	<h1>
		The Apache Directory&trade; Project
	</h1>
</center>	

## Project Vision

We strive to increase LDAP awareness, comfort and adoption to bring forth what we call the Modern LDAP Renaissance. Learn more about our vision [here](https://directory.apache.org/vision.html)

## Directory Sub-Projects

The Apache Directory Project provides directory solutions entirely written in Java. These include a directory server, which has been certified as LDAP v3 compliant by the Open Group (ApacheDS), and Eclipse-based directory tools (Apache Directory Studio).

<STYLE type="text/css">
.separator {height: 10px;} 
.header {text-align: center; font-size: 14px; color: #555555;} 
td {font-size: 12px;}
</STYLE>

<table width="99%" border="0" style="text-align: justify;">
  <tbody>
    <tr>
      <!-- ApacheDS project -->
	    <td style="border-width: 0; border-right: 1px solid silver; padding-right: 15px; width:50%;" valign="top">
        <div class="download-link">
          <a href="apacheds/downloads.html" class="download_badge_apacheds"><b>Download<br>ApacheDS {{< param version_apacheds >}}</b></a>
        </div>
		    <div class="separator">&nbsp;</div>
		    ApacheDS is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs. 
	    </td>
      <!-- Apache Studio project -->
	    <td witdh="50%" style="border-width: 0; padding-left: 15px; width:50%;" valign="top">
        <div class="download-link">
          <a href="studio/downloads.html" class="download_badge_studio"><b>Download Apache<br>Directory Studio {{< param version_studio_name >}}</b></a>
        </div>
		    <div class="separator">&nbsp;</div>
		    Apache Directory Studio is a complete directory tooling platform intended to be used with any LDAP server however it is particularly designed for use with ApacheDS. It is an Eclipse RCP application, composed of several Eclipse (OSGi) plugins, that can be easily upgraded with additional ones. These plugins can even run within Eclipse itself.  
	    </td>
	  </tr>
    <tr>
      <!-- Apache LDAP API project -->
      <td style="border-width: 0; border-right: 1px solid silver; padding-right: 15px; width:50%;" valign="top">
        <div class="download-link">
          <a href="api/downloads-2.html" class="download_badge_api"><b>Download Apache<br>LDAP API {{< param version_api2 >}}</b></a>
        </div>
        <div class="download-link">
          <a href="api/downloads-1.html" class="download_badge_api"><b>Download Apache<br>LDAP API {{< param version_api >}}</b></a>
        </div>
        <div class="separator">&nbsp;</div>
        The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).
        This is a "schema aware" API with some convenient ways to access all types of LDAP servers, not only ApacheDS but any LDAP server.
        The API is OSGI ready and extensible. New controls, schema elements and network layer could be added or used in the near future. 
      </td>
      <!-- Apache Mavibot project -->
      <td witdh="50%" style="border-width: 0; padding-left: 15px; width:50%;" valign="top">
        <div class="download-link">
          <a href="mavibot/downloads.html" class="download_badge_mavibot"><b>Download Apache<br>Mavibot {{< param version_mavibot >}}</b></a>
        </div>
        <div class="separator">&nbsp;</div>
        Mavibot&trade; is a <em>Multi Version Concurrency Control</em> (MVCC) BTree in Java. It is expected to be a replacement for JDBM (The current backend for the Apache Directory Server), but could be a good fit for any other project in need of a Java MVCC BTree implementation. 
      </td>
    </tr>
    <tr>
      <!-- Apache Kerby project -->
      <td style="border-width: 0; border-right: 1px solid silver; padding-right: 15px; width:50%;" valign="top">
        <div class="download-link">
          <a href="kerby/downloads.html" class="download_badge_kerby"><b>Download Apache<br>Kerby {{< param version_kerby >}}</b></a>
        </div>
        <div class="separator">&nbsp;</div>
        Apache Kerby&trade; is a Java Kerberos binding. It provides a rich, intuitive and interoperable implementation, library, KDC and various facilities that integrates PKI, OTP and token (OAuth2) as desired in modern environments such as cloud, Hadoop and mobile.
      </td>
      <!-- Apache Fortress project -->
      <td style="border-width: 0; border-right: 1px solid silver; padding-right: 15px; width:50%;" valign="top">
        <div class="download-link">
          <a href="fortress/downloads.html" class="download_badge_mavibot"><b>Download Apache<br>Fortress {{< param version_fortress >}}</b></a>
        </div>
        <div class="separator">&nbsp;</div>
        Apache Fortress&trade; is a standards-based authorization system that provides attribute and role-based access control, delegated administration and password policy services using an LDAP backend.
      </td>
    </tr>
  </tbody>
</table>
