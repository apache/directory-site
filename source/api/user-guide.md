---
title: Users Guide
---

# Users guide

<DIV class="note" markdown="1">
<strong>Work in progress</strong>
Pages with a (e) at the end of the title are empty pages.
Pages with a (...) at the end of the title are not yet completed.
Other pages are finished (but may be reviewed).
</DIV>

This document is about the LDAP API, developed at the Apache Software Foundation. It's a replacement for outdated Java/LDAP libraries like ([jLdap](https://www.openldap.org/jldap/), [Mozilla LDAP SDK](https://wiki.mozilla.org/Mozilla_LDAP_SDK_Programmer%27s_Guide/Getting_Started_With_LDAP_Java_SDK) and [JNDI](https://www.oracle.com/technetwork/java/jndi/index.html)).

## About this guide

Getting started. Learn how to use the LDAP API, connect to various LDAP servers, manipulate the data within a directory. 

### Audience

This guide is for anyone wanting to learn how to use the LDAP API. If you plan to use the API, maybe even for your first LDAP experience, you'll find information here to help. Right now we've got pretty good coverage of the basic tasks.  Later, we'll add more advanced use cases so keep checking back.  To learn about advanced options (and many other things) go to the [Advanced User's Guide].

### Feedback welcome!

We are interested in improving the content of this guide. Feel free to provide feedback:
!email.png! [mailto:users@directory.apache.org](mailto:users@directory.apache.org)

### Table of contents

* [1 - Introduction](user-guide/1-introduction.html)
    *  [1.1 - Java and LDAP](user-guide/1.1-java-and-ldap.html)
    *  [1.2 - LDAP in a few words](user-guide/1.2-ldap-in-a-few-words.html)
    *  [1.3 - The Apache LDAP API rationale](user-guide/1.3-apache-ldap-api-rational.html)
    *  [1.4 - Preparation to code](user-guide/1.4-preparation-to-code.html)
* [2 - Basic LDAP API usage (...)](user-guide/2-basic-ldap-api-usage.html)
    *  [2.1 - Connection and disconnection](user-guide/2.1-connection-disconnection.html)
    *  [2.2 - Binding and unbinding](user-guide/2.2-binding-unbinding.html)
    *  [2.3 - Searching (...)](user-guide/2.3-searching.html)
    *  [2.4 - Adding entries](user-guide/2.4-adding.html)
    *  [2.5 - Deleting entries](user-guide/2.5-deleting.html)
    *  [2.6 - Modifying entries](user-guide/2.6-modifying.html)
    *  [2.7 - Moving an renaming entries (e)](user-guide/2.7-moving-renaming.html)
    *  [2.8 - Comparing entries (e)](user-guide/2.8-comparing.html)
    *  [2.9 - Exception management (...)](user-guide/2.9-exception-management.html)
    *  [2.10 - The LdapConnectionTemplate](user-guide/2.10-ldap-connection-template.html)
    *  [2.11 - The FilterBuilder](user-guide/2.11-filter-builder.html)
* [3 - Advanced LDAP API usage (...)](user-guide/3-advanced-ldap-api-usage.html)
    *  [3.1 - Controls](user-guide/3.1-controls.html)
    *  [3.2 - Extended operations (e)](user-guide/3.2-extended-operations.html)
    *  [3.3 - Referrals (e)](user-guide/3.3-referrals.html)
    *  [3.4 - Aliases (e)](user-guide/3.4-aliases.html)
    *  [3.5 - LDIF, DSML (...)](user-guide/3.5-ldif-dsml.html)
    *  [3.6 - Abandonning an operation (e)](user-guide/3.6-abandonning.html)
    *  [3.7 - Server informations (e)](user-guide/3.7-server-informations.html)
* [4 - SchemaManagement (...)](user-guide/4-schema-management.html)
    * [4.1 - Schema](user-guide/4.1-schema.html)
    * [4.2 - SchemaManager](user-guide/4.2-schema-manager.html)
        * [4.2.1 - SchemaObjects](user-guide/4.2.1-schema-objects.html)
            * [4.2.1.1 - AttributeTypes](user-guide/4.2.1.1-attribute-types.html)
            * [4.2.1.2 - ObjectClasses](user-guide/4.2.1.2-object-classes.html)
            * [4.2.1.3 - Syntaxes](user-guide/4.2.1.3-syntaxes.html)
            * [4.2.1.4 - MatchingRules](user-guide/4.2.1.4-matching-rules.html)
            * [4.2.1.5 - DITContentRules](user-guide/4.2.1.5-dit-content-rules.html)
            * [4.2.1.6 - DITStructureRules](user-guide/4.2.1.6-dit-structure-rules.html)
            * [4.2.1.7 - MatchingRuleUses](user-guide/4.2.1.7-matching-rule-uses.html)
            * [4.2.1.8 - NameForms](user-guide/4.2.1.8-name-forms.html)
            * [4.2.1.9 - ApacheDS Schema Elements](user-guide/4.2.1.9-apacheds-schema-elements.html)
        * [4.2.2 - Registries](user-guide/4.2.2-registries.html)
        * [4.2.3 - SchemaLoader](user-guide/4.2.3-schema-loader.html)
