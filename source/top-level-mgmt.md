---
title: Top Level Management Policy
---

# Top Level Management Policy



## What is the TLP POM?

The top level Maven Project Object Model (POM) for Directory is used to centralize information about the Directory Project which is common to all projects at the TLP. It can be used in the POM inheritance tree to make sure subprojects use the appropriate repositories and contain the same information that can be managed centrally rather than duplicated in every subproject's master POM file.

## Some History Regarding Maven Interactions

The top level POM was used initially to build all the projects at Directory which is a bit out of line with what it should really have been used for as stated above. Hence it has directives now to build all the subprojects like shared and daemon as well as apacheds. This causes it's misuse to facilitate building ApacheDS and all it's dependencies in one big build. This must stop because this usage makes it inconvenient to use for building other projects like Triplesec and Apache Directory Studio once it moves to Maven.

Futhermore because of the limitations of subversion externals directives this file is being copied into a directory that contains all the ApacheDS external dependencies. SVN does not allow an externals link on a file. Externals can only be used with directories. So the file is being copied to build ADS in different branches and we're failing to properly version this file.

NOTE: Some may ask, "If we do not copy this pom.xml into the apacheds-with-dependencies SVN folders then how do we build ApacheDS with all it's dependencies at one time?" The best way around this is to create a new simple POM with just a modules section in these SVN folders (w/ externals to ApacheDS dependencies) and give it a totally different subproject specific artifact Id to indicate it's use for things like this. Deploying this placeholder pom.xml is not really necessary but it can be done.

Another issue regarding the TLP POM file for Directory exists due to a Maven bug. Maven cannot resolve and download SNAPSHOT parent POMs it seems. So if projects refer to this TLP POM as their parent they must refer to a non-SNAPSHOT version of it. Otherwise when attempting to build the subproject the build will fail. For example if the daemon subproject refers to 1.0.5-SNAPSHOT of the TLP POM as it's parent the build for the daemon project will fail unless this 1.0.5-SNAPSHOT pom.xml file is in the directory above the daemon sources and the build is issued one level above the daemon folder. If of course the 1.0.5-SNAPSHOT is already in the local repository then there is no problem. This situation prevents successful builds on fresh checkouts of subprojects like daemon or apacheds when the parent TLP POM is a SNAPSHOT.

## Corrective Actions to Properly Use the TLP POM

* TLP POM shall have no modules section (not used to build other projects)
* Remove all elements which specific to a project - only common information is to be stored in this TLP POM
* Do not copy the TLP POM in SVN
* All Mavenized subprojects shall use this TLP POM as their parent
* No SNAPSHOTs of TLP pom are to be managed - changes are atomic causing a bump in the revision with an immediate release of the TLP POM
* No vote needed for TLP POM release for PMC members - just a notification to release with 4 hour grace period to accommodate the lack of using SNAPSHOT for this POM

## Managing Releases

Since we are using Nexus for releases the release process is as follows (see also http://www.apache.org/dev/publishing-maven-artifacts.html#staging-maven).

* Prepare the POM

```
$ mvn release:prepare -DdryRun=true
```

* Deploy a snapshot

```
$ mvn deploy
```

This is useful to verify your settings in _~/.m2/settings.xml_ (Nexus password and GPG key)

* Prepare the release

```
$ mvn release:clean
$ mvn release:prepare
```

When asked for the SCM release tag please remove the project prefix, the version number is enough.

This creates a tag [here (this is an example for tag 2.0.0.AM27)](https://github.com/apache/directory-server/tree/2.0.0.AM27)

* Stage the release

```
$ mvn release:perform
```

This deploys the POM to a staging repository. Go to [the Nexus staging Repositories](https://repository.apache.org/index.html#stagingRepositories) and close the staging repository.

* Inform dev list

Inform the dev list to publish (release) this POM. After a 4 hr grace period the POM can be released, therefor go to [the Nexus staging Repositories](https://repository.apache.org/index.html#stagingRepositories) and release the staging repository.

Only PMC members are allowed to release this POM since it requires special handling and information associated with the TLP. Normal committers must request that a PMC member handle the publishing of this file.
