---
title: Vision
---

# Vision

The **Apache Directory Server** is using an old package to manage its data : **JDBM**. This is a simple - but functional - BTree implementation in Java. It support transactions and storage on disk.

So far, so good. Except that it's kind of slow, and more important, it does not support concurrent reads and writes.

At some point, we decided to go for another implementation, but for a MVCC BTree.

## What is a MVCC BTree ?

### Btree basics

A **Btree** is a data structure that stores <Key, Value> tuples in a tree, with the guarantee that the tree will be ordered, and that the depth of the tree is the same for all the leaves. A **Btree** has nodes and leaves (with the only exception of a Btree with only a root page). The nodes are used to route to the underlying values, and have children. Leaves don't have children.

Nodes and leaves have a maximum number of elements stored into them, and when they are full, they are split. If the split is done on a leaf, we may have to reorganize the tree so that either we can move some elements up and keep the tree at the current height, or we may have to reorganize the full tree so that all the leaves are at the same level, which will then be one deeper (if we added some value) than the tree before the split.


### Btree vs B+Tree

The difference between those two data structures is that Btree store values in the nodes, when B+Tree do store all the values in leaves.

At first glance, we can say that finding a value in a Btree will be faster, as we may not go down to the leaves to find it. OTOH, a B+Tree has many advantages, but the two major advantages are :

* we don't need to go up in the tree to browse the tree when searching for more than one value, we can just read the leaves, as they are chained.
* we will have smaller nodes, so we can cache more of the tree pages than if we have values in the nodes.

Those two big advantages make the B+Tree more interesting to use than the simpler Btree.

(See [Wikipedia page on B+tree](https://en.wikipedia.org/wiki/B%2B_tree) and [Wikipedia page on Btree](https://en.wikipedia.org/wiki/B-tree)

### MVCC

**MVCC** (Multi Version Concurrency Control) is a way to provide concurrent access to the Btree (it's extensively used in many other areas, like programming languages and transactional memory). The main idea is to create a new version of the tree each time we do a modification. It also allows the reorganization of the data on the fly, but this is an extra benefit.

The way it works is that when you do a search on the tree, you first acquire the current revision. Even if the search is taking a while, because it fetches many values, the tree will remain unchanged for the selected revision

Any modification done on the tree will first create a new revision, and the modified pages will first be copied, so that the previous versions will still be available for any search operation being executed at the same time.

It has three direct consequences :

* first, a search will always return 'outdated' values, in the way that new data won't be returned, as they will be stored in a version which is newer.
* Second, and more important, we don't need any lock to access the data when doing a search, as there is no possible modification on a versioned tree.
* Third, concurrent modifications are thus limited, as we want to be sure that we don't override some modification done by another thread. They are ways to mitigate this constraints, but in most of the case, it's acceptable.

# So what do we have with Mavibot ?

Pretty much the same thing than **JDBM** but faster, with concurrent reads and writes, serialized writes, transactions, bulk loads (a missing features in **JDBM**), multi-version support, and in-memory BTree.
