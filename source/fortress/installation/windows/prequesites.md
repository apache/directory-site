---
title: System Prequesites
navPrev: windows.html
navPrevText: Quickstart Windows - Table of contents
navUp: windows.html
navUpText: Quickstart Windows - Table of contents
navNext: guidelines.html
navNextText: Guidelines and Tips for first-time users
---

# System Prerequisites

The following steps are required...

* Internet access to retrieve binary dependencies from online Maven repo.
* Java SDK Version 7 or beyond installed to target environment

NOTE: The Fortress build.xml may run without connection to Internet if:

* The binary dependencies are already present in FORTRESS_HOME/lib folder
* Local mode has been enabled on target machine. Local mode can be enabled by adding this property to build.properties: 

    local.mode=true
