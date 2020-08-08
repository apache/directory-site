---
title: 8 - Operational Attributes
navPrev: 7-embedding-apacheds.html
navPrevText: 7 - Embedding ApacheDS in Java
navUp: ../advanced-user-guide.html
navUpText: Advanced User Guide
---

# 8 - Operational Attributes

Operational attributes are attributes that are used internally by the server. They generally can't be modified by a user, although one can read them.

In order to retrieve an operational attribute, you have to require it explicitely, or request all of them using the special attribute '+'.

[RFC 4512](https://tools.ietf.org/html/rfc4512) defines four different flavors of **AttributeType** :

* userApplications : User's attributes
* directoryOperation : Server's attributes
* dSAOperation : Server's attributes that have no meant in being distributed
* distributedOperation : Server's attribute that are used in a distributed environment


ApacheDS support a list of standard LDAP operational attributes, plus a few that are specific. Here are the supported operational attributes.

## Global operational attributes

Those operational attributes are stored in the **RootDSE**, and global to the server. They can't be modified by a user.

| Attribute name | Type | Category | Description |
|---|---|---|---|
| vendorName | DSA OPERATION | Standard  | RFC3045: name of implementation vendor |
| vendorVersion | DSA OPERATION | Standard  | RFC3045: version of implementation |
| entryTtl | DSA OPERATION | Standard  | RFC2589: entry time-to-live |
| dynamicSubtrees | DSA OPERATION | Standard  | RFC2589: dynamic subtrees |
| supportedFeatures | DSA OPERATION | Standard  | RFC3674: features supported by the server |
| supportedControl | DSA OPERATION | Standard  | RFC2252: supported controls |
| supportedSASLMechanisms | DSA OPERATION | Standard  | RFC2252: supported SASL mechanisms |
| supportedLDAPVersion | DSA OPERATION | Standard  | RFC2252: supported LDAP versions |
| namingContexts | DSA OPERATION | Standard  | RFC2252: naming contexts |
| altServer | DSA OPERATION | Standard  | RFC2252: alternative servers |
| supportedExtension | DSA OPERATION | Standard  | RFC2252: supported extended operations |


## Entry operational attributes

Those are attributes related to an entry, carrying some additional information about it

| Attribute name | Type | Category | Description |
|---|---|---|---|
| createTimestamp | DIRECTORY OPERATION | Standard |  RFC2252: time which object was created |
| modifyTimestamp | DIRECTORY OPERATION | Standard  | RFC2252: time which object was last modified |
| creatorsName | DIRECTORY OPERATION | Standard  | RFC2252: name of creator |
| modifiersName | DIRECTORY OPERATION | Standard  | RFC2252: name of last modifier |
| hasSubordinates | DIRECTORY OPERATION | Standard  | X.501: entry has children |
| ref | DISTRIBUTED OPERATION | Standard  | RFC3296: named reference - a labeledURI |
| entryUUID | DIRECTORY OPERATION | ApacheDS | UUID of the entry |
| entryDN | DIRECTORY OPERATION | ApacheDS  | DN of the entry |
| entryCSN | DIRECTORY OPERATION | ApacheDS  | Change sequence number of the entry |
| nbChildren | DIRECTORY OPERATION | ApacheDS  | The number of children for this entry |
| nbSubordinates | DIRECTORY OPERATION | ApacheDS  | The number of subordinates for this entry |
| entryParentId | DIRECTORY OPERATION | ApacheDS  | Attribute holding the id of parent entry |



## Schema related operational attributes

Those operational attributes are containing the schema elements handled by the server. They are stored in the **RootDSE**

| Attribute name | Type | Category | Description |
|---|---|---|---|
| ldapSyntaxes | DIRECTORY OPERATION | Standard | RFC2252: LDAP syntaxes | 
| subschemaSubentry | DIRECTORY OPERATION | Standard | RFC2252: name of controlling subschema entry | 
| dITStructureRules | DIRECTORY OPERATION | Standard | RFC2252: DIT structure rules | 
| dITContentRules | DIRECTORY OPERATION | Standard | RFC2252: DIT content rules | 
| matchingRules | DIRECTORY OPERATION | Standard | RFC2252: matching rules | 
| attributeTypes | DIRECTORY OPERATION | Standard | RFC2252: attribute types | 
| objectClasses | DIRECTORY OPERATION | Standard | RFC2252: object classes | 
| nameForms | DIRECTORY OPERATION | Standard | RFC2252: Name Forms | 
| matchingRuleUse | DIRECTORY OPERATION | Standard | RFC2252: matching rule uses | 
| structuralObjectClass | DIRECTORY OPERATION | Standard | X.500(93): structural object class of entry | 
| comparators | DIRECTORY OPERATION | ApacheDS  | A multivalued comparator description attribute |
| normalizers | DIRECTORY OPERATION | ApacheDS  | A multivalued normalizer description attribute |
| syntaxCheckers | DIRECTORY OPERATION | ApacheDS  | A multivalued syntaxCheckers description attribute |
| schemaModifyTimestamp | DIRECTORY OPERATION | ApacheDS  | Time which schema was modified |
| schemaModifiersName | DIRECTORY OPERATION | ApacheDS  | The DN of the modifier of the schema |


## Collective Attributes operational attributes

Those are attributes related to collective attributes.

| Attribute name | Type | Category | Description |
|---|---|---|---|
| collectiveAttributeSubentries | DIRECTORY OPERATION | Standard | RFC3671: identifies all collective attribute subentries that affect the entry |
| collectiveExclusions | DIRECTORY OPERATION | Standard | RFC3671: RFC3671: allows particular collective attributes to be excluded from an entry |


## Administrative Model Attributes

Those are attributes related to the Administrative Model management

| Attribute name | Type | Category | Description |
|---|---|---|---|
| administrativeRole | DIRECTORY OPERATION | Standard  | RFC3672: indicate that the associated administrative area is concerned withone or more administrative roles |
| subtreeSpecification | DIRECTORY OPERATION | Standard  | RFC3672: defines a collection of entries within an administrative area |
| prescriptiveACI | DIRECTORY OPERATION | ApacheDS  | Access control information that applies to a set of entries |
| entryACI | DIRECTORY OPERATION | ApacheDS  | Access control information that applies to a single entry |
| subentryACI | DIRECTORY OPERATION | ApacheDS  | Access control information that applies to a single subentry |
| autonomousAreaSubentry | DIRECTORY OPERATION | ApacheDS  | Used to track a subentry associated with an autonomousArea |
| accessControlSubentries | DIRECTORY OPERATION | ApacheDS  | Used to track a subentry associated with access control areas |


## Replication related operational attributes

Those attributes are used in a replication context.

| Attribute name | Type | Category | Description |
|---|---|---|---|
| contextCSN | DIRECTORY OPERATION | ApacheDS  | The largest committed CSN of a context |
| entryDeleted | DIRECTORY OPERATION | ApacheDS  | Whether or not an entry has been deleted. (Not anymore used) |


## Index related operational attributes

Those operational attributes are used to define the various system predefined indexes

| Attribute name | Type | Category | Description |
|---|---|---|---|
| apachePresence | DSA OPERATION | ApacheDS  | Index attribute used to track the existence of attributes |
| apacheOneLevel | DSA OPERATION | ApacheDS  | Index attribute used to track one level searches |
| apacheOneAlias | DSA OPERATION | ApacheDS  | Index attribute used to track single level aliases |
| apacheSubAlias | DSA OPERATION | ApacheDS  | Index attribute used to track sub level aliases |
| apacheAlias | DSA OPERATION | ApacheDS  | Index attribute used to track aliases |
| apacheSubLevel | DSA OPERATION | ApacheDS  | Index attribute used to track sub level searches |
| apacheRdn | DSA OPERATION | ApacheDS  | Index attribute RDN with values both user provided and normalized based on schema |


## Trigger interceptor Model Attributes

Those are attributes used in the Trigger Interceptor

| Attribute name | Type | Category | Description |
|---|---|---|---|
| prescriptiveTriggerSpecification | DIRECTORY OPERATION | ApacheDS  | Trigger specification that applies to a set of entries |
| entryTriggerSpecification | DIRECTORY OPERATION | ApacheDS  | Trigger specification that applies to a single entry |
| triggerExecutionSubentries | DIRECTORY OPERATION | ApacheDS  | Used to track subentries associated with a trigger area which an entry falls under |


## ChangeLog related operational attributes

Those operational attributes are meant to be used by teh **ChangeLog** interceptor. They are not supposed to be distributed, and they can't be modified by a user.

| Attribute name | Type | Category | Description |
|---|---|---|---|
| revisions | DSA OPERATION | ApacheDS  | Revision numbers used in change log |
| changeTime | DSA OPERATION | ApacheDS  | Represents the time when the change event occurred |
| changeType | DSA OPERATION | ApacheDS  | Type of change operation |
| eventId | DSA OPERATION | ApacheDS  | The unique sequential id for the event (a.k.a revision number) |
| committer | DSA OPERATION | ApacheDS  | The principal committing the change |
| changeLogContext | DSA OPERATION | ApacheDS  | Tells about the changelog context suffix |
