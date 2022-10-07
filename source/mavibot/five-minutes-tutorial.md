---
title: Five Minutes Tutorial
---

# Five Minutes Tutorial

Let's drop a quick sample first :

```java
// Create a BTree that stores String indexed by a Long
BTree<Long, String> btree = new BTree<Long, String>( "test", new LongSerializer(), new StringSerializer() );

// Inject some random data in it
for ( long i = 0L; i < 10000L; i++ )
{
    Long key = ( long ) random.nextLong();
    String value = Long.toString( key );

    btree.insert( key, value );
}

// Check that the tree contains all the values
try
{
    for ( long i = 0L; i < 100000L; i++ )
    {
        assertEquals( Long.toString( i ), btree.get( i ) );
    }
}
catch ( KeyNotFoundException knfe )
{
    fail();
}

// Let's close the BTree now
btree.close();
```

So what do we have here ? 

* we have created a BTree
* we have fed it with 10 000 keys and values
* we have read all of them

That's pretty simple ! All you have to do is to carefully create your BTree, and to provide the Key and Value serializers.

We will now look a little more in detail what you can do.

## BTrees and storage

A BTree knows pretty much nothing about the way the data it contains are stored. The default is to store data in memory, with a backup being done on disk regularly, so that you don't lose anything in case of a crash. This is what we have done in the previous example.

But you can also associate a _BTree_ to a _RecordManager_, which will manage the storage on disk on any modification. In this case, the RecordManager will encapsulate the _BTree_ (in fact, a _RecordManager_ can handle more than one _BTree_). Here is how you use this feature :

```java
// Create the RecordManager
RecordManager recordManager = new RecordManager( "MyData.db" );

// Delegate the creation of the BTree to the recordManager
BTree<Long, String> btree = recordManager1.addBTree( "test", new LongSerializer(), new StringSerializer(), false );

// Do whatever you want with the BTree now...

// Close the RecordManager. It will close all the associated BTrees
recordManager.close();
```

Here, all the modifications will be stored on disk, and in an efficient way.

## Operations on a BTree

The type of operations you can conduct on a _Btree_ are listed below (for the most useful ones )

* browse : allow a user to browse the full _BTree_ up and down
* contains : tells if a _BTree_ contains a specific key and value
* delete : delete from a _BTree_
* get : return a value from a key 
* hasKey : tells if the _BTree_ contains a specific key
* insert : inject a new key and values in a _BTree_

You will find a detailed description of all the associated methods in the Mavibot javadoc.

## Values

A _BTree_ can store single value or multiple values, associated to a key. The _AllowDuplicates_ flags is set to true if you want to store multiple values associated with one key.

The default _BTree_ will only accept single value.

## Revisions

Your _BTree_ can store a new revision for each new modification done on it. Those revisions are kept until no operation are holding them. The _BTree_ operations can all be done using a specific revision number.

Once the revision is not longer in use, the associated pages are likely to be reclaimed.

## Cache

We don't implement a cache : we depends on Java for that. The _BTree_ is stored in memory, using class instances, and are eventually loaded from disk if they are not present in memory. We use [_WeakReference_](https://docs.oracle.com/javase/7/docs/api/java/lang/ref/WeakReference.html) to hold all the pages.

As the _Java_ garbage collector already keeps in memory the most frequently used data, it's likely that the important pages - ie, the top of each _BTree_ - will be kept in memory.
