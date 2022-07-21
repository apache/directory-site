---
title: News
---

# Fortress News

<h2 class="news">Apache Fortress 2.0.8 Released <em>posted on July 22nd, 2022</em></h2>

The Apache Directory Project announces the release of Fortress - 2.0.8.

Included in 2.0.8:
- Fortress Web upgrade to Apache Wicket version 9. (requires >= Java 11)
- Use latest dependencies for Spring, Log4j, Apache CXF and more
- Support Symas OpenLDAP 2.5 builds
- Update OpenLDAP and ApacheDS Docker Images
- Fix performance problem with large groups

The Release notes:

* <a href="https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12315921&version=12351048">Fortress 2.0.8 Release Notes</a>

<h2 class="news">Apache Fortress 2.0.7 Released <em>posted on Dec 12th, 2021</em></h2>

The Apache Directory Project announces the release of Fortress - 2.0.7.

The Release notes:

* <a href="https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12315921&version=12350941">Fortress 2.0.7 Release Notes</a>

<h2 class="news">Apache Fortress 2.0.6 Released <em>posted on July 15th, 2021</em></h2>

The Apache Directory Project announces the thirteenth release of Fortress - 2.0.6.

This release includes migration to Apache LDAP API 2.x, Apache Log4j2, and many other fixes and improvements.

The Release notes:

* <a href="https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12315921&version=12349361">Fortress 2.0.6 Release Notes</a>

<h2 class="news">Apache Fortress 2.0.5 Released <em>posted on May 26th, 2020</em></h2>

The Apache Directory Project announces the twelfth release of Fortress - 2.0.5.

This maintenance release contains the following bug fixes and enhancements:

 * <a href="https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12315921&version=12348279">Fortress 2.0.5 Release Notes</a>

<h2 class="news">Apache Fortress 2.0.4 Released <em>posted on December 13th, 2019</em></h2>

The Apache Directory Project announces the eleventh release of Fortress - 2.0.4.

This maintenance release contains many bug fixes and enhancements.

 * <a href="https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12315921&version=12344368">Fortress 2.0.4 JIRA Release Notes</a>

<h2 class="news">Apache Fortress 2.0.3 Released <em>posted on November 12th, 2018</em></h2>

The Apache Directory Project announces the tenth release of Fortress - 2.0.3.

This maintenance release contains two new Access Manager APIs, support of JSON and bug fixes.

The Release notes:

 * <a href="https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12315921&version=12344047">Fortress 2.0.3 JIRA Release Notes</a>

Trying Apache Fortress with ApacheDS and/or OpenLDAP Quickstarts is like having training wheels for LDAP:

 * <a href="https://github.com/apache/directory-fortress-core/blob/master/README-QUICKSTART-DOCKER-APACHEDS.md">Readme Docker ApacheDS</a>
 * <a href="https://github.com/apache/directory-fortress-core/blob/master/README-QUICKSTART-DOCKER-SLAPD.md">Readme Docker OpenLDAP</a>

<h2 class="news">Apache Fortress 2.0.2 Released <em>posted on September 12th, 2018</em></h2>

The Apache Directory Project announces the ninth release of Fortress - 2.0.2.

This maintenance release contains enhanced coverage for Attribute-Based Access Control. 

 * <a href="https://issues.apache.org/jira/browse/FC-239">[FC-239]</a> - Some additional methods to manage role constraints.

The Release notes:

 * <a href="https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12315921&version=12343768">Fortress 2.0.2 JIRA Release Notes</a>

<h2 class="news">Apache Fortress 2.0.1 Released <em>posted on July 20th, 2018</em></h2>

The Apache Directory Project announces the eighth release of Fortress - 2.0.1.

New features include

 * <a href="https://issues.apache.org/jira/browse/FC-108">[FC-108]</a> - Unix RFC2307bis posixAccount (User) and posixGroup (Role) auxiliary object classes. 
 * <a href="https://issues.apache.org/jira/browse/FC-235">[FC-235]</a> - Enforcement of arbitrary constraints during role activation with dynamic attributes like location, organization and account. 

The Release notes have the complete list of 21 fixes and enchancements: <a href="https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12315921&version=12338782">2.0.1 JIRA Release Notes</a>

<h2 class="news">Apache Fortress 2.0.0 Released <em>posted on June 26th, 2017</em></h2>

The Apache Directory Project announces the seventh release of Fortress - 2.0.0 GA.  This major release requires Java version 8.  It adds formal support of ApacheDS giving full IETF password policy coverage for both it and OpenLDAP.  There are Docker images preconfigured with Apache DS & OpenLDAP for rapid deployment and testing. 


<h2 class="news">Apache Fortress 2.0.0 Released <em>posted on June 26th, 2017</em></h2>

