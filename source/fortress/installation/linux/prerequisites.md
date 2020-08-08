---
title: System Prequesites
navPrev: linux.html
navPrevText: Quickstart Linux - Table of contents
navUp: linux.html
navUpText: Quickstart Linux - Table of contents
navNext: guidelines.html
navNextText: Guidelines and Tips for first-time users
---

# System Prerequisites

* Internet access to retrieve binary dependencies from online Maven repo.
* Java SDK Version 7 or beyond installed to target environment
* Redhat or Ubuntu server machine
* 1GB RAM
* 20GB HD

NOTE: The Fortress build.xml may run without connection to Internet if:

* The binary dependencies have previously been downloaded to FORTRESS_HOME/lib folder
* Local mode has been enabled on target machine. Local mode can be enabled by adding this property to build.properties: _local.mode=true_

