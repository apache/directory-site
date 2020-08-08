---
type: apacheds
title: Welcome to ApacheDS
slug: index
---

<div class="hero clearfix">
    <div class="left">
        <h1>ApacheDS&trade;</h1>
        <h2>LDAP and Kerberos server written in Java</h2>
        <div class="description">ApacheDS&trade; is an extensible and embeddable directory server entirely written in Java, which has been certified LDAPv3 compatible by the Open Group. Besides LDAP it supports Kerberos 5 and the Change Password Protocol. It has been designed to introduce triggers, stored procedures, queues and views to the world of LDAP which has lacked these rich constructs.</div>
        <div class="download-link">
            <a href="/apacheds/downloads.html" class="download_badge"><b>Download<br>ApacheDS {{<param version_apacheds >}}</b></a>
        </div>
    </div>
    <div class="right">
        <img src="../images/hero-apacheds.jpg" width="377" height="287" border="0"/>
    </div>
</div>

<div class="features-highlights clearfix">
    <div class="feature-highlight left">
        <img class="icon" src="../images/feature_highlight_server_ldapv3_compliant.png">
        <h3>LDAPv3 Compliant</h3>
        <div class="text">Since its initial version, ApacheDS has been certified by the Open Group which guarantees conformance of directory servers to version 3 of the LDAP protocol.</div>
    </div>
    <div class="feature-highlight right">
        <img class="icon" src="../images/feature_highlight_server_x500_authorization.png">
        <h3>Full X500 Authorization</h3>
        <div class="text">ApacheDS uses an adaptation of the X.500 basic access control scheme in combination with X.500 subentries to control access to entries and attributes within the DIT.</div>
    </div>
    <div class="separator clearfix"></div>
    <div class="feature-highlight left">
        <img class="icon" src="../images/feature_highlight_server_kerberos_server.png">
        <h3>Kerberos Server Built-in</h3>
        <div class="text">Not only is ApacheDS an LDAP server, it also supports the Kerberos protocol being a KDC (Key Distribution Center), a TGS (Ticket Granting Server) and an AS (Authentication Server).</div>
    </div>
    <div class="feature-highlight right">
        <img class="icon" src="../images/feature_highlight_server_multi_master_replication.png">
        <h3>Multi-Master Replication</h3>
        <div class="text">Multi-master replication support via RFC 4533 (Content Synchronization Operation) has been added to ApacheDS 2.0, making it also compatible with OpenLDAP.</div>
    </div>
    <div class="separator clearfix"></div>
    <div class="feature-highlight left">
        <img class="icon" src="../images/feature_highlight_server_password_policy.png">
        <h3>Password Policy Support</h3>
        <div class="text">ApacheDS supports the "Password Policy for LDAP Directories" RFC draft, allowing it to enforce a set of rules designed to encourage users to employ strong passwords and use them properly.</div>
    </div>
    <div class="feature-highlight right">
        <img class="icon" src="../images/feature_highlight_server_ldif_based_configuration.png">
        <h3>LDIF-Based Configuration</h3>
        <div class="text">The configuration of ApacheDS relies on an LDIF file, a well known format for people working around LDAP technologies, making it easier to configure the server.</div>
    </div>
    <div class="separator clearfix"></div>
    <div class="feature-highlight left">
        <img class="icon" src="../images/feature_highlight_server_written_java_embeddable.png">
        <h3>Written in Java and Embeddable</h3>
        <div class="text">ApacheDS has been written in Java, one of the best object-oriented programming languages, which makes it easy for developpers to embed in their own Java applications.</div>
    </div>
    <div class="feature-highlight right">
        <img class="icon" src="../images/feature_highlight_server_multi_platform.png">
        <h3>Multi-Platform</h3>
        <div class="text">ApacheDS is available on most operating systems (Linux, Mac OS X &amp; Windows), with dedicated installers for each platform (.deb, .bin, or .rpm packages, Windows installer, .zip and .tar.gz archives, etc).</div>
    </div>
</div>

<div class="news">
    {{< grabpage "apacheds/news.md" >}}
</div>
