---
title: 3 - Administrative Model
navPrev: 2.2.5-generic-instance-layout.html
navPrevText: 2.2.5 - Generic Instance Layout
navUp: ../advanced-user-guide.html
navUpText: Advanced User Guide
navNext: 3.1-administrative-points.html
navNextText: 3.1 - Administrative Points
---

## Chapter content

* [3.1 - Administrative Points](3.1-administrative-points.html)
* [3.2 - Operations on an Administrative Point](3.2-operations-on-an-administrativepoint.html)

# 3 - Administrative Model

The **Administrative Model** is a really critical notion that needs to be understood, because it drives many of ApacheDS roles.

It's directly inherited by the **X.500** Administrative model (in fact, we do implement the full **X.500** specification related to **AAs**).

## What is the Administrative Model ?

The idea is to define the **DIT** as some areas which are administered.
Each area can be defined, and covers a set of entries, and each area can manage one ore more roles we want to manage.
Those roles can be related to authorization, schema, etc... Each of these areas can overlap, but in any case, if two areas are overlapping,
then one area totally includes the other one.

The Administrative Model is everything we need to implement in order to be able to manage roles on some defined areas.

## Areas

An Area describes a part of the **DIT** which will start from a specific entry, and spans across a part of the subtree starting at the base entry. An area is administered by an **AP** (Administrative Point) which holds all the needed information about the area and the roles.

We have three kind of areas :

* AAA : Autonomous Administrative Areas
* SAA : Specific Administrative Areas
* IAA : Inner Administrative Areas

**AAAs** cover all the roles as if we had declared one **SAA** for each existing role. They overload any area in which they can be encapsulated, hiding them.

**SAAs** cover one specific role, and overload any encapsulating area with the same role.

**IAAs** cover one specific role, but don't not overload any encapsulating area with the same role.

## Administration Point

An **Administration Point** is the point in the **DIT** where an area starts. It defines the roles, and the scope that applies to this area.

Once we know which area we need to define, and the associated roles, it's mandatory to store those information in the **DIT**. This is done by adding **subentries**, which just are entries storing all the administrative configuration.

An Administrative Point is stored as a **subentry** (which is just a plain LDAP entry) just below the base of the defined area.

<DIV class="info" markdown="1">
	A **Subentry** is just a plain normal entry except that it contains administrative model informations.
	They are stored below the entry they are managing, as a child entry.
</DIV>

<DIV class="note" markdown="1">
	We also use the term "subtree" to define areas. This is due to the fact that we define a subtree specification in the administration point to express the set of selected entries.
</DIV>

## Roles

The roles are the various aspects which are managed by the administration points. Currently, we manage five different roles in ApacheDS :

* Authorization : manage the access to entries
* Schema : define the schema to be used by a subtree
* Triggers : define the triggers that can be leveraged in a subtree
* Collective Attributes : manage attributes that are valid ofr a set of entries
* Replication : manage the replication of a set

# ApacheDS 2.0 coverage

Currently, in Apache 2.0, we don't implement all this model. What is supported is :

* AAA and SAA : We don't currently support IAA
* We don't have more than one schema
* Replication is not managed with any administration point

Those missing parts will be implemented in the forthcoming versions.

