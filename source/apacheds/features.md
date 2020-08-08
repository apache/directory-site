---
title: Features
---

# ApacheDS Features

The Apache Directory Server is an embeddable LDAP server implemented in pure Java. It has several features that make it unique among LDAP servers. Some of these featurea are as follows:

* Designed as an LDAP and X.500 platform; plugable components and subsystems make ApacheDS extremely modular and ideal for experiments with various aspects of the LDAP protocol.
* The server's frontend is completely separable from its backend and vice-versa making it very flexible for implementing virtual directories, proxy servers and gateways to X.500 directories.
* Several backends can be implemented and plugged into the server's partition nexus. The server supports a BTree based partition out of the box but any backing store can be used to implement a partition as long as it conforms to interfaces.
* The server exposes aspects of administration via a special system backend. LDAP can be used to manage these concerns through the system naming context at ou=system.
* The server contains a server side JNDI LDAP provider as the facade for the entire backend subsystem. JNDI operations are directly translated by this provider into operations against the nexus and the target partitions storing server entries.
* The server's networking code, MINA (Multipurpose Infrastructure for Network Applications) was designed for pluggable protocol providers, of all sorts and not just LDAP. MINA gives ApacheDS the ability to handle large amounts of concurrency.
* LDAP Stored Procedures and Triggers are scheduled for the next major version of ApacheDS.
* LDAPv3 compatible certified by the OpenGroup


# OID assignements Scheme

*OID* strings are unique numeric identifiers based off of a hierarchical numeric namespace controlled by a central authority on the Internet: **IANA** (Internet Assigned Numbers Authority).

**IANA** allows companies and organizations to register for a specific OID base called an enterprise number. There can only be one **IANA** Enterprise Number per organization.

## The ASF's Enterprise Number

**Apache** has such an enterprise number. You can look at the **IANA** assigned numbers here. Here's the record in this database for the *Apache Software Foundation*:


```text
Apache Software Foundation

18060
  The Apache Software Foundation
    Alex Karasulu
      akarasulu@apache.org
```

This means **the ASF** can use the following unique OID base _1.3.6.1.4.1.18060_ for any of it's needs. However we internal here at **the ASF** need some kind of scheme for assigning these numbers internally so we do not have collisions.


## Current Assignments

Here's what we've assigned to date:

| Branch Assignement | Assign To | Contact Person |
|:-:|:-:|:-:|
| 1.3.6.1.4.1.18060 | ASF | Alex Karasulu |
| 1.3.6.1.4.1.18060.0 | Directory | Alex Karasulu |
| 1.3.6.1.4.1.18060.1 | Geronimo | Alan Cabrera |
| 1.3.6.1.4.1.18060.2 | Apache Infrastructure | Ben Laurie |
| 1.3.6.1.4.1.18060.3 | Maven | Jason Van Zyl |
| 1.3.6.1.4.1.18060.4 | Tuscany | Luciano Resende |
| 1.3.6.1.4.1.18060.5 | Triplesec | Alex Karasulu |
| 1.3.6.1.4.1.18060.10 | Hadoop | Owen O'Malley |
| 1.3.6.1.4.1.18060.11 | Tomcat | Bernhard Unger |
| 1.3.6.1.4.1.18060.12 | HTTPd | Joe Orton |
| 1.3.6.1.4.1.18060.14 | Synapse | Hiranya Jayathilaka |
| 1.3.6.1.4.1.18060.15 | CloudStack | David Nalley |
| 1.3.6.1.4.1.18060.16 | Apache Ambari | Paul Codding |
| 1.3.6.1.4.1.18060.17 | Apache Fortress | Shawn McKinney |
| 1.3.6.1.4.1.18060.18 | Apache Guacamole | Mike Jumper |


Each contact person is the authority for assigning unique **OID** values and ranges to projects or persons. Contact that person for more assignments.


## Making Assignments

Contacts may wonder what scheme is best for making assignments. There is no rule for doing this. However some would recommend assigning the first digit past the enterprise number of an organization to be for identifying a protocol. Obviously we did not do this for **Apache**. The reason for this is because we feel it's better to model the assignments based on the structure of the organization since these are private ranges and need not conform to a global convention.

