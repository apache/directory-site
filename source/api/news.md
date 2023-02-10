---
title: News
---

# News 

<h2 class="news">Apache Directory LDAP API 2.1.2 released <em>posted on August 16th, 2022</em></h2>

The Apache Directory Team is proud to announce the availability of version 2.1.2 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

This version is a fix, the previous version having been built with Java 11 and a wrong maven property led to a package that can't be used with Java 8. 


Downloads are available [here](downloads-2.html) and the User's Guide is [there](user-guide.html).

<h2 class="news">Apache Directory LDAP API 2.1.1 released <em>posted on August 8th, 2022</em></h2>

The Apache Directory Team is proud to announce the availability of version 2.1.1 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

This version is now using MINA 2.1.1, which comes with a complete rewrite of the TLS layer. It also fixes a list of issues:


**Improvement:**

* [DIRAPI-352]https://issues.apache.org/jira/browse/DIRAPI-352) - The Base64 implementation can be removed

**Bugs:**

* [DIRAPI-348]https://issues.apache.org/jira/browse/DIRAPI-348) - NPE when Api decodes bind response from OpenDJ server 6.0
* [DIRAPI-369]https://issues.apache.org/jira/browse/DIRAPI-369) - DSML needsBase64Encoding
* [DIRAPI-379]https://issues.apache.org/jira/browse/DIRAPI-379) - NPE on ill formed error response
* [DIRAPI-380]https://issues.apache.org/jira/browse/DIRAPI-380) - Binding using a DN which RDN is complex may fail

Downloads are available [here](downloads-2.html) and the User's Guide is [there](user-guide.html)


<h2 class="news">Apache Directory LDAP API 2.1.0 released <em>posted on June 29th, 2021</em></h2>

The Apache Directory Team is proud to announce the availability of version 2.1.0 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

This is a security enhancement release:


**Improvement:**

* [DIRAPI-373]https://issues.apache.org/jira/browse/DIRAPI-373) - Implement SASL integrity and confidentiality layer
* [DIRAPI-374]https://issues.apache.org/jira/browse/DIRAPI-374) - Consistify LdapConnectionConfig useTls and useSsl flags
* [DIRAPI-375]https://issues.apache.org/jira/browse/DIRAPI-375) - Add TLSv1.3 to default protocols
* [DIRAPI-376]https://issues.apache.org/jira/browse/DIRAPI-376) - Change getRootDse() to return all user and operational attibutes
* [DIRAPI-377]https://issues.apache.org/jira/browse/DIRAPI-377) - Add LDAP Relax Rules Control

Downloads are available [here](downloads-2.html) and the User's Guide is [there](user-guide.html)


<h2 class="news">Apache Directory LDAP API 2.0.2 released <em>posted on May 25th, 2021</em></h2>

The Apache Directory Team is proud to announce the availability of version 2.0.2 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

This is a bug fix and maintenance release:

**Bugs:**

