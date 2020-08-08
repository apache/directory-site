---
title: 4 - Schema Management
navPrev: 3-advanced-ldap-api-usage.html
navPrevText: 3 - Advanced LDAP API Usage
navUp: ../user-guide.html
navUpText: User Guide
navNext: 5-ldap-security.html
navNextText: 5 - LDAP Security
---

# 4 - Schema Management

Every LDAP server necessarily has a schema that's used to define its accepted data elements along with their rules for usage (syntax).

An LDAP Schema is a complex combination of many schema elements. Here's we'll define those schema elements and how to organize them. Last, but not least, we'll explain how to leverage the schema on the client side.

## Contents

* [Schema](4.1-schema.html)
* [SchemaManager](4.2-schema-manager.html)
    * [SchemaObjects](4.2.1-schema-objects.html)
        * [AttributeTypes](4.2.1.1-attribute-types.html)
        * [ObjectClasses](4.2.1.2-object-classes.html)
        * [Syntaxes](4.2.1.3-syntaxes.html)
        * [MatchingRules](4.2.1.4-matching-rules.html)
        * [DITContentRules](4.2.1.5-dit-content-rules.html)
        * [DITStructureRules](4.2.1.6-dit-structure-rules.html)
        * [MatchingRuleUses](4.2.1.7-matching-rule-uses.html)
        * [NameForms](4.2.1.8-name-forms.html)
        * [ApacheDS Schema Elements](4.2.1.9-apacheds-schema-elements.html)
    * [Registries](4.2.2-registries.html)
    * [SchemaLoader](4.2.3-schema-loader.html)
