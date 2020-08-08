---
title: Developer's Guide
---

# Developer's Guide

This is a simple guide to help developers get going.

## Source Repository

To get the source, you will need to have git installed. Just type the following command to get the latest development version:

	git clone https://gitbox.apache.org/repos/asf/directory-kerby.git

	
## Git Mirror

The git repository is mirrored to Github: <https://github.com/apache/directory-kerby/>.

## Build Requirements:

* JDK 1.7+
* Maven 3.0 or later
* Internet connection for first build (to fetch all Maven and Kerby dependencies)

##Where to run Maven from?

It should be run at the top directory of Kerby.

##Maven build goals:

* Clean         : mvn clean
* Compile       : mvn compile
* Run tests     : mvn test
* Create JAR    : mvn package
* Install JAR in M2 cache   : mvn install
* Deploy JAR to Maven repo  : mvn deploy
* Build distribution        : mvn package [-Pdist]
* Run findbugs   : mvn compile findbugs:findbugs
* Run benchmarks : mvn integration-test -Pbenchmark

##Build options:

* To run findbugs without running tests :

    $ mvn clean package -DskipTests findbugs:findbugs [site]

* Building distributions without running tests :

    $ mvn package -Pdist -DskipTests  

(tar package in /kerby/kerby-dist/kdc-dist/target/ & /kerby/kerby-dist/tool-dist/target/)

* Generate javadoc without running tests:

    $ mvn clean package -DskipTests javadoc:javadoc

* Checkstyle plugin & pmd plugin are run by default. 
To prevent them from running, add option [-Pnochecks], such as:

    $ mvn package -Pnochecks
	
## Setup Intellij

1. File -> Import Project...
2. Choose 'directory-kerby' as root directory
3. Import project from external model -> Maven
4. Finish


## Issue Tracker

Jira: https://issues.apache.org/jira/browse/DIRKRB