The Apache Directory Project announces the seventh release of Fortress - 2.0.0 GA.  This major release requires Java version 8.  It adds formal support of ApacheDS giving full IETF password policy coverage for both it and OpenLDAP.  There are Docker images preconfigured with Apache DS & OpenLDAP for rapid deployment and testing. 

Apache Fortress 2.0.0 enhancements include: 

 * Java 8 requirement 
 * Usage of Apache LDAP API v1.0.0 
 * FC-209 Missing object classes when create permission attribute and sets 
 * FC-210 Programtically determine which methods have ARBAC checks 
 * FC-211 Support ApacheDS password policies 
 * FC-212 ApacheDS in Docker 

The report pulled from JIRA: <a href="https://issues.apache.org/jira/issues/?jql=project%20%3D%20FC%20AND%20fixVersion%20%3D%202.0.0%20ORDER%20BY%20updated%20DESC%2C%20priority%20DESC%2C%20created%20ASC">2.0.0 resolved issues</a>

<h2 class="news">Apache Fortress 2.0.0-RC2 Released <em>posted on May 4th, 2017</em></h2>

The Apache Directory Project announces the sixth release of Fortress.  This is a minor release, the second release candidate for a 2.0 GA and includes a move to require Java version 8.  There are a number of other enhancements:

 * FC-201 jgrapht 1.0.0 requires Java 8
 * FC-202 dir-fortress-core-docker-test to use latest slapd install procs
 * FC-203 propmr modifiers

The complete list: <a href="https://issues.apache.org/jira/issues/?jql=project%20%3D%20FC%20AND%20fixVersion%20%3D%202.0.0-RC2%20ORDER%20BY%20updated%20DESC%2C%20priority%20DESC%2C%20created%20ASC">2.0.0-RC2 resolved issues</a>

<h2 class="news">Apache Fortress 2.0.0-RC1 Released <em>posted on November 7th, 2016</em></h2>

The Apache Directory Project announces the fifth release of Fortress.  This major revision has a couple of changes that have broken backward compatibility with 1.x:

 * FC-183 Use Apache IANA Number of OID - The LDAP schema uses the Apache Directory's IANA base number instead of the one from JoshuaTree.  Requires updating existing fortress impls to upgrade schema using latest
 * FC-194 Change password representation from a char[] to a String.  Applies to all methods using a password in the arguments.  If using the fortress-realm, ensure the tomcat instance has the latest proxy jar also.

Some other major enhancements include:

 * FC-144 - Ability to assign groups to roles
 * FC-116 - Need the ability to get user specific attributes for fine grained access determinations 
 * FC-181 - Multitenancy for Realm and Web

The complete list: <a href="https://issues.apache.org/jira/issues/?jql=project%20%3D%20FC%20AND%20fixVersion%20%3D%202.0.0-RC1%20ORDER%20BY%20updated%20DESC%2C%20priority%20DESC%2C%20created%20ASC">2.0.0-RC1 resolved issues</a>

<h2 class="news">Apache Fortress 1.0.1 Released <em>posted on July 22nd, 2016</em></h2>

The Apache Directory Project announces the fourth release of Fortress.

This maintenance release includes the following enhancements:

 * Fortress Core use of a non-static configurator 
 * Fortress Core to use the Apache LDAP API 1.0.0-RC1 
 * Fortress Rest to use Apache CXF 3.1.6 and Spring 4.3.1 
 * Fortress Web to use Apache Wicket 7.3.0 and Spring 4.3.1 

<h2 class="news">Apache Fortress 1.0.0 Released <em>posted on April 15th, 2016</em></h2>

The Apache Directory Project announces the third release of Fortress which provides role-based access control, delegated administration and password policies using LDAP servers like ApacheDS and OpenLDAP.

<h2 class="news">Apache Fortress 1.0-RC42 Released <em>posted on March 28th, 2016</em></h2>

The Apache Directory Project announces the second release of Fortress which includes the Core, Realm, Rest and Web components.

Dozens of features and bug fixes have been added since the last release.
    * [JIRA Report for fix version 1.0-RC42](https://issues.apache.org/jira/issues/?jql=fixVersion%20%3D%201.0.0-RC42%20%20AND%20project%20%3D%20FC)

This is the first time we've released other packages of Realm, Rest and Web components.  A 1.0 GA release will follow in coming weeks.

<h2 class="news">Apache Fortress Core 1.0-RC40 released ! <em>posted on April 15th, 2015</em></h2>

The Apache Directory Project is proud to announce the very first release of Fortress Core, the core library of the Fortress project.

<h2 class="news">Apache Fortress Added as a sub-project of Apache Directory <em>posted on October 25th, 2014</em></h2>

The Apache Directory Team is proud to announce the addition of the Apache Fortress project as a sub-project.

Apache Fortress provides an RBAC management and enforcement system that builds on existing open source applications like ApacheDS, OpenLDAP and Apache Tomcat.
