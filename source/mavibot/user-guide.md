---
title: Users Guide
---

# Users guide

<DIV class="note" markdown="1">
**Work in progress**
</DIV>

This user guide is about the Mavibot project developed at the Apache Software Foundation. We expect this project to be a replacement for **JDBM** that is currently used in Apache Directory Server, and also to be a reliable **MVCC B-tree** implementation that can be used by any other project.

## About this guide

Getting started. Learn how to use Mavibot.

### Audience

This guide is primarily for people new to Mavibot. Only basic features are covered. Learn more about the options you have (and many other things) in the [Advanced User's Guide].

### Feedback welcome!

We are quite interested to improve the content of this guide. Feel free to provide us feedback:
!email.png! [mailto:users@directory.apache.org](mailto:users@directory.apache.org)

### Table of contents

* [1 - Introduction](user-guide/1-introduction.html)
    * [1.1 - B-tree basics](user-guide/1.1-btree-basics.html)
* [2 - B-tree Flavors](user-guide/2-btree-types.html)
    * [2.1 - MVCC B-tree](user-guide/2.1-mvcc-btree.html)
* [3 - Mavibot B-tree management](user-guide/3-btree-management.html)
    * creation
    * close
    * flush
    * load
* [4 - Mavibot B-tree operations](user-guide/4-btree-operations.html)
    * Cursor informations
    * browse
    * contains
    * has
    * get
    * insert
    * delete
    * other operations
* [5 - Mavibot B-tree information](user-guide/5-btree-informations.html)
    * getComparator
    * getFile
    * getJournal
    * getNbElems
    * isAllowDuplicates
    * isInMemory
    * isPersistent
* [6 - Mavibot B-tree configuration](user-guide/6-btree-configuration.html)
    * getKeySerializer
    * getKeySerializerFQCN
    * setKeySerializer
    * getName
    * setName
    * getPageSize
    * setPageSize
    * getReadTimeOut
    * setReadTimeOut
    * getValueSerializer
    * getValueSerializerFQCN
    * setValueSerializer
    * getWriteBufferSize
    * setWriteBufferSize
* [7 - Mavibot internals](user-guide/7-btree-internals.html)
    * [7.1 - Logical Structure](user-guide/7.1-logical-structure.html)
    * [7.2 - Physical Storage](user-guide/7.2-physical-storage.html)
    * [7.3 - Serializations](user-guide/7.3-serializations.html)
    * [7.4 - Updates](user-guide/7.4-updates.html)
