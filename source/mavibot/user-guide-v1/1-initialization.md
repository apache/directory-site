---
title: 1 - Introduction
navUp: ../user-guide-v1.html
navUpText: User Guide
navNext: 1.1-btree-basics.html
navNextText: 1.1 - BTree Basics
---

# Mavibot initialization

The very first step when using **Mavibot** is to initialize it. That means creating the database that will contain all the data (we use only one file for that).

This is done with a simple call, with one or 3 parameters:

```Java
    RecordManager recordManager1 = new RecordManager( "MyData.db" );

    // or 

    RecordManager recordManager2 = new RecordManager( "MyData.db", 512, 1024 );
```

The first method just require that you name the file that will contain the data (_"MyData.db"_ here), teh second method allows you to configure the page size and teh cache size (in number of pages). Here, we set the page size to _512_ bytes and the cache will store 1024 pages.

Those call will create the inner structure needed to manage the database:
* the _RecordManagerHeader_
* the _CopiedPagesBtree_
* the list of active B-trees (currently containing no element, the previously created B-tree is a technical one)

##  The RecordManagerHeader

This data structure is critical to _Mavibot_, it contains the root of all your database. It is stored with one single page, and is written in one single write operation, guaranteeing that once written, all the database is reachable. It cannot be corrupted. Worse case scenario, if it cannot be written, the previous version will always be available and point to the previous revision.

The inner structure of this page is the following:

``` Text
+--------------------------+
| PageSize                 | 4 bytes : The size of a physical page (default to 4096)
+--------------------------+
| Nb B-Trees               | 4 bytes : The number of managed B-trees (zero or more)
+--------------------------+
| Revision                 | 8 bytes : The current revision
+--------------------------+
| FirstFree offset         | 8 bytes : The offset of the first free page
+--------------------------+
| list of B-trees offset   | 8 bytes : The offset of the current list of B-trees
+--------------------------+
| current CP btree offset  | 8 bytes : The offset of the current BoB
+--------------------------+
| idCounter                | 8 bytes : The page ID counter (an incremental counter)
+--------------------------+
```

The _RecordManagerHeader_ is a 48 bytes block, stored in a bigger page (default page size is 4096 bytes).

The important information are :
* the current revision
* the pointer to the first free page (free pages are linked together in a list for the page allocator to use them)
* the pointer to the list of existing B-trees
* the pointer to the _CopiedPagesBtree_ which is used to manage dead pages
* a unique page counter whicch is incremented after every write

When you use a _Mavibot_ database, the system will always read this first page, and retrieve all the needed informations about the existing B-trees, plus some extra information to retreive dead pages if there was a crash beforehand. It's critical to undestand that a crash will not corrupt the database, you will just lose the data that were written before the write transaction has been fully committed.

## The CopiedPages Btree

This is a technical B-tree that is used to keep a reference of all the pages that have been copied during a write transaction. That allows the system to reclaim the pages that are not anymore in use. The algorithm will be axplain later. Enough said that for every write operation, we keep track of every page that is copied in this B-tree. Note that unlike the other B-trees, this B-tree is not versionned (ie we discard the old _CopiedPagesBtree_ pages immediately, they aren't useful)

## The list of active B-trees

We need to keep a track of all the active B-trees, whatever their version. A B-ytree is active when there is at least a read transaction using the assocciated revision. We may have many.

The reason we keep them on teh disk is that it helps to reclaim old pages in case of a crash, otherwise we would have to parse the whole database - which would be costly.

Here is the data structure as it is written on disk - and it may span on many pages -:

```Text

+--+--+--+--+--+--+--+--+
|  |  |  |  |  |  |  |  |    pageID
+--+--+--+--+--+--+--+--+
|  |  |  |  |                number of transaction lists
+--+--+--+--+
                             The current RMH :
+--+--+--+--+
|  |  |  |  |                number of managed BTrees (N)
+--+--+--+--+--+--+--+--+
|  |  |  |  |  |  |  |  |    revision
+--+--+--+--+--+--+--+--+
...                          
+--+--+--+--+--+--+--+--+
|  |  |  |  |  |  |  |  |    BtreeHeader offset x N,  For each managed B-tree
+--+--+--+--+--+--+--+--+
...
 
                             The active transactions list :
+--+--+--+--+
|  |  |  |  |                number of managed BTrees for RMH[i] (M)
+--+--+--+--+--+--+--+--+
|  |  |  |  |  |  |  |  |    revision RMH[i]
+--+--+--+--+--+--+--+--+
...                          
+--+--+--+--+--+--+--+--+
|  |  |  |  |  |  |  |  |    BtreeHeader offset x M,  For each managed B-tree of RMH[i]
+--+--+--+--+--+--+--+--+
...
```

Each transaction list has a size of ```12 + (nb B-tree * 8)``` bytes. For instance, if we manage 16 B-trees, that is 140 bytes (16 * 8 + 12 -> 140), and add the first 12 bytes for completion). If we have 10 active transactions, a 4096 bytes page will easily hold all of them (12 + 10 x 140 -> 1412 bytes).

