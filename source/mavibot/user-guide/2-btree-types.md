---
title: 2 - B-tree Flavors
navUp: ../user-guide.html
navUpText: User Guide
navNext: 2.1-mvcc-btree.html
navNextText: 2.1 - MVCC B-tree
navPrev: 1.1-btree-basics.html
navPrevText: 1.1 - B-tree Basics
---

# 2 - B-tree flavors

You have many different flavors of **B-trees** :

* B+tree
* B*-tree
* Counted B-tree
* MVCC B-tree


## B+tree

This is a **B-tree** which does not store values in the **Nodes**, and a link between **Leaves** is added, to speed up the browsing : no need to go up to the parent's node to get the next value when reaching the end of a leaf. Also the **nodes** don't contain values.

## B*tree

A slightly different form of **B+tree**, where the number of elements per page is enforced to be at leat 2/3rd of the maximum numbers of elements the page can hold. It speeds up the retrieval of elements a bit, as we have a denser tree.

## Counted B-tree

Another slightly different implementation of a **B+tree**, where the number of elements stored in the descendants is stored within each key. This allows an easy count of elements on the left and right to any element, at the price of additional piece of information being added on each page.

## MVCC B-tree

This is a new 'style' of **B+tree**, where the structure is exactly the same than a simple **B+tree**, except that we keep old versions alive, until nobody use them. The idea is that a new revision of the **B+tree** is added only when an update is fully done. This has the extremely intersting characteristic that there is no need of locks for read and writes, assuming that writes are not concurrent (they are serialized).

In other words, you may have many reads at the same time, still being able to update the data.

It comes with a price though : a lot of pages are copied during every update, as we create a new copy of every modified page, up to the root page. 

We also have to manage old pages that can be removed as they belong to unused versions, which requires some extra work.

**Mavibot** is a Java based implementation of a **MVCC B+tree**.