* [5 - LDAP security (e)](user-guide/5-ldap-security.html)
    *  [5.1 - LDAPS](user-guide/5.1-ldaps.html)
    *  [5.2 - StartTLS (e)](user-guide/5.2-start-tls.html)
    *  [5.3 - SASL Bind](user-guide/5.3-sasl-bind.html)
    *  [5.4 - Password handling](user-guide/5.4-password-handling.html)
    *  [5.5 - Certificates](user-guide/5.5-certificates.html)
    *  [5.6 - ACI and ACLs (e)](user-guide/5.6-aci-and-acls.html)
* [6 - LDAP data structures (...)](user-guide/6-ldap-data-structures.html)
    *  [6.1 - AdministrativePoint (e)](user-guide/6.1-administrative-point.html)
    *  [6.2 - AdministrativeRole (e)](user-guide/6.2-administrative-role.html)
    *  [6.3 - Attribute](user-guide/6.3-attribute.html)
    *  [6.4 - AttributeType (...)](user-guide/6.4-attribute-type.html)
    *  [6.5 - Ava](user-guide/6.5-ava.html)
    *  [6.6 - Csn](user-guide/6.6-csn.html)
    *  [6.7 - Control (...)](user-guide/6.7-control.html)
    *  [6.8 - Cursor (e)](user-guide/6.8-cursor.html)
    *  [6.9 - Dn](user-guide/6.9-dn.html)
    *  [6.10 - DITContentRule (e)](user-guide/6.10-dit-content-rule.html)
    *  [6.11 - DITStructureRule (e)](user-guide/6.11-dit-structure-rule.html)
    *  [6.12 - Entry](user-guide/6.12-entry.html)
    *  [6.13 - ExprNode](user-guide/6.13-expr-node.html)
    *  [6.14 - LdapComparator (e)](user-guide/6.14-ldap-comparator.html)
    *  [6.15 - LdapResult](user-guide/6.15-ldap-result.html)
    *  [6.16 - LdapSyntax (e)](user-guide/6.16-ldap-syntax.html)
    *  [6.17 - LdapUrl (...)](user-guide/6.17-ldap-url.html)
    *  [6.18 - LdifControl (e)](user-guide/6.18-ldif-control.html)
    *  [6.19 - LdifEntry](user-guide/6.19-ldif-entry.html)
    *  [6.20 - MatchingRule (e)](user-guide/6.20-matching-rule.html)
    *  [6.21 - MatchingRuleUse (e)](user-guide/6.21-matching-rule-use.html)
    *  [6.22 - Message (...)](user-guide/6.22-message.html)
    *  [6.23 - Modification](user-guide/6.23-modification.html)
    *  [6.24 - NameForm (e)](user-guide/6.24-name-form.html)
    *  [6.25 - Normalizer (e)](user-guide/6.25-normalizer.html)
    *  [6.26 - ObjectClass (e)](user-guide/6.26-object-class.html)
    *  [6.27 - Oid](user-guide/6.27-oid.html)
    *  [6.28 - Rdn](user-guide/6.28-rdn.html)
    *  [6.29 - Referral (e)](user-guide/6.29-referral.html)
    *  [6.30 - Refinment (e)](user-guide/6.30-refinment.html)
    *  [6.31 - SchemaManager (e)](user-guide/6.31-schema-manager.html)
    *  [6.32 - Subentry (e)](user-guide/6.32-subentry.html)
    *  [6.33 - SubtreeSpecification (e)](user-guide/6.33-subtree-specification.html)
    *  [6.34 - SyntaxChecker (e)](user-guide/6.34-syntax-checker.html)
    *  [6.35 - Value](user-guide/6.35-value.html)
* [7 - Requests and Responses (...)](user-guide/7-requests-responses.html)
    * [7.1 - AbandonRequest](user-guide/7.1-abandon-request.html)
    * [7.2 - AddRequest](user-guide/7.2-add-request.html)
    * [7.3 - AddResponse](user-guide/7.3-add-response.html)
    * [7.4 - BindRequest](user-guide/7.4-bind-request.html)
    * [7.5 - BindResponse](user-guide/7.5-bind-response.html)
    * [7.6 - CompareRequest](user-guide/7.6-compare-request.html)
    * [7.7 - CompareResponse](user-guide/7.7-compare-response.html)
    * [7.8 - DelRequest](user-guide/7.8-del-request.html)
    * [7.9 - DelResponse](user-guide/7.9-del-response.html)
    * [7.10 - ExtendedRequest](user-guide/7.10-extended-request.html)
    * [7.11 - ExtendedResponse](user-guide/7.11-extended-response.html)
    * [7.12 - IntermediateResponse](user-guide/7.12-intermediate-response.html)
    * [7.13 - ModDnRequest](user-guide/7.13-mod-dn-request.html)
    * [7.14 - ModDnResponse](user-guide/7.14-mod-dn-response.html)
    * [7.15 - ModifyRequest](user-guide/7.15-modify-request.html)
    * [7.16 - ModifyResponse](user-guide/7.16-modify-response.html)
    * [7.17 - SearchRequest](user-guide/7.17-search-request.html)
    * [7.18 - SearchResultDone](user-guide/7.18-search-result-done.html)
    * [7.19 - SearchResultEntry](user-guide/7.19-search-result-entry.html)
    * [7.20 - SearchResultReference](user-guide/7.20-search-result-reference.html)
    * [7.21 - UnbindRequest](user-guide/7.21-unbind-request.html)
* [8 - LDAP related RFCs](user-guide/8-ldap-rfcs.html)