However this still does not tell us how contacts should make assignments. I think this is up to you. Perhaps a good example will be how the **Directory** TLP does things which is somewhat specific to their products and the nature of their products.


### Assignment Scheme For Apache Directory

The ninth component in the **OID** could be reserved for subprojects like **ApacheDS** and **Triplesec**. This might be more attractive in TLPs with many subprojects because a single authority or contact can be used for a specific subproject. So here could be one assignment scheme:

| Branch Assignement | Assign To |
|:-:|:-:|
| 1.3.6.1.4.1.18060.0.0 | ApacheDS |

Here's how the ApacheDS OID is branched off:


The ninth component in the **OID** could be reserved for subprojects like **ApacheDS** and **Triplesec**. This might be more attractive in TLPs with many subprojects because a single authority or contact can be used for a specific subproject. So here could be one assignment scheme:

| Branch Assignement | Assign To |
|:-:|:-:|
| 1.3.6.1.4.1.18060.0.0 | ApacheDS LDAP Controls |
| 1.3.6.1.4.1.18060.0.1 | ApacheDS LDAP Extended Operations |
| 1.3.6.1.4.1.18060.0.2 | ApacheDS LDAP Supported Features |
| 1.3.6.1.4.1.18060.0.3 | ApacheDS LDAP Protocol Mechanisms |
| 1.3.6.1.4.1.18060.0.4 | ApacheDS LDAP Attribute Values |
| 1.3.6.1.4.1.18060.0.4.X.0 | ApacheDS LDAP Schema syntaxes |
| 1.3.6.1.4.1.18060.0.4.X.1 | ApacheDS LDAP Schema matchingRules |
| 1.3.6.1.4.1.18060.0.4.X.2 | ApacheDS LDAP Schema attributeTypes |
| 1.3.6.1.4.1.18060.0.4.X.3 | ApacheDS LDAP Schema objectClasses |
| 1.3.6.1.4.1.18060.0.4.X.4 | ApacheDS LDAP Schema dITStructureRules |
| 1.3.6.1.4.1.18060.0.4.X.5 | ApacheDS LDAP Schema nameForms |


where **X** is a unique number associated with one of the specific **ApacheDS** schema.

NOTE: _dITContentRules_ do not have their own OID, rather they reference the **OID** of the structural _objectClass_ they influence. The same sort of situation exists for _matchingRuleUse_ which uses the **OID** of the _matchingRule_ it is associated with.

And here are the schema **OID**s (where the **X** is substituted by the proper number):


| Branch Assignement | Assign To |
|:-:|:-:|
| 1.3.6.1.4.1.18060.0.4.0 | ApacheDS LDAP Meta Schema |
| 1.3.6.1.4.1.18060.0.4.1 | ApacheDS LDAP Apache Schema |
| 1.3.6.1.4.1.18060.0.4.2 | ApacheDS LDAP Apache DNS Schema |
| 1.3.6.1.4.1.18060.0.4.3 | Apache Directory Documentation Examples Schema |
| 1.3.6.1.4.1.18060.0.4.4 | Quartz Schema |
| 1.3.6.1.4.1.18060.0.4.5 | Bean Schema |

(Some of those schema are long gone, but the assignement is still existing)


### OID's for ApacheDS specific controls

Here are the new **OID**s used:

| OID | Control |
|:-:|:-:|
| 1.3.6.1.4.1.18060.0.0.1 | Cascade Control |

### OID's for the extended operations

Here are the new **OID**s used:

| OID | Extended Operation |
|:-:|:-:|
| 1.3.6.1.4.1.18060.0.1.1 | LaunchDiagnosticUiRequest |
| 1.3.6.1.4.1.18060.0.1.2 | LaunchDiagnosticUiResponse |
| 1.3.6.1.4.1.18060.0.1.3 | GracefulShutdownRequest |
| 1.3.6.1.4.1.18060.0.1.4 | GracefulShutdownResponse |
| 1.3.6.1.4.1.18060.0.1.5 | GracefulDisconnect |
| 1.3.6.1.4.1.18060.0.1.6 | StoredProcedureRequest |
| 1.3.6.1.4.1.18060.0.1.7 | StoredProcedureResponse |