## The list of free pages

This is basically a pointer to the first free page. All the freed pages are linked together. Their content is not flushed or cleared.

The principle is that when a page is freed, we attach it to the begining of this list, and it becomes the new head of the free pages list.

For the record, when _Mavibot_ needs a new page to store some data, it will first fetch some from this list, and when this list get exhausted, then it will get a new page at the end of the file, growing the file in the process.

Here is a representation of this list:

```Text
        +-------------+---+    +-------------+---+    +-------------+---+
Head -->|             | o-+--->|             | o-+--->|             | x |
        +-------------+---+    +-------------+---+    +-------------+---+
```

Note that the links are offsets in the file, and that the pages may be spread all across the file (ie we can start with 0x2000, then jump to 0x4000, go back to 0x3000, etc).

## Transaction list 

We have now created the database, we need to initialize the transaction list. The _transaction list_ is a list that contains all the existing transactions, as soon as they are in use. That means:
- the newest revision (after a write)
- any older revision for which a read transaction is sill holding a revision

When one start a read transaction, it always uses the current revision, but we may have other writes while the read transaction is still processing data (a read transaction can remain opened for a very long time). Of course, the database for this old revision is outdated, but this is the contract: a read transaction always uses pages created before or uup to the read revision. Any data added, moddified or removed since the beginning of the read transaction won't be seen.

# Adding a B-tree

As soon as the database has been initialized, we can now add a working B-tree. This is done with a _write transaction_ that needs to be created:

```java
        try ( WriteTransaction writeTransaction = recordManager.beginWriteTransaction() )
        {
            // Create a new BTree with transaction and another one without
            try
            {
                btree = recordManager.addBTree( writeTransaction, "testWithTxn", LongSerializer.INSTANCE, StringSerializer.INSTANCE );
                throw new NullPointerException();
            }
            catch ( Exception e )
            {
                writeTransaction.abort();
            }
        }
```

* We first create a _Write Transaction_ in a _try_with_resource_ block
* then we add a B-tree (here stroring <Long, String> tuples) in a try/catch sequence
* we handle a potential exception, and rollback explicitely the transaction in this case
* last, not least, the commit is implicit when the transaction is auto-closed

Note: We have to deal with the _abort()_ call explicitely.

The _B-tree_ creation is entirely managed by the _recordManager_ instance. A _B_Tree_ is a data structure holding tuples (```<key, value>```) into pages. It has at least three pages:
* a _Info_ page
* a _Header_ page
* a _root_ page.
All those pages are written to disk when the transaction is commited, otherwise they are hold in memory until the transaction is either committed (and the pages are flushed oin disk) or rollbacked (and the memory is freed)

The _Header_ page is the reference page when accessing a _B_Tree_. It points to the _Info_ and _root_ page.

Note: Each reference is a long integer, whch is the offset of the page on disk, if it has been written, or the page ID if it's in memory. Each single page has a unique ID whcih never change. This ID is created when the page is created, and it's an incremental number.

