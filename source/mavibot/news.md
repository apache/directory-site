---
title: News
---

# News
<h2 class="news">Apache Mavibot 1.0.0-M8 released <em>posted on August 16th, 2015</em></h2>

The Apache Directory team is pleased to announce the release of Apache Mavibot 1.0.0-M8 the 
eighth milestone towards a 1.0 version.

**Mavibot** is a Multi Version Concurrency Control (MVCC) BTree in Java. It is expected to be a
replacement for JDBM (The current backend for the **Apache Directory Server**), but could be a 
good fit for any other project in need of a Java MVCC BTree implementation.

This version contains support for free-page management. It is not yet production ready, support 
for cross-B-tree transaction system is not present yet, and this will be our target for the next 
release.

Downloads are available [here](downloads.html)

# News
<h2 class="news">Apache Mavibot 1.0.0-M7 released <em>posted on March 27th, 2015</em></h2>

The Apache Directory team is pleased to announce the release of Apache Mavibot 1.0.0-M7 the seventh milestone towards a 1.0 version.

**Mavibot** is a Multi Version Concurrency Control (MVCC) BTree in Java. It is expected to be a replacement for JDBM (The current backend for the **Apache Directory Server**), but could be a good fit for any other project in need of a Java MVCC BTree implementation.

This version fixes some serious issues in the way we browse a B-tree, and in the transaction support. It's not yet
production ready, we still are missing the free-page management and a cross-B-tree transaction system, which will
be our target for the next release.

Downloads are available [here](downloads.html)

# News
<h2 class="news">Apache Mavibot 1.0.0-M6 released <em>posted on November 16th, 2014</em></h2>

The Apache Directory team is pleased to announce the release of Apache Mavibot 1.0.0-M6, the sixth milestone towards a 1.0 version.

**Mavibot** is a Multi Version Concurrency Control (MVCC) BTree in Java. It is expected to be a replacement for JDBM (The current backend for the **Apache Directory Server**), but could be a good fit for any other project in need of a Java MVCC BTree implementation.

This version brings a complete support for Bulk-Loading of persistent btrees, and fixes a few bugs :

* MAVIBOT-32 Add Bulk Load 
* MAVIBOT-34 Support revisions 
* MAVIBOT-36 Runtime dependencies on slf4j-log4j and log4j cause conflicts 
* MAVIBOT-42 The TupleCursor always reuse the same internal tuple instance... 


This is by far not the latest milestone

**ApacheDS** has already been tested with **Mavibot 1.0.0-M6-SNAPSHOT**

Downloads are available [here](downloads.html)

# News
<h2 class="news">Apache Mavibot 1.0.0-M5 released <em>posted on July 4th, 2014</em></h2>

The Apache Directory team is pleased to announce the release of Apache Mavibot 1.0.0-M5, the fifth milestone towards a 1.0 version.

**Mavibot** is a Multi Version Concurrency Control (MVCC) BTree in Java. It is expected to be a replacement for JDBM (The current backend for the **Apache Directory Server**), but could be a good fit for any other project in need of a Java MVCC BTree implementation.

This version brings some new improvements in the API and the performances. The In-memory and Persisted B-trees classes have
been moved into the same package, to avoid exposing the methods to the external world. We also have shared the common methods.

We have added a partial support for the bulk-load feature, and a few speed improvements.

This is by far not the latest milestone, the next one will bring major changes : revisions support, transaction support.

**ApacheDS** has already been tested with **Mavibot 1.0.0-M5-SNAPSHOT**

Downloads are available [here](downloads.html)

# News
<h2 class="news">Apache Mavibot 1.0.0-M4 released <em>posted on March 13th, 2014</em></h2>

The Apache Directory team is pleased to announce the release of Apache Mavibot 1.0.0-M4, the forth milestone towards a 1.0 version.

**Mavibot** is a Multi Version Concurrency Control (MVCC) BTree in Java. It is expected to be a replacement for JDBM (The current backend for the **Apache Directory Server**), but could be a good fit for any other project in need of a Java MVCC BTree implementation.

This version brings some new improvements in the API and the performances. The In-memory and Persisted B-trees classes have
been moved into the same package, to avoid exposing the methods to the external world. We also have shared the common methods.

Some specific exceptions have been created.

Here is the list of fixed issues :

<b>Bug</b>

    * MAVIBOT-20 - Btree created with the duplicateValues flag to false still accept duplicate values