* [DIRAPI-358](https://issues.apache.org/jira/browse/DIRAPI-358) - File Descriptor leak on connection failure with LdapConnectionTemplate
* [DIRAPI-364](https://issues.apache.org/jira/browse/DIRAPI-364) - Internal Error in response when using authRequest
* [DIRAPI-365](https://issues.apache.org/jira/browse/DIRAPI-365) - unable to use # pound hash sign in LDAP filters
* [DIRAPI-366](https://issues.apache.org/jira/browse/DIRAPI-366) - NPE for reading Root DSE with Oracle Unified Directory
* [DIRAPI-368](https://issues.apache.org/jira/browse/DIRAPI-368) - StackOverflowError when working with entries with thousands of attributes or values
* [DIRAPI-370](https://issues.apache.org/jira/browse/DIRAPI-370) - LdifReader does not preserve user provided attribute name
* [DIRAPI-371](https://issues.apache.org/jira/browse/DIRAPI-371) - Misleading Javadoc in Dn.add()

**Improvement:**

* [DIRAPI-359](https://issues.apache.org/jira/browse/DIRAPI-359) - Propagate exceptions that are caught during the response handling

**Wish:**

* [DIRAPI-372](https://issues.apache.org/jira/browse/DIRAPI-372) - Publish new Version on Maven Central to get rid of vulnerable dependency

Downloads are available [here](downloads-2.html) and the User's Guide is [there](user-guide.html)


<h2 class="news">Apache Directory LDAP API 2.0.1 released <em>posted on March 26th, 2020</em></h2>

The Apache Directory Team is proud to announce the availability of version 2.0.1 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

This is a bug fix release, which fixes some OSGi aspects and add a proper handling of the _TreeDelete_ control.

 <b>Bugs :</b>
  * [DIRAPI-354](https://issues.apache.org/jira/browse/DIRAPI-354) - java.lang.NoClassDefFoundError: org/apache/directory/api/i18n/I18n in osgi

<b>Features:</b>
  * [DIRAPI-353](https://issues.apache.org/jira/browse/DIRAPI-353) - Automatic-Module-Name need to be added to jar files


Downloads are available [here](downloads-2.html) and the User's Guide is [there](user-guide.html)

# News 
<h2 class="news">Apache Directory LDAP API 2.0.0 released <em>posted on November 13th, 2019</em></h2>

The Apache Directory Team is proud to announce the availability of version 2.0.0 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

This is the first GA version of the Apache LDAP API 2.0 ! It fixes an important bug in the connection management when unbinding and a coiuple of other issues :

 <b>Bugs :</b>

  * [DIRAPI-342](https://issues.apache.org/jira/browse/DIRAPI-342) - Unbind breaks connection
  * [DIRAPI-349](https://issues.apache.org/jira/browse/DIRAPI-349) - DN with hex values aren't parsed properly when not schema aware

<b>Improvement :</b>
  * [DIRAPI-344](https://issues.apache.org/jira/browse/DIRAPI-344) - Allow a LDIF entry loading to be accepted when the SchemaManager is in relaxed mode


Downloads are available [here](downloads-2.html) and the User's Guide is [there](user-guide.html)

# News 
<h2 class="news">Apache Directory LDAP API 2.0.0.AM4 released <em>posted on June 9th, 2019</em></h2>

The Apache Directory Team is proud to announce the availability of version 2.0.0.AM4 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.


It fixes an important race condition (when closing a session, and re-binding it immediately, there might be some cancelled operations). We also benefited from a *MINA* release (2.1.3) which fixes a 100% CPU usage in some corner case. A couple of other minor issues have also been fixed (DIRAPI-343 and DIRAPI-328).

Downloads are available [here](downloads-2.html) and the User's Guide is [there](user-guide.html)


# News 
<h2 class="news">Apache Directory LDAP API 2.0.0.AM3 released <em>posted on May 15th, 2019</em></h2>

The Apache Directory Team is proud to announce the availability of version 2.0.0.AM3 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

It contains many fixes (37) and is needed to be able to release ApacheDS and Studio, which contains many important fixes themselves. There are some remaining issues to be fixed, but at this point, we need a release since the last one was cut 8 months ago...

Here is the list of fixed issues:

<b>Bugs :</b>

  * [DIRAPI-109](https://issues.apache.org/jira/browse/DIRAPI-109) - Attribute values should be byte[]
  * [DIRAPI-117](https://issues.apache.org/jira/browse/DIRAPI-117) - Refactor schema packages to decouple various aspects
  * [DIRAPI-162](https://issues.apache.org/jira/browse/DIRAPI-162) - The CachingNormalizer class does not cache anything
  * [DIRAPI-239](https://issues.apache.org/jira/browse/DIRAPI-239) - Client API exposes implementation classes of common-pools
  * [DIRAPI-271](https://issues.apache.org/jira/browse/DIRAPI-271) - Multi-valued RDN should allow AVAs with same attribute
  * [DIRAPI-300](https://issues.apache.org/jira/browse/DIRAPI-300) - Weird batchResponse when batchRequest contains grammar error
  * [DIRAPI-301](https://issues.apache.org/jira/browse/DIRAPI-301) - Ldaps connection trusts all certificates
  * [DIRAPI-302](https://issues.apache.org/jira/browse/DIRAPI-302) - DefaultAttribute NPE
  * [DIRAPI-303](https://issues.apache.org/jira/browse/DIRAPI-303) - If and else-if branches has the same condition
  * [DIRAPI-305](https://issues.apache.org/jira/browse/DIRAPI-305) - The SyncInfoValue element is not a control
  * [DIRAPI-309](https://issues.apache.org/jira/browse/DIRAPI-309) - NoD extended operation is not properly implemented
  * [DIRAPI-314](https://issues.apache.org/jira/browse/DIRAPI-314) - StartTLS operation is not correctly handled
  * [DIRAPI-317](https://issues.apache.org/jira/browse/DIRAPI-317) - Non thread-safe tests could lead to errors while running them
  * [DIRAPI-321](https://issues.apache.org/jira/browse/DIRAPI-321) - The ExtendedResponse message does not carry any value when sent back
  * [DIRAPI-323](https://issues.apache.org/jira/browse/DIRAPI-323) - Decoding extended operations which require a value isn't enforcing the value to be present
  * [DIRAPI-326](https://issues.apache.org/jira/browse/DIRAPI-326) - Schema Import - ERR_13215_VALUE_EXPECT_STRING
  * [DIRAPI-332](https://issues.apache.org/jira/browse/DIRAPI-332) - Add missing hashcode method for Schema objects    
  * [DIRAPI-336](https://issues.apache.org/jira/browse/DIRAPI-336) - GeneralizedTime issue with timezone when DST is applied    


<b>Improvements:</b>

  * [DIRAPI-99](https://issues.apache.org/jira/browse/DIRAPI-99) - Build CLI wrapper around the API
  * [DIRAPI-276](https://issues.apache.org/jira/browse/DIRAPI-276) - RDN normalization is under efficient
  * [DIRAPI-277](https://issues.apache.org/jira/browse/DIRAPI-277) - Update commons pool implementation  Unassigned  Resolved    
  * [DIRAPI-310](https://issues.apache.org/jira/browse/DIRAPI-310) - We most certainly don't need a Queue in operation futures
  * [DIRAPI-311](https://issues.apache.org/jira/browse/DIRAPI-311) - Add RFC 5805 extended operation support    
  * [DIRAPI-312](https://issues.apache.org/jira/browse/DIRAPI-312) - Add an explaination after the log error and message numbers
  * [DIRAPI-315](https://issues.apache.org/jira/browse/DIRAPI-315) - Create a faster Schema parser
  * [DIRAPI-322](https://issues.apache.org/jira/browse/DIRAPI-322) - Use a TLS buffer to encode requests and responses
  * [DIRAPI-325](https://issues.apache.org/jira/browse/DIRAPI-325) - The Asn1Decoder class is not stateless
  * [DIRAPI-330](https://issues.apache.org/jira/browse/DIRAPI-330) - Improve TLS handshake error handling
  * [DIRAPI-331](https://issues.apache.org/jira/browse/DIRAPI-331) - Remove the Decorators
  * [DIRAPI-338](https://issues.apache.org/jira/browse/DIRAPI-338) - Implement RFC 4525
  * [DIRAPI-340](https://issues.apache.org/jira/browse/DIRAPI-340) - uniqueMemberComparator does not compare DN properly


<b>Features:</b>

  * [DIRAPI-306](https://issues.apache.org/jira/browse/DIRAPI-306) - Add a Control[] parameter in operations, like what we have for lookup()


<b>Tasks:</b>

  * [DIRAPI-74](https://issues.apache.org/jira/browse/DIRAPI-74) - Complete the API documentation
  * [DIRAPI-304](https://issues.apache.org/jira/browse/DIRAPI-304) - Add support for the Microsoft AD extended control Policy Hints (1.2.840.113556.1.4.2239)

<b>Dependency updates:</b>

  * [DIRAPI-313](https://issues.apache.org/jira/browse/DIRAPI-313) - SCM Pointing to SVN instead of GitBox
  * [DIRAPI-324](https://issues.apache.org/jira/browse/DIRAPI-324) - commons-lang and commons-collections need to be updated to most recent versions
  * [DIRAPI-333](https://issues.apache.org/jira/browse/DIRAPI-333) - Switch to Junit 5

Downloads are available [here](downloads-2.html) and the User's Guide is [there](user-guide.html)

# News 
<h2 class="news">Apache Directory LDAP API 1.0.3 released <em>posted on April 19th, 2019</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.3 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

This is a bug fix release that fixes an issue when using _MINA 2.1.1_ version: a _SSL/TLS_ connection would stall because we were waiting on an event that _MINA 2.1.1_ would never produced.

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

# News 
<h2 class="news">Apache Directory LDAP API 2.0.0.AM2 released <em>posted on September 3rd, 2018</em></h2>

The Apache Directory Team is proud to announce the availability of version 2.0.0.AM2 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

This is a bug fix release that address a performance issue with the schema: All the SchemaObjects had their hashcode set to 0, which made it
slow to fetch from a Map or a Set. That impacted Studio startup, making it slow when a user has several connections.

A couple of other issues have also been fixed.

Here are the associated JIRA tickets :

  * [DIRAPI-318](https://issues.apache.org/jira/browse/DIRAPI-318) - Schema elements HashCode are not computed at all
  * [DIRAPI-319](https://issues.apache.org/jira/browse/DIRAPI-319) - The RestrictedByItem class stores elements in a Set, expecting it to be ordered.
  * [DIRAPI-291](https://issues.apache.org/jira/browse/DIRAPI-291) - The Immutable schema object can't be used

Downloads are available [here](downloads-2.html) and the User's Guide is [there](user-guide.html)

# CVE-2018-1337: Plaintext Password Disclosure in Secured Channel

The Apache LDAP API 1.0.2 that has just been released fix a [critical security issue](https://cve.mitre.org/cgi-bin/cvename.cgi?name=2018-1337): A bug in the way the SSL Filter was setup made it possible for another thread to use the connection before the TLS layer has been established, if the connection has already been used and put back in a pool of connections, leading to leaking any information contained in this request (including the credentials when sending a BIND request)


We urge you to switch to this version.

Downloads are available [here](downloads-1.html)


# News
<h2 class="news">Apache Directory LDAP API 1.0.2 released <em>posted on June 6st, 2018</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.2 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Two security issues has been fixed :

* A LDAPS race condition, where some clear text message could be sent over the wire, when using a connection pool

This is a critical issue, and we urge you to upgrade to **Apache LDAP API 1.0.2** if you were using a previous version.

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)


<h2 class="news">Apache Directory LDAP API 1.0.1 released <em>posted on May 19th, 2018</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.1 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Two security issues has been fixed :

* A LDAPS race condition, where some clear text message could be sent over the wire, when using a connection pool
* A StartTLS issue, where the establishmenent of the secured channel can't be made, and the connection is dropped

Those are two critical issues, and we urge you to upgrade to **Apache LDAP API 1.0.1** if you were using a previous version.

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)


<h2 class="news">Apache Directory LDAP API 1.0.0 released <em>posted on June 7th, 2017</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0 final of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

One critical issue has been fixed :

<b>Bug :</b>

  * [DIRAPI-227](https://issues.apache.org/jira/browse/DIRAPI-227) - Bind user dn and password sent in clear after receiving PROTOCOL_ERROR during ldaps connection

Some fixes have also been applied in the syntex-checkers, which are now immutable. 

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)


<h2 class="news">Apache Directory LDAP API 1.0.0-RC2 released <em>posted on November 2nd, 2016</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-RC2 of the Apache Directory LDAP API, the second release candidate before the GA.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here is the list of fixed issues :

<b>Bugs :</b>

  * [DIRAPI-285](https://issues.apache.org/jira/browse/DIRAPI-285) - ModifyPassword extended operation incorrectly expects value in ModifyResponse 
  * [DIRAPI-284](https://issues.apache.org/jira/browse/DIRAPI-284) - DateUtils throws an exception for certain timestamps
  * [DIRAPI-279](https://issues.apache.org/jira/browse/DIRAPI-279) - We are using hashcode over a set in some tests, this is not reliable
  * [DIRAPI-154](https://issues.apache.org/jira/browse/DIRAPI-154) - Implement "online" OpenLDAP schema parsing in DefaultSchemaLoader

<b>Improvements :</b>

  * [DIRAPI-283](https://issues.apache.org/jira/browse/DIRAPI-283) - We don't need to parse the DN when storing a name in the LDAP requests
  * [DIRAPI-207](https://issues.apache.org/jira/browse/DIRAPI-207) - Expose the underlying socket config


Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

<h2 class="news">Apache Directory LDAP API 1.0.0-RC1 released <em>posted on June 17th, 2016</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-RC1 of the Apache Directory LDAP API, the first release candidate before the GA.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here is the list of fixed issues and added features :

<b>Bugs :</b>

  * [DIRAPI-243](https://issues.apache.org/jira/browse/DIRAPI-243) - Cannot get AttributeType from Attribute
  * [DIRAPI-244](https://issues.apache.org/jira/browse/DIRAPI-244) - Error in loading schema
  * [DIRAPI-249](https://issues.apache.org/jira/browse/DIRAPI-249) - Performance issue LDAP API 1.0.0-M31
  * [DIRAPI-265](https://issues.apache.org/jira/browse/DIRAPI-265) - Deserialized Dn loses bytes field resulting in null dn, treated as Root DSE when encoded in ModifyRequests
  * [DIRAPI-266](https://issues.apache.org/jira/browse/DIRAPI-266) - ResultCodeEnum 'NO_SUCH_OBJECT' should have message 'noSuchObject'
  * [DIRAPI-273](https://issues.apache.org/jira/browse/DIRAPI-273) - api-ldap-net-mina bundle remains in STARTING mode
  * [DIRAPI-274](https://issues.apache.org/jira/browse/DIRAPI-274) - The AttributeTypeHolder.toLdif method does not convert the m-usage Attribute correctly
  * [DIRAPI-275](https://issues.apache.org/jira/browse/DIRAPI-275) - Many AttributeType are defined with the wrong m-usage
  * [DIRAPI-280](https://issues.apache.org/jira/browse/DIRAPI-280) - The LdapNetworkConnection.getTimeout() method is wrong
  * [DIRAPI-245](https://issues.apache.org/jira/browse/DIRAPI-245) - LdifUtils.convertToLdif(LdifEntry, int) does not honor the 'length' parameter fully
  * [DIRAPI-258](https://issues.apache.org/jira/browse/DIRAPI-258) - Add support for the Microsoft LDAP server show deleted objects control
  * [DIRAPI-260](https://issues.apache.org/jira/browse/DIRAPI-260) - OID can't process nodes which are bigger than a long
  * [DIRAPI-261](https://issues.apache.org/jira/browse/DIRAPI-261) - OID don't encode correctly joint-iso-itu-t arcs
  * [DIRAPI-262](https://issues.apache.org/jira/browse/DIRAPI-262) - misleading message "The matched Dn should not be set when the result code is one of..."

<b>Improvements :</b>

  * [DIRAPI-282](https://issues.apache.org/jira/browse/DIRAPI-282) - Detection of timeout in cursor.next()


<b>New Features :</b>

  * [DIRAPI-269](https://issues.apache.org/jira/browse/DIRAPI-269) - Add support for modular crypt format password


<b>Tasks :</b>

  * [DIRAPI-270](https://issues.apache.org/jira/browse/DIRAPI-270) - Remove the dependency on commons.io

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

<h2 class="news">Apache Directory LDAP API 1.0.0-M33 released <em>posted on December 21th, 2015</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M33 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

A bug fix releases. We have an improved version of the Ldif anonymizer that handles Change records, and a few other fixes (OID handling...)


Here is the list of fixed issues and added features :

<b>Bugs :</b>

  * [DIRAPI-245](https://issues.apache.org/jira/browse/DIRAPI-245) - LdifUtils.convertToLdif(LdifEntry, int) does not honor the 'length' parameter fully
  * [DIRAPI-258](https://issues.apache.org/jira/browse/DIRAPI-258) - Add support for the Microsoft LDAP server show deleted objects control
  * [DIRAPI-260](https://issues.apache.org/jira/browse/DIRAPI-260) - OID can't process nodes which are bigger than a long
  * [DIRAPI-261](https://issues.apache.org/jira/browse/DIRAPI-261) - OID don't encode correctly joint-iso-itu-t arcs
  * [DIRAPI-262](https://issues.apache.org/jira/browse/DIRAPI-262) - misleading message "The matched Dn should not be set when the result code is one of..."

<b>Task :</b>

  * [DIRAPI-257](https://issues.apache.org/jira/browse/DIRAPI-257) - Fix usage of default charset|locale|timezone and enable forbiddenapis check

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

<h2 class="news">Apache Directory LDAP API 1.0.0-M32 released <em>posted on October 19th, 2015</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M32 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Another bug fix release, with some huge modifications in the way we handle Values. The SchemaManager is now propagated down to the Ava and Value classes, which causes many tests to have been fixed.

We have added a LdifAnonymizer that can swallow a Ldif File and replace the values with a random text.

We also have spent some time fixing many checkstyle violations.

Here is the list of fixed issues and added features :

<b>Bugs :</b>

  * [DIRAPI-90](https://issues.apache.org/jira/browse/DIRAPI-90) - IllegalArgumentException: factory thrown when creating LdapNetworkConnection inside OSGi
  * [DIRAPI-114](https://issues.apache.org/jira/browse/DIRAPI-114) - Reconsider interfaces and base classes for Registries
  * [DIRAPI-118](https://issues.apache.org/jira/browse/DIRAPI-118) - Use JUnit TemporaryFolder Rule
  * [DIRAPI-219](https://issues.apache.org/jira/browse/DIRAPI-219) - DateUtils.toGeneralizedTime does not work with some Locales
  * [DIRAPI-241](https://issues.apache.org/jira/browse/DIRAPI-241) - new GeneralizedTime(String) fails for fraction close to one
  * [DIRAPI-246](https://issues.apache.org/jira/browse/DIRAPI-246) - Error in parsing LDIF file
  * [DIRAPI-252](https://issues.apache.org/jira/browse/DIRAPI-252) - Compiling warnings while api-all is in dependencies
  * [DIRAPI-253](https://issues.apache.org/jira/browse/DIRAPI-253) - The AVA class is not handling correctly the values wrt the SchemaManager
  * [DIRAPI-254](https://issues.apache.org/jira/browse/DIRAPI-254) - Value<?> don't have a apply(AttributeType) method
  * [DIRAPI-255](https://issues.apache.org/jira/browse/DIRAPI-255) - An escaped space at the end of a RDN will not be kept due to a bug in the ComplexDNParser

<b>Task :</b>

  * [DIRAPI-251](https://issues.apache.org/jira/browse/DIRAPI-251) - Fix violations of coding standards and enable checkstyle check

<b>New Feature :</b>

  * [DIRAPI-250](https://issues.apache.org/jira/browse/DIRAPI-250) - Add a way to Anonymize a LDIF file

<b>Question :</b>

  * [DIRAPI-191](https://issues.apache.org/jira/browse/DIRAPI-191) - How to get attributes list according to objectClass


Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

# News
<h2 class="news">Apache Directory LDAP API 1.0.0-M31 released <em>posted on July 5th, 2015</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M31 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

This release fixes a security vulnerability, [CVE-2015-3250](https://cve.mitre.org/cgi-bin/cvename.cgi?name=2015-3250).

Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

# News
<h2 class="news">Apache Directory LDAP API 1.0.0-M30 released <em>posted on May 2nd, 2015</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M30 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Another bug fix release, with some critical fixes in the connection handling, and some schema modifications.

Here is the list of fixed issues :

 <b>Bugs :</b>

  * [DIRAPI-236](https://issues.apache.org/jira/browse/DIRAPI-236) - Unbind during search hangs
  * [DIRAPI-234](https://issues.apache.org/jira/browse/DIRAPI-234) - ClassLoading issues with two classes in different packages
  * [DIRAPI-231](https://issues.apache.org/jira/browse/DIRAPI-231) - Wrong namespace in generated response
  * [DIRAPI-230](https://issues.apache.org/jira/browse/DIRAPI-230) - Connection to invalid host blocks for 30 seconds
  * [DIRAPI-229](https://issues.apache.org/jira/browse/DIRAPI-229) - The LdifParser lowrcase attributeType
  * [DIRAPI-196](https://issues.apache.org/jira/browse/DIRAPI-196) - Always throw error  ERR_04486_VALUE_ALREADY_EXISTS from org.apache.directory.api.ldap.model.entry.DefaultAttribute against AD's attribute dSCorePropagationData when do search operation.


<b>Improvements :</b>

  * [DIRAPI-233](https://issues.apache.org/jira/browse/DIRAPI-233) - OSGi: Import package range for slf4j


<b>Tasks :</b>

  * [DIRAPI-235](https://issues.apache.org/jira/browse/DIRAPI-235) - Wrong attributeType names

Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

# News
<h2 class="news">Apache Directory LDAP API 1.0.0-M29 released <em>posted on April 2nd, 2015</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M29 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Another bug fix release, with a few new fonctionalities being added :
- a LDIF anonymizer
- VLV support

Here is the list of fixed issues :


 <b>Bugs :</b>

  * [DIRAPI-100](https://issues.apache.org/jira/browse/DIRAPI-100)  Implement the GSSAPI SASL Bind mechanism 
  * [DIRAPI-107](https://issues.apache.org/jira/browse/DIRAPI-107)  LdifReader missing attributes 
  * [DIRAPI-219](https://issues.apache.org/jira/browse/DIRAPI-219)  DateUtils.toGeneralizedTime does not work with some Locales 
  * [DIRAPI-220](https://issues.apache.org/jira/browse/DIRAPI-220)  The FilterEncoder.encodeFilterValue() does not accept escaped hex values like \2A 
  * [DIRAPI-223](https://issues.apache.org/jira/browse/DIRAPI-223)  The SchemaObject extension key should be case-insensitive 
  * [DIRAPI-226](https://issues.apache.org/jira/browse/DIRAPI-226)  Injecting non pure ASCII values into a HR attribute read from a LDIF does not work 

<b>Improvements :</b>

  * [DIRAPI46](https://issues.apache.org/jira/browse/DIRAPI-46)   Add a generic schema loader which looks for schema elements under the value of the 'subschemaSubentry' of the RootDSE 
  * [DIRAPI-225](https://issues.apache.org/jira/browse/DIRAPI-225)  Add a LDIF anonymizer that takes a LDIF file and replace the value with random text 


<b>New features :</b>

  * [DIRAPI-165](https://issues.apache.org/jira/browse/DIRAPI-165)  Add a FilterBuillder 
  * [DIRAPI-224](https://issues.apache.org/jira/browse/DIRAPI-224)  Add support for the VLV control 


Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

# News
<h2 class="news">Apache Directory LDAP API 1.0.0-M28 released <em>posted on January 15th, 2015</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M28 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

This release fixes some critical issues in the LDAP Pool under heavy load, and improved a few other areas.


<b>Bugs : </b>

  * [DIRAPI-217](https://issues.apache.org/jira/browse/DIRAPI-217) Under heavy load, the Connection Pool will not provide valid connections 
  * [DIRAPI-174](https://issues.apache.org/jira/browse/DIRAPI-193) There is no future associated with operation message ID 333, perhaps the operation would have been completed 
  * [DIRAPI-184](https://issues.apache.org/jira/browse/DIRAPI-155) Chain ANTLR exceptions to ParserException 

Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

# News
<h2 class="news">Apache Directory LDAP API 1.0.0-M27 released <em>posted on December 29th, 2014</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M27 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

This release included a new Control : *proxied-authz* [RFC-4370](https://www.rfc-editor.org/rfc/rfc4370.txt), and a major cleanup of the OSGi Manifests. 

Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

# News
<h2 class="news">Apache Directory LDAP API 1.0.0-M26 released <em>posted on November 22th, 2014</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M26 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

This release is a security fix release : SSLv3 has been disabled. Another bug has also been fixed in the POM files, for those using the API in an OSGi environment

<b>Bugs : </b>


Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

# News
<h2 class="news">Apache Directory LDAP API 1.0.0-M25 released <em>posted on November 11th, 2014</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M25 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here are the release note for Apache Directory LDAP API 1.0.0-M25:

<b>Bugs : </b>

  * [DIRAPI-137](https://issues.apache.org/jira/browse/DIRAPI-137) Add Control support for  RFC 2891 - LDAP Control Extension for Server Side Sorting of Search Results http://www.faqs.org/rfcs/rfc2891.html
  * [DIRAPI-174](https://issues.apache.org/jira/browse/DIRAPI-174) LdifReader should provide errors wih line number
  * [DIRAPI-184](https://issues.apache.org/jira/browse/DIRAPI-184) Supply one method in SearchCursor to judge it has element or not.
  * [DIRAPI-201](https://issues.apache.org/jira/browse/DIRAPI-201) Inconsistent Import-Package in org.apache.directory.api ldap.model
  * [DIRAPI-205](https://issues.apache.org/jira/browse/DIRAPI-205) AliasDerefMode can't work for API when alias entries can be search out and Server is Sun Directory Server
  * [DIRAPI-206](https://issues.apache.org/jira/browse/DIRAPI-206) BindRequest logs exception on valid call to setter
  * [DIRAPI-208](https://issues.apache.org/jira/browse/DIRAPI-208) The Connection Pool is a bit too aggressive when it comes to validate connections

Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

# News
<h2 class="news">Apache Directory LDAP API 1.0.0-M24 released <em>posted on August 2th, 2014</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M24 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here are the release note for Apache Directory LDAP API 1.0.0-M24:

<b>Bugs : </b>

  * [DIRAPI-197](https://issues.apache.org/jira/browse/DIRAPI-197) - When dumping a BindRequest, the password is exposed
  * [DIRAPI-198](https://issues.apache.org/jira/browse/DIRAPI-198) - LdapConnectionTemplate closes connection after authentication rather than returning to the pool
  * [DIRAPI-199](https://issues.apache.org/jira/browse/DIRAPI-199) - LdapConnectionPool.getUnboundConnection is an oxymoron
  

Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

# News
<h2 class="news">Apache Directory LDAP API 1.0.0-M23 released <em>posted on July 4th, 2014</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M23 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here are the release note for Apache Directory LDAP API 1.0.0-M23:

<b>Bugs : </b>

  * [DIRAPI-190](https://issues.apache.org/jira/browse/DIRAPI-190) - Search request time limit should override connection timeout
  * [DIRAPI-192](https://issues.apache.org/jira/browse/DIRAPI-192) - Rdn.escapeValue() should not escape unicode characters

<b>Improvements :</b>

  * [DIRAPI-168](https://issues.apache.org/jira/browse/DIRAPI-168) - Create an LdapConnectionFactory that is not pooled to create LdapConnection objects for an LdapConnectionConfig


Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

# News
<h2 class="news">Apache Directory LDAP API 1.0.0-M22 released <em>posted on April 22th, 2014</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M22 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here are the release note for Apache Directory LDAP API 1.0.0-M22:

<b>Bugs : </b>

  * [DIRAPI-156](https://issues.apache.org/jira/browse/DIRAPI-156) - LdapNetworkConnection.addSchema doesn't register attribute types
  * [DIRAPI-186](https://issues.apache.org/jira/browse/DIRAPI-186) - Inconsistent code definition in ResultCodeEnum.
  * [DIRAPI-188](https://issues.apache.org/jira/browse/DIRAPI-188) - Length encoding is not using the correct method in some of the codecs

<b>Improvements :</b>

  * [DIRAPI-181](https://issues.apache.org/jira/browse/DIRAPI-181) - Add the StartTLS extended operation
  * [DIRAPI-187](https://issues.apache.org/jira/browse/DIRAPI-187) - Make the Entry class a fluent API

<b>New Feature : </b>

  * [DIRAPI-164](https://issues.apache.org/jira/browse/DIRAPI-164) - Add fluent entry builder to AddRequest
  * [DIRAPI-183](https://issues.apache.org/jira/browse/DIRAPI-183) - Add support for the WhoAmI extended operation

<b>Wish : </b>

  * [DIRAPI-189](https://issues.apache.org/jira/browse/DIRAPI-189) - Support DirSync control


Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

<h2 class="news">Apache Directory LDAP API 1.0.0-M21 released <em>posted on March 13th, 2014</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M21 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here are the release note for Apache Directory LDAP API 1.0.0-M21:

<b>Bugs : </b>

  * [DIRAPI-126](https://issues.apache.org/jira/browse/DIRAPI-126) - Timeout Exception on bind while pwdExpireWarning period
  * [DIRAPI-128](https://issues.apache.org/jira/browse/DIRAPI-128) - FilterEncoder.format() should accept String varargs
  * [DIRAPI-152](https://issues.apache.org/jira/browse/DIRAPI-152) - Attribute.toString() method appends newline
  * [DIRAPI-157](https://issues.apache.org/jira/browse/DIRAPI-157) - Calling the add() method with a multi-value attribute and a null value throws an NPE
  * [DIRAPI-160](https://issues.apache.org/jira/browse/DIRAPI-160) - DSML engine is not setting the 'requestID' value in BatchResponse when output stream instance is provided
  * [DIRAPI-161](https://issues.apache.org/jira/browse/DIRAPI-161) - Timeout does not apply to connect method
  * [DIRAPI-173](https://issues.apache.org/jira/browse/DIRAPI-173) - When using TLS and multiple binds, LdapNetworkConnection attempts to start TLS multiple times
  * [DIRAPI-176](https://issues.apache.org/jira/browse/DIRAPI-176) - LDIFReader does not accept empty DN (rootDSE)


<b>Improvements :</b>

  * [DIRAPI-137](https://issues.apache.org/jira/browse/DIRAPI-137) - Add Control support for RFC 2891 - LDAP Control Extension for Server Side Sorting of Search Results http://www.faqs.org/rfcs/rfc2891.html
  * [DIRAPI-153](https://issues.apache.org/jira/browse/DIRAPI-153) - Implement efficient reuse of schema loading
  * [DIRAPI-159](https://issues.apache.org/jira/browse/DIRAPI-159) - Add a method to set a SchemaManager in LdapConnection
  * [DIRAPI-169](https://issues.apache.org/jira/browse/DIRAPI-169) - Formalize the contract of PasswordPolicyResponse by stating that -1 is returned if no value is set.
  * [DIRAPI-170](https://issues.apache.org/jira/browse/DIRAPI-170) - Allow StandaloneLdapApiServices to be configured without system properties
  * [DIRAPI-175](https://issues.apache.org/jira/browse/DIRAPI-175) - LdifReader should handle empty

<b>New Feature</b>

  * [DIRAPI-143](https://issues.apache.org/jira/browse/DIRAPI-143) - Add Controls to support server-side sorting
  
Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)


<h2 class="news">Apache Directory LDAP API 1.0.0-M20 released <em>posted on August 18th, 2013</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M20 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here are the release note for Apache Directory LDAP API 1.0.0-M20:

<b>Bugs</b>

  * [DIRAPI-14](https://issues.apache.org/jira/browse/DIRAPI-14) - We can't inject entries with attributes containing a null value
  * [DIRAPI-98](https://issues.apache.org/jira/browse/DIRAPI-98) - Add generic support for Extended operations
  * [DIRAPI-120](https://issues.apache.org/jira/browse/DIRAPI-120) - Deleted an attribute leads to an error
  * [DIRAPI-148](https://issues.apache.org/jira/browse/DIRAPI-148) - We can't inject entries with attributes containing a null value
  * [DIRAPI-151](https://issues.apache.org/jira/browse/DIRAPI-151) - Result codes from extended operations are lost


<b>New Feature</b>

  * [DIRAPI-129](https://issues.apache.org/jira/browse/DIRAPI-129) - Add support for PwdModify extended operation

Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)


<h2 class="news">Apache Directory LDAP API 1.0.0-M19 released <em>posted on July 1st, 2013</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M19 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here are the release note for Apache Directory LDAP API 1.0.0-M19:

  * [DIRAPI-148](https://issues.apache.org/jira/browse/DIRAPI-148) We can't inject entries with attributes containing a null value
  
Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

<h2 class="news">Apache Directory LDAP API 1.0.0-M18 released <em>posted on June 25th, 2013</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M18 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here are the release note for Apache Directory LDAP API 1.0.0-M18:

  * [DIRAPI-112](https://issues.apache.org/jira/browse/DIRAPI-112) - Review Package Names
  * [DIRAPI-130](https://issues.apache.org/jira/browse/DIRAPI-130) - The extended responses are not decoded into their respective type
  * [DIRAPI-132](https://issues.apache.org/jira/browse/DIRAPI-132) - Add support for the StartTLS operation
  * [DIRAPI-133](https://issues.apache.org/jira/browse/DIRAPI-133) - Correlate an extendedResponse with its associated request, when we don't have a responseName
  * [DIRAPI-139](https://issues.apache.org/jira/browse/DIRAPI-139) - o.a.d.api.ldap.codec.api.LdapEncoder should log encoded PDU via DEBUG
  * [DIRAPI-140](https://issues.apache.org/jira/browse/DIRAPI-140) - Test ClientSearchRequestTest.testSubDn() fails
  * [DIRAPI-147](https://issues.apache.org/jira/browse/DIRAPI-147) - LdifEntry equals method does not compare entry attributes when changetype is None  


Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

<h2 class="news">Apache Directory LDAP API 1.0.0-M17 released <em>posted on May 2nd, 2013</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M17 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here are the release note for Apache Directory LDAP API 1.0.0-M17:

  * [DIRAPI-135](https://issues.apache.org/jira/browse/DIRAPI-135) - The connectiosn may be invalid when we get it from the pool
  * [DIRAPI-103](https://issues.apache.org/jira/browse/DIRAPI-103) - the PLAIN SASL BindRequest is not supported
  

Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

<h2 class="news">Apache Directory LDAP API 1.0.0-M16 released <em>posted on March 3rd, 2013</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M16 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here are the release note for Apache Directory LDAP API 1.0.0-M16:

* [DIRAPI-119](https://issues.apache.org/jira/browse/DIRAPI-119) - Some NPE when sending some request with lacking data


Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)

<h2 class="news">Apache Directory LDAP API 1.0.0-M15 released <em>posted on January 29th, 2013</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M15 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here are the release note for Apache Directory LDAP API 1.0.0-M15:

* [DIRAPI-112](https://issues.apache.org/jira/browse/DIRAPI-112) - Review Package Names

Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)


<h2 class="news">Apache Directory LDAP API 1.0.0-M14 released <em>posted on January 7th, 2013</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M15 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here are the release note for Apache Directory LDAP API 1.0.0-M14:

* [DIRAPI-89](https://issues.apache.org/jira/browse/DIRAPI-89) - EntryCursorImpl loops forever in next() when using AD Server with referrals
* [DIRAPI-92](https://issues.apache.org/jira/browse/DIRAPI-92) - LdapConnectionPool should extend GenericObjectPool<LdapConnection>
* [DIRAPI-94](https://issues.apache.org/jira/browse/DIRAPI-94) - Random failure of ClientAbandonRequestTest

**WARNING:** An important **package renaming** took place in this milestone. The previously named "**_org.apache.directory.shared_**" package has been renamed "**_org.apache.directory.api_**". If you were using the Apache Directory LDAP API before, please **make sure to update your own code** to match this important change.

Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)


<h2 class="news">Apache Directory LDAP API 1.0.0-M13 released <em>posted on October 12th, 2012</em></h2>

The Apache Directory Team is proud to announce the availability of version 1.0.0-M13 of the Apache Directory LDAP API.

The Apache Directory LDAP API is an ongoing effort to provide an enhanced LDAP API, as a replacement for JNDI and the existing LDAP API (jLdap and Mozilla LDAP API).

This is a schema aware API, with some convenient ways to access a LDAP server. This API is not only targeting the Apache Directory Server, but should work pristine with any LDAP server.

It's also an extensible API : new Controls, schema elements and network layer could be added or used in the near future. It's also OSGi capable.

Here are the release note for Apache Directory LDAP API 1.0.0-M13:

* [DIRAPI-87](https://issues.apache.org/jira/browse/DIRAPI-87) - The search() method does not return the same result if it's done with a SearchRequest or with parameters
* [DIRAPI-88](https://issues.apache.org/jira/browse/DIRAPI-88) - RDN parsing fails with values containing a # character followed by other characters
* [DIRAPI-135](https://issues.apache.org/jira/browse/DIRAPI-135) - LdapNetworkConnection should be thread-safe
* [DIRAPI-136](https://issues.apache.org/jira/browse/DIRAPI-136) - NPE in AntlrSubtreeSpecificationParser when initialized with an empty schema manager
* [DIRAPI-137](https://issues.apache.org/jira/browse/DIRAPI-137) - Logically incorrect filter construction while parsing DSML search request
* [DIRAPI-138](https://issues.apache.org/jira/browse/DIRAPI-138) - Cannot transform SearchRequestDsml object to DSML format

Feel free to experiment, we highly appreciate your feedback !

Downloads are available [here](downloads-1.html) and the User's Guide is [there](user-guide.html)
