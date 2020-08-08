---
title: 8 - Schema
navPrev: 7-ldap-messages.html
navPrevText: 7 - LDAP Messages
navUp: ../internal-design-guide.html
navUpText: Internal Design Guide
navNext: 9-dn.html
navNextText: 9 - DN
---

# 8 - Schema

## Schema parsers

We use a set of classes to parse schema elements. There are 11 flavors of schema elements, 8 of them being described in a **RFC**, 3 of them being ApacheDS proprietary:

* [AttributeType](https://tools.ietf.org/html/rfc4512#section-4.1.2)
* [DitContentRule](https://tools.ietf.org/html/rfc4512#section-4.1.6)
* [DitStructureRule](https://tools.ietf.org/html/rfc4512#section-4.1.7.1)
* [LDAPSyntax](https://tools.ietf.org/html/rfc4512#section-4.1.5)
* [MatchingRule](https://tools.ietf.org/html/rfc4512#section-4.1.3)
* [MatchingRuleUse](https://tools.ietf.org/html/rfc4512#section-4.1.4)
* [NameForm](https://tools.ietf.org/html/rfc4512#section-4.1.7.2)
* [ObjectClass](https://tools.ietf.org/html/rfc4512#section-4.1.1)

and

* LdapComparator
* Normalizer
* SyntaxChecker

We need to be able to parse those schema elements because they can be added into the server as a description (ie, a String representing one of those schema elements as defined by the RFC). For the same reason, the **LDAP API** need to validate that those schema elements are valid before sending them to a **LDAP SERVER**, or to be able to properly parse what it gets from a **LDAP server**.

## Strict vs quirks mode

Here we have a problem : most of the LDAP server implementation violate the RFC. We can't simply expect the String representing a schema element to be compliant with the RFC. Some typical deviations are :

* OpenLDAP uses some macro instead of OIDs. This is convenient, as it allows to define the root OID with a name, and reuse it in the associated schema elements
* AD and many other servers expect some specific characters to be accepted, like '_', ':', '#', ...
* Sometime, the values may come without quotes, when it's required
* etc.

We will define the _strict mode_ a mode which follows the **RFC** tightly, and the _quirks mode_ a relaxed version of the parser, more permissive. One can use either the strict or relaxed mode using a flag.

### Strict mode

The only thing we will relax is the order in which the various parts of each description is present in a schema description : we don't expect them to be ordered as described in the RFC.

The various parts are defined using a few syntaxes :

* _NAME_: qdescrs
* _DESC_: qdstring
* _SUP_ (**ObjectClass**), _MUST_, _MAY_, _APPLIES_, _AUX_, _NOT_: oids
* _SUP_ (**AttributeType**), _EQUALITY_, _ORDERING_, _SUBSTR_, _FORM_, _OC_: oid
* _SYNTAX_ (**AttributeType**): noidlen
* _SYNTAX_ (**MathingRule**): numericoid
* _SUP_ (**DitStructureRule**): ruleids

* _descr_: oid, qdescrs
* _qdescr_: qdescrs, qdescrlist

_qdescrs_ and _oids_ may contain one or many _qdescr_ and _oid_.

#### descr, strict

The _descr_ construct is used by _oid_ and _qdescrs_ (an _OID_ can be a name). The strict mode will use this grammar :

    descr       ::= keystring
    keystring   ::= leadkeychar keychar*
    leadkeychar ::= ALPHA
    keychar     ::= ALPHA | DIGIT | HYPHEN
    ALPHA       ::= ['A'..'Z'] | ['a'..'z']
    DIGIT       ::= ['0'..'9']
    HYPHEN      ::= '-'
    SQUOTE      ::= '\''

#### qdstring, strict

A _qdstring_ can contain any type of **UTF-8** characters, except the simple quote or the backslash, which must be encoded. It's always surrounded by simple quotes :

    
    qdstring    ::= SQUOTE dstring SQUOTE
    dstring     ::= ( QS | QQ | QUTF8 )*
    QQ          ::= ESC %x32 %x37
    QS          ::= ESC %x35 ( %x43 / %x63 )
    QUTF8       ::= QUTF1 | UTFMB
    QUTF1       ::= %x00-26 | %x28-5B | %x5D-7F

#### qdescr, strict

_qdescr_ is a quoted name, where the first char must be alphabetic, and the following chars must be alphabetic, digits or hyphen. Here is the **ABNF** for _qdescr_ :

    
    qdescr      ::= SQUOTE descr SQUOTE

#### noidlen, strict

### Relaxed mode

#### qdstring, relaxed

There

#### descr, relaxed

The relaxed _descr_ accepts more characters, like underscore, semi-colon, dot, colon or sharp. The leadkeychar will not be mandatory, too. Here is the **ABNF** we will accept :

    relaxed-descr   ::= relaxed-keystring
    leaxed-keystring::= keychar+
    relaxed-keychar ::= ALPHA | DIGIT | HYPHEN | UNDERSCORE | SEMICOLON | DOT | COLON | SHARP
    ALPHA           ::= ['A'..'Z'] | ['a'..'z']
    DIGIT           ::= ['0'..'9']
    HYPHEN          ::= '-'
    UNDERSCORE      ::= '_'
    SEMI_COLON      ::= ';'
    COLON           ::= ':'
    SDOT            ::= '.'
    SHARP           ::= '#'


#### qdescr, relaxed

Compared to the strict mode, we will accept a non-quoted String, or a String using double quotes. 

    
    relaxed-qdescr  ::= SQUOTE relaxed-descr SQUOTE | DQUOTE relaxed-descr DQUOTE | relaxed-descr

#### oid, relaxed

We will accept quoted and double quoted OIDs and Names, in relaxed mode. Here is teh supported **ABNF** :

    
    oid-relaxed ::= SQUOTE relaxed-descr SQUOTE | DQUOTE relaxed-descr DQUOTE | descr-relaxed |
                    SQUOTE numericoid SQUOTE | DQUOTE numericoid DQUOTE | numericoid

#### noidlen, strict

Here, we will allow textual syntax name to be used, not only OIDs. For instance, something like _SYNTAX IA5String_ will be allowed.

We also allow quoted and double quoted OIDs.