</b>Improvements</b>

    * MAVIBOT-25 - Don't update the RMHeader for each free page we get
    * MAVIBOT-27 - Aggregate the Persisted and InMemory common methods
    * MAVIBOT-28 - Move the Persited and InMemory classes into the same package
    * MAVIBOT-29 - Use a BtreeFactory to create BTrees
    * MAVIBOT-30 - Replace the RuntimeException by specific exceptions
    * MAVIBOT-33 - Serializer and comparator should be static instances


This is by far not the latest milestone, the next one will bring major changes : revisions support, transaction support.

**ApacheDS** has already been tested with **Mavibot 1.0.-M4-SNAPSHOT**

Downloads are available [here](downloads.html)

<h2 class="news">Apache Mavibot 1.0.0-M3 released <em>posted on December 16th, 2013</em></h2>

The Apache Directory team is pleased to announce the release of Apache Mavibot 1.0.0-M3, the third milestone towards a 1.0 version.

**Mavibot** is a Multi Version Concurrency Control (MVCC) BTree in Java. It is expected to be a replacement for JDBM (The current backend for the **Apache Directory Server**), but could be a good fit for any other project in need of a Java MVCC BTree implementation.

Some big refactoring in this milestone, as many of the classes and
interfaces are now comon to both the managed and in-memory btrees.
A replace method has been added, the cache is now shared with the
btree subtrees, and we don't create a subtrees for each values when
the BTree allows duplicate values, which leads to better performance.

Most important, we don't anymore deserialize the whole page when it
is read from disk, we just deserialize the needed keys and values. 
This single change boost the performance by an order of magnitude.

The cursors have been refactored, and some tests have been added.

Many other bugs have been fixed.

**ApacheDS** has already been tested with **Mavibot 1.0.-M3-SNAPSHOT**

Downloads are available [here](downloads.html)

<h2 class="news">Apache Mavibot 1.0.0-M2 released <em>posted on November 6th, 2013</em></h2>

The Apache Directory team is pleased to announce the release of Apache Mavibot 1.0.0-M2, the second milestone towards a 1.0 version.

**Mavibot** is a Multi Version Concurrency Control (MVCC) BTree in Java. It is expected to be a replacement for JDBM (The current backend for the **Apache Directory Server**), but could be a good fit for any other project in need of a Java MVCC BTree implementation.
This milestone contains two different BTrees : 
* one for in-memory BTrees
* one for managed BTrees

The rational for this big modification is that we can't easily have one BTree to gather all the characteristics of both the in-memory and the managed BTrees with oe single class.

We also have rewrote the way we handle added elements when we reach the end of the memory : we now use a cache instead of depending on wekReferences, which proved to be just way too slow.

The next milestones will add the missing features :

* bulk load support
* multi-version support with free pages management
* transaction support

**ApacheDS** has already been tested with **Mavibot 1.0.-M2-SNAPSHOT**, and it offers performances twice better than JDBM.

Downloads are available [here](downloads.html)

<h2 class="news">Apache Mavibot 1.0.0-M1 released <em>posted on August 6th, 2013</em></h2>

The Apache Directory team is pleased to announce the release of Apache Mavibot 1.0.0-M1, the first milestone towards a 1.0 version.

**Mavibot** is a Multi Version Concurrency Control (MVCC) BTree in Java. It is expected to be a replacement for JDBM (The current backend for the **Apache Directory Server**), but could be a good fit for any other project in need of a Java MVCC BTree implementation.

This milestone is the first step toward a complete MVCC implementation, it currently does not handle versions at all. Anyway, it's already a in memory/On disk full BTree implementation, which is 2 to 3 times faster than JDBM.

The next milestones will add the missing features :

* bulk load support
* multi-version support with free pages management
* transaction support

**ApacheDS** has already been tested with **Mavibot 1.0.-M1-SNAPSHOT**, and it offers pretty good performances compared to JDBM, except when we inject a lot of entries in the server.

Downloads are available [here](downloads.html)


<h2 class="news">Apache Mavibot added to Apache Directory project <em>posted on August 6th, 2013</em></h2>

We are proud to announce that after less than one year of development in Apache Directory Labs, the Mavibot project has been accepted as a Apache Directory subproject.

The project is still in its infancy, and anyone willing to participate in the effort is very welcome !
