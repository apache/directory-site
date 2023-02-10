---
title: Mavibot Developers Guide
---

# Mavibot Developers Guide

We will describe how to get the code, build it, and release it.

{{% toc %}}

## Getting the source, Building the trunks

### Prerequisites for building

You must have installed **Maven 3.0.4** and have a **JDK 8** installed on your computer. A working internet connection is also mandatory, unless you have all the needed dependences and plugins loaded locally.

<DIV class="note" markdown="1">
If the build hangs or you get an out of memory exception please increase the heap space:

* For Linux:

    MAVEN_OPTS="-Xmx1024m" mvn clean install

* For Windows:

      SET MAVEN_OPTS="-Xmx1024m"
      mvn clean install
</DIV>

### Maven

[Download](https://maven.apache.org/download.html) and install Maven 3.0.4.

Add a MAVEN_HOME environment variable and add MAVEN_HOME/bin to your system path:

On a Linux box you could add the following to the .bashrc file  (.bashrc is a file you'll find in your home directory)


    ...
    export MAVEN_HOME=/opt/maven-3.0.4
    export PATH=$JAVA_HOME:$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH
    ...

Windows users, use Control Panel -> System -> Advanced -> Environment Variables

### JDK 8

<DIV class="note" markdown="1">
We recommend using a version >= 8
</DIV>

Any newer version should also work.

## Getting the code

To download the sources from trunk, you must have installed a **Subversion** client.

With readonly access :

    svn co http://svn.apache.org/repos/asf/directory/mavibot/trunk mavibot-trunk

With read/write access (for committers only) :

    svn co https://svn.apache.org/repos/asf/directory/mavibot/trunk mavibot-trunk

## Building the trunk

You may either specify the profile at the command-line, each time you use 'mvn', or you may configure the profile to always be active.

To use a profile at the command-line:

    # mvn [-P<profile>] [options] [<goal(s)>] [<phase(s)>]


### Building the trunk, for real

Now, we can compile the projects.

The command is simple :

    cd mavibot-trunk
    mvn clean install

A lot of plugins will be downloaded. If you are curious, you can then look at .m2/repository to see what has been downloaded on this step.

Building should finish with these lines:

    
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESSFUL
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 8 minutes 30 seconds
    [INFO] Finished at: Mon Oct 30 23:32:41 CET 2006
    [INFO] Final Memory: 18M/32M
    [INFO] ------------------------------------------------------------------------


That's it, the jars will be find in target/mavibot-1.0.0-M?-<XXXXXX>-setup.jar where XXXXXX is your local system and M? is the milestone release number for the 1.0 branch.

## Eclipse

We use Eclipse extensively, so these chapters, byt any other idea would be ok too.

### Building eclipse files

To build the .project and .classpath files for eclipse, type the following commands :

    cd mavibot-trunk
    mvn eclipse:eclipse

### Maven settings

Don't forget to declare a classpath variable named M2_REPO, pointing to ~/.m2/repository, otherwise many links to existing jars will be broken.

You can declare new variables in Eclipse in _Windows -> Preferences..._ and selecting _Java -> Build Path -> Classpath Variables_

## Coding standards 

The applicable coding standards for Mavibot are described in [Coding Standards](coding-standards.html)

There are some more rules, as we are using **Java 8** now :

* Use generics as much as you can. Generic are a good way to avoid casting, and it enforce the usage of the correct type.
* If you can avoid *Iterators*, do so. There is this cool construction with a **for( Type t:<collection instance> )** : use it !
* Use **assert**. It's usefull, especially instead of a bunch of **if (<test is wrong>)** then throw Exception* when controlling incoming parameters
* Use the new *Enum* type !

# Releasing Mavibot

Since we are using Nexus for releases the release process is as follows (see also [https://www.apache.org/dev/publishing-maven-artifacts.html#staging-maven](https://www.apache.org/dev/publishing-maven-artifacts.html#staging-maven)).

## Test the Project
    
    
    $ mvn release:prepare -DdryRun=true

Be aware that this phase will ask you about the next version, and most important, for the next SCM tag :

    
    ...
    [INFO] Checking dependencies and plugins for snapshots ...
    What is the release version for "ApacheDS Mavibot Parent"? (org.apache.directory.mavibot:mavibot-parent) 1.0.0-M1: : 
    What is the release version for "ApacheDS MVCC BTree implementation"? (org.apache.directory.mavibot:mavibot) 1.0.0-M1: : 
    What is the release version for "Apache Mavibot Distribution"? (org.apache.directory.mavibot:distribution) 1.0.0-M1: : 
    What is SCM release tag or label for "ApacheDS Mavibot Parent"? (org.apache.directory.mavibot:mavibot-parent) 1.0.0-M1: : 
    What is the new development version for "ApacheDS Mavibot Parent"? (org.apache.directory.mavibot:mavibot-parent) 1.0.0-M2-SNAPSHOT: : 
    What is the new development version for "ApacheDS MVCC BTree implementation"? (org.apache.directory.mavibot:mavibot) 1.0.0-M2-SNAPSHOT: : 
    What is the new development version for "Apache Mavibot Distribution"? (org.apache.directory.mavibot:distribution) 1.0.0-M2-SNAPSHOT: : 

Here, we just validated the proposed versions.

## Deploy a Snapshot

    
    $ mvn deploy

This is useful to verify your settings in ~/.m2/settings.xml (Nexus password and GPG key)

## Prepare the Release

    
    $ mvn release:clean
    $ mvn release:prepare

This creates a tag here: https://svn.apache.org/viewvc/directory/mavibot/tags/

## Stage the Release

    
    $ mvn release:perform

This deploys the release to a staging repository.

Go to [https://repository.apache.org/index.html#stagingRepositories](https://repository.apache.org/index.html#stagingRepositories) and close the staging repository.

## Build the Site

    
    $ cd target/checkout
    $ mvn site

This creates the javadocs and the cross-references.

Now, you have to sign the binary packages which are in target/checkout/distribution/target.

Use your PGP key ID (the pub key, 4096R/[XXXXXXX] where [XXXXXXX] is the key ID)

You can get the keys by typing :

    gpg --list-keys

## Publish Source and Binary Distribution Packages

First of all, create a new directory on people.apache.org/public_html to store the packages :

    
    $ ssh people.apache.org
    $ mkdir public_html/mavibot-<version>
    $ exit

Then copy the packages :

    
    $ cd distributions/target
    $ scp mavibot-<version>-* people.apache.org:public_html/mavibot-<version>/

Update your index.html file on people.apache.org/public_html to make the packages visible. Here is an example of possible content :

```html
<h2>Mavibot 1.0.0-M1 tarballs</h2>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-bin.tar.gz">mavibot-1.0.0-M1-bin.tar.gz</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-bin.tar.gz.asc">mavibot-1.0.0-M1-bin.tar.gz.asc</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-bin.tar.gz.md5">mavibot-1.0.0-M1-bin.tar.gz.md5</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-bin.tar.gz.sha1">mavibot-1.0.0-M1-bin.tar.gz.sha1</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-bin.zip">mavibot-1.0.0-M1-bin.zip</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-bin.zip.asc">mavibot-1.0.0-M1-bin.zip.asc</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-bin.zip.md5">mavibot-1.0.0-M1-bin.zip.md5</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-bin.zip.sha1">mavibot-1.0.0-M1-bin.zip.sha1</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-src.tar.bz2">mavibot-1.0.0-M1-src.tar.bz2</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-src.tar.bz2.asc">mavibot-1.0.0-M1-src.tar.bz2.asc</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-src.tar.bz2.md5">mavibot-1.0.0-M1-src.tar.bz2.md5</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-src.tar.bz2.sha1">mavibot-1.0.0-M1-src.tar.bz2.sha1</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-src.tar.gz">mavibot-1.0.0-M1-src.tar.gz</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-src.tar.gz.asc">mavibot-1.0.0-M1-src.tar.gz.asc</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-src.tar.gz.md5">mavibot-1.0.0-M1-src.tar.gz.md5</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-src.tar.gz.sha1">mavibot-1.0.0-M1-src.tar.gz.sha1</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-src.zip">mavibot-1.0.0-M1-src.zip</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-src.zip.asc">mavibot-1.0.0-M1-src.zip.asc</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-src.zip.md5">mavibot-1.0.0-M1-src.zip.md5</a><br/>
  <img src="/icons/compressed.gif" alt="[   ]"><a href="mavibot-1.0.0-M1/mavibot-1.0.0-M1-src.zip.sha1">mavibot-1.0.0-M1-src.zip.sha1</a><br/>
```

## Vote

Start a 72h vote at the dev mailing list.

Here is an exemple of a mote mail :

    
    Hi !

    This is the first release of Apache Mavibot, the MVCC BTree in Java !

    This milestone is the first step toward a complete MVCC implementation,
    it currently does not handle versions at all. Anyway, it's already a in
    memory/On disk full BTree implementation, which is 2 to 3 times faster
    than JDBM.

    The next milestones will add the missing features :
    - bulk load support
    - multi-version support with free pages management
    - transaction support

    ApacheDS has already been tested with Mavibot 1.0.-M1-SNAPSHOT, and it
    offers pretty good performances compared to JDBM, except when we inject
    a lot of entries in the server.

    So let's vote now !


    The revision :

    https://svn.apache.org/r1511750


    The SVN tag:
    https://svn.apache.org/repos/asf/directory/mavibot/tags/1.0.0-M1/

    The source and binary distribution packages:
    https://people.apache.org/~elecharny/

    The staging repository:
    https://repository.apache.org/content/repositories/orgapachedirectory-073/


    Please cast your votes:
    [ ] +1 Release Mavibot 1.0.0-M1
    [ ] 0 abstain
    [ ] -1 Do not release Mavibot 1.0.0-M1
    
    Emmanuel

## Release

If the vote succeeds the Mavibot project can be released.

Go to [https://repository.apache.org/index.html#stagingRepositories](https://repository.apache.org/index.html#stagingRepositories) and release the staging repository so all artifacts are published to Maven central.

Move the distribution packages (sources and binaries) to the dist SVN repository: 

    **https://dist.apache.org/repos/dist/release/directory/mavibot/dist/$(version)**

The best solution would be to checkout the directory in people.apache.org, to copy the packages in the right place, and to check in the changes :

    
    $ ssh people.apache.org
    # svn co https://dist.apache.org/repos/dist/release/directory/mavibot/dist/ mavibot-dist
    # cd mavibot-dist
    # mkdir <version>
    # cp ../public_html/mavibot-<version>/* <version>
    # svn add <version>
    # svn ci <version> -m "Releasing Mavibor <version>"
    Authentication realm: <https://dist.apache.org:443> ASF Committers
    Password for '<committer>': xyz
    ...
    # exit
    $

The packages should now be available on **http://www.us.apache.org/dist/directory/mavibot/dist/<version>**

## Deploy the Javadocs and XRef

We now can deploy the generated Javadoc and cross-reference pages. They are generated in the following directory :

    
    target/checkout/target/site

We will copy two directories :

    
    apidocs
    xref

*Staging or Production?*

Those files will be stored on the production server only !!! And some extra caution must be taken not to delete them when we will publish the staging site too...

First of all, you must checkout the two CMS store for the site : staging and revision.

    
    $ cd ~/apacheds
    $ svn co https://svn.apache.org/repos/infra/websites/staging/directory/trunk staging
     ...
    $ svn co https://svn.apache.org/repos/infra/websites/production/directory production
     ...

Now, you will first add the directory for the newly generated version :

    
    $ cd ~/apacheds/production/content/mavibot/gen-docs
    $ mkdir <version>
    $ svn add <version>

Then copy the generated docs :

    
    $ cp -r ~/apacheds/trunks/mavibot/target/checkout/target/site/apidocs ~/apacheds/production/content/mavibot/gen-docs/<version>
    $ cp -r ~/apacheds/trunks/mavibot/target/checkout/target/site/xref ~/apacheds/production/content/mavibot/gen-docs/<version>
    $ 

You have to check in those directories :

    
    $ svn add <version>/*
    $ svn ci <version> -m "Injected <version> javadocs"

Now, you have to update the staging site :

    
    extpaths.txt

This file list the file on the production site that will not be overriden by the publication of the staging site. It has to be updated

    
    $ cd ~/apacheds/staging/content/
    $ vi extpaths.txt

Add the following line :

    
    ...
    # Mavibot
    mavibot/gen-docs/<version>
    ...

then save and check in the file 

**.htaccess**

We also have to update this file :

    
    $ cd ~/apacheds/staging/content/mavibot/gen-docs
    $ vi .htaccess

And update the two last lines to refer to the version you've just released :

    
    RewriteRule ^latest$ <version>/
    RewriteRule ^latest/(.*)$ <version>/$1

Save and commit the file.

## Update the web site

You can now update the site, add a news on the front page, and publish the site.

There are a few places to modify :
- /config.toml : update the version_mavibot variable with the new version.
- /source/_index.md  : same here, update the <!-- MAVIBOT project --> section, which contains the version.
- /source/mavibot/news.md : add the news on top of thise page
- /source/mavibot/download-old-versions.md : add a new line on top of the array, which refers to the latest version before the new one

Commit the changes, and publish the web site, you are done !

## Inform the world !

After 24h, you can now inform the world about the release.

Send a mail to the users and dev mailing list, and one to the announce@apache.org list.

You are done !
