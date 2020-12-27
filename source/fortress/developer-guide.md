---
title: Developer Guide
---

# Building FORTRESS

<DIV class="note" markdown="1">
	Please read <a href="https://www.apache.org/dev/" class="external-link" rel="nofollow">the Developer Infrastructure Information</a> if you haven't yet before you proceed.
</DIV>

{{% toc %}}

# Checking out the code

You need Git to check out the source code from our source code repository, and [Maven(https://maven.apache.org/) 3.0 to build the source code.  The following example shows how to get the Fortress projects.

## Fortress-core

    $ git clone https://gitbox.apache.org/repos/asf/directory-fortress-core.git fortress-core
    $ cd fortress-core
    $ mvn clean install             # Build packages (JARs) for the Fortress core API and other 
                                    # extensions and install them to the local Maven repository.
    $ mvn site                      # Generate reports (JavaDoc and various other reports)
    $ mvn package                   # Generate a tarball

Eclipse users:
Don't forget to declare a classpath variable named M2_REPO, pointing to `~/.m2/repository`, otherwise many links to existing jars will be broken.
You can declare new variables in Eclipse in Windows -> Preferences... and selecting Java -> Build Path -> Classpath Variables

If you want to check out the source code of previous releases, you have to select the branch you want to work on :

  $ git clone https://gitbox.apache.org/repos/asf/directory-fortress-core.git fortress-core
  $ git checkout <tag>


## Fortress-realm

    $ git clone https://gitbox.apache.org/repos/asf/directory-fortress-realm.git fortress-realm
    $ cd fortress-realm
    $ mvn clean install             # Build packages (JARs) for the Fortress realm API and other 
                                    # extensions and install them to the local Maven repository.
    $ mvn site                      # Generate reports (JavaDoc and various other reports)
    $ mvn package                   # Generate a tarball

Eclipse users:
Don't forget to declare a classpath variable named M2_REPO, pointing to `~/.m2/repository`, otherwise many links to existing jars will be broken.
You can declare new variables in Eclipse in Windows -> Preferences... and selecting Java -> Build Path -> Classpath Variables

If you want to check out the source code of previous releases, you have to select the branch you want to work on :

  $ git clone https://gitbox.apache.org/repos/asf/directory-fortress-realm.git fortress-realm
  $ git checkout <tag>


## Fortress-enmasse

    $ git clone https://gitbox.apache.org/repos/asf/directory-fortress-enmasse.git fortress-enmasse
    $ cd fortress-enmasse
    $ mvn clean install             # Build packages (JARs) for the Fortress enmasse API and other 
                                    # extensions and install them to the local Maven repository.
    $ mvn site                      # Generate reports (JavaDoc and various other reports)
    $ mvn package                   # Generate a tarball

Eclipse users:
Don't forget to declare a classpath variable named M2_REPO, pointing to `~/.m2/repository`, otherwise many links to existing jars will be broken.
You can declare new variables in Eclipse in Windows -> Preferences... and selecting Java -> Build Path -> Classpath Variables

If you want to check out the source code of previous releases, you have to select the branch you want to work on :

  $ git clone https://gitbox.apache.org/repos/asf/directory-fortress-enmasse.git fortress-enmasse
  $ git checkout <tag>


## Fortress-commander

    $ git clone https://gitbox.apache.org/repos/asf/directory-fortress-commander.git fortress-commander
    $ cd fortress-commander
    $ mvn clean install             # Build packages (JARs) for the Fortress commander API and other 
                                    # extensions and install them to the local Maven repository.
    $ mvn site                      # Generate reports (JavaDoc and various other reports)
    $ mvn package                   # Generate a tarball

Eclipse users:
Don't forget to declare a classpath variable named M2_REPO, pointing to `~/.m2/repository`, otherwise many links to existing jars will be broken.
You can declare new variables in Eclipse in Windows -> Preferences... and selecting Java -> Build Path -> Classpath Variables

If you want to check out the source code of previous releases, you have to select the branch you want to work on :

  $ git clone https://gitbox.apache.org/repos/asf/directory-fortress-commander.git fortress-commander
  $ git checkout <tag>

# Coding Convention

The applicable coding standards for Fortress are described in [Coding Standards](coding-standards.html)

# Deploying Snapshots (Commiters Only)

Before running Maven to deploy artifacts, *please make sure if your umask is configured correctly*.  Unless configured properly, other committers will experience annoying 'permission denied' errors.  If your default shell is `bash`, please update your umask setting in the `~/.bashrc` file (create one if it doesn't exist.) by adding the following line:

    umask 002

Please note that you have to edit the correct `shrc` file.  If you use `csh`, then you will have to edit `~/.cshrc` file.

Now you are ready to deploy the artifacts if you configured your umask correctly.

    $ git clone https://gitbox.apache.org/repos/asf/directory-fortress-core.git fortress-core
    $ cd fortress-core
    $ mvn clean deploy site site:deploy    # Make sure to run 'clean' goal first to prevent side effects from your IDE.

(do the same thing for the *enmasse, realm and commander* projects)

Please double-check the mode (i.e. `0664` or `-rw-rw-r--`, a.k.a permission code) of the deployed artifacts, otherwise you can waste other people's time significantly.

# Releasing a Point Release (Committers Only)

## Preparing the release for the vote

Before starting be sure to have the java and mvn command in your PATH.
On linux you can check with the following commands :

    $ type mvn
    mvn is hashed (/opt/apache-maven-3.2.5/bin/mvn)
    $ type java
    java is /usr/bin/java

### Step 0: Building Fortress-xxx

<DIV class="note" markdown="1">
Here, 'xxx' is one of the four fortress mdules : core, enmasse, realm or comander
</DIV>

### Step 1: Tagging and Deploying

First you need to configure maven for using the good username for scp and operation.

In the `~/.m2/settings.xml` you need the following lines :

```xml
<settings xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
                      http://maven.apache.org/xsd/settings-1.0.0.xsd">

  <!-- SERVER SETTINGS -->
  <servers>
    <!-- To publish a snapshot of some part of Maven -->
    <server>
      <id>apache.snapshots.https</id>
      <username>elecharny</username>
      <password>-----Your password here-----</password>
    </server>
    <!-- To publish a website of some part of Maven -->
    <server>
      <id>apache.websites</id>
      <username>elecharny</username>
      <filePermissions>664</filePermissions>
      <directoryPermissions>775</directoryPermissions>
    </server>
    <!-- To stage a release of some part of Maven -->
    <server>
      <id>apache.releases.https</id>
      <username>elecharny</username>
      <password>-----Your password here-----</password>
    </server>
    <!-- To stage a website of some part of Maven -->
    <server>
      <id>stagingSite</id> <!-- must match hard-coded repository identifier in site:stage-deploy -->
      <username>elecharny</username>
      <filePermissions>664</filePermissions>
      <directoryPermissions>775</directoryPermissions>
    </server>
  </servers>

  <!-- PROFILE SETTINGS -->
  <profiles>
    <profile>
      <id>apache-release</id>
      <properties>
        <!-- Configuration for artifacts signature -->
        <gpg.passphrase>-----Your passphrase here-----</gpg.passphrase>
      </properties>
    </profile>
  </profiles>

</settings>
```

### step 2 : Processing with a dry run

After having checked out the trunk, and built it (see step 0), 

    $ git clone https://gitbox.apache.org/repos/asf/directory-fortress-core.git directory-fortress-core
    $ cd directory-fortress-core
    $ mvn clean install

run the following commands :

    $ mvn -Papache-release -DdryRun=true release:prepare    # Dry-run first.

Answer to maven questions :

    "What is the release version for "Apache Fortress Core"? (org.apache.directory.project:fortress-core) 1.0-RC40: :" 
    <either use the default version as suggested, or type in the version you@qot;d like to be used>
    [..]

Then some other questions will be asked, about the next version to use. The default values should be fine :

    What is SCM release tag or label for "Apache Fortress Core"? (org.apache.directory.project:fortress-core) 1.0-RC40: : 
    <Same here : keep 1.0-RC40, or change it if needed>
    What is the new development version for "Apache Fortress Core"? (org.apache.directory.project:fortress-core) 1.0-RC41-SNAPSHOT: : 
    <Same here...>

<DIV class="info" markdown="1">
**Be Careful**
	
Make sure the change made by the release plugin is correct! (pom.xml, tags created)
</DIV>
	
### Step 3 : Processing with the real release
When the dry run is successful, then you can do in real with the following commands:

    $ mvn -Papache-release release:clean      # Clean up the temporary files created by the dry-run.
    $ mvn -Papache-release release:prepare    # Copy to tags directory.

The first step will clean up the local sources, the second step will release for real. The same questions will be asked as those we had during the dry run step.

At some point, it will ask for your passphrase (the one you used when you created your PGP key). Type it in.


Three mails will be generated, and sent to commits@directory.apache.org :

    git commit: [maven-release-plugin] prepare release 2.0.9
    Git Push Summary
    git commit: [maven-release-plugin] prepare for next development iteration
    
    Repository: directory-fortress-core
    Updated Branches:
      refs/heads/master 7f1f90d2b -> bb9137136
    
    
    [maven-release-plugin] prepare release 1.0-RC40
    
    
    Project: https://gitbox.apache.org/repos/asf/directory-fortress-core/repo
    Commit: https://gitbox.apache.org/repos/asf/directory-fortress-core/commit/bb913713
    Tree: https://gitbox.apache.org/repos/asf/directory-fortress-core/tree/bb913713
    Diff: https://gitbox.apache.org/repos/asf/directory-fortress-core/diff/bb913713
      
    Branch: refs/heads/master
    Commit: bb9137136d58f334415825b15f58c3173c923de2
    Parents: 7f1f90d
    Author: Emmanuel Lecharny <elecharny@symas.com>
    Authored: Fri Apr 3 15:35:20 2015 +0200
    Committer: Emmanuel Lecharny <elecharny@symas.com>
    Committed: Fri Apr 3 15:35:20 2015 +0200
    ...

The first mail tells you that the SNAPSHOT has been moved to the release version in trunk, the second mails tells you that this version has been tagged, and the last mail tells you that trunk has moved to the next version.


### Step 4 : perform the release

The last step before launching a vote is to push the potential release to Nexus so that every user can test the created packages. Perform the following actions

    $ mvn -Papache-release release:perform
    ...
    [INFO] [INFO] ------------------------------------------------------------------------
    [INFO] [INFO] BUILD SUCCESS
    [INFO] [INFO] ------------------------------------------------------------------------
    [INFO] [INFO] Total time: 01:00 min
    [INFO] [INFO] Finished at: 2015-04-03T15:41:26+02:00
    [INFO] [INFO] Final Memory: 50M/247M
    [INFO] [INFO] ------------------------------------------------------------------------
    [INFO] Cleaning up after release...
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 01:16 min
    [INFO] Finished at: 2015-04-03T15:41:26+02:00
    [INFO] Final Memory: 17M/247M
    [INFO] ------------------------------------------------------------------------

Done !

### Step 5 : closing the staging release on nexus

Now, you have to close the staged project on nexus. In order to do that you *must* have exported your PGP key to a PGP public server [see](https://www.apache.org/dev/openpgp.html)

Connect to the [Nexus server](https://repository.apache.org), login, and select the FORTRESS staging repository you just created, then click on the 'close' button. You are home...

### Step 6 : Build the Site

    $ cd target/checkout
    $ mvn site

This creates the site.

### Step 7 : Sign the packages 

Now, you have to sign the binary packages which are in target/checkout/target.

<DIV class="note" markdown="1">
Use your PGP key ID (the pub key, 4096R/[XXXXXXX] where [XXXXXXX] is the key ID)
</DIV>

You can get the keys by typing :

    gpg --list-keys

You'll get something like :

    $ gpg --list-keys
    /Users/elecharny/.gnupg/pubring.gpg
    -----------------------------------
    pub   2048D/xxxxxxxx 2009-12-03
    uid                  Emmanuel Lecharny <elecharny@nextury.com>
    sub   2048g/yyyyyyyy 2009-12-03

    pub   4096R/zzzzzzzz 2010-09-13
    uid                  Emmanuel Lecharny (CODE SIGNING KEY) <elecharny@apache.org>
    sub   4096R/tttttttt 2010-09-13
    ...

Take the <zzzzzzzz> part of your 4096 bit key.

Use a shell script to sign the packages which are stored in target/checkout/target. You will first have to delete the created .asc files :

    $ cd target/checkout/target
    $ rm *.asc
    $ ~/sign.sh 
    PGP Key ID: 
    <your PGP key>
    PGP Key Password: 
    <Your PGP passphrase>
    
    -n Signing: ./fortress-core-1.0-RC40-javadoc.jar ... 
      - Generated './fortress-core-1.0-RC40-javadoc.jar.md5'
      - Generated './fortress-core-1.0-RC40-javadoc.jar.sha1'
      - Generated './fortress-core-1.0-RC40-javadoc.jar.asc'
    -n Signing: ./fortress-core-1.0-RC40-source-release.zip ... 
      - Generated './fortress-core-1.0-RC40-source-release.zip.md5'
      - Generated './fortress-core-1.0-RC40-source-release.zip.sha1'
      - Generated './fortress-core-1.0-RC40-source-release.zip.asc'
   -n Signing: ./fortress-core-1.0-RC40-sources.jar ... 
      - Generated './fortress-core-1.0-RC40-sources.jar.md5'
      - Generated './fortress-core-1.0-RC40-sources.jar.sha1'
      - Generated './fortress-core-1.0-RC40-sources.jar.asc'
    -n Signing: ./fortress-core-1.0-RC40.jar ... 
      - Generated './fortress-core-1.0-RC40.jar.md5'
      - Generated './fortress-core-1.0-RC40.jar.sha1'
      - Generated './fortress-core-1.0-RC40.jar.asc'
    ...


Here is the sign.sh script you can use :

    #!/bin/sh
  
    echo "PGP Key ID: "
    read DEFAULT_KEY

    echo "PGP Key Password: "
    stty -echo
    read PASSWORD
    stty echo
    echo ""

    for FILE in $(find . -maxdepth 1 -not '(' -name "sign.sh" -or -name ".*" \
          -or -name "*.md5" -or -name "*.sha1" -or -name "*.asc" ')' -and -type f) ; do
        if [ -f "$FILE.asc" ]; then
            echo "Skipping: $FILE"
            continue
        fi

        echo -n "Signing: $FILE ... "

        # MD5
        if [ ! -f "$FILE.md5" ];
        then
            openssl md5 < "$FILE" | cut "-d " -f2 > "$FILE.md5"
            echo "  - Generated '$FILE.md5'"
        else
            echo "  - Skipped '$FILE.md5' (file already existing)"
        fi

        # SHA1
        if [ ! -f "$FILE.sha1" ];
        then
            gpg -v --default-key "$DEFAULT_KEY" --print-md SHA1 "$FILE" > "$FILE".sha1
            echo "  - Generated '$FILE.sha1'"
        else
            echo "  - Skipped '$FILE.sha1' (file already existing)"
        fi

        # ASC
        if [ ! -f "$FILE.asc" ];
        then
            echo "$PASSWORD" | gpg --default-key "$DEFAULT_KEY" --detach-sign --armor --no-tty --yes --passphrase-fd 0 "$FILE"
            echo "  - Generated '$FILE.asc'"
        else
            echo "  - Skipped '$FILE.asc' (file already existing)"
        fi
    done

### Step 8 : Publish Source and Binary Distribution Packages

First of all, create a new directory on people.apache.org/public_html to store the pacckages :

    $ ssh people.apache.org
    $ mkdir public_html/fortress-core-<version>
    $ exit

Then copy the packages :

    $ cd target/checkout/target
    $ scp fortress-core-<version>-source-release.zip* people.apache.org:public_html/fortress-core-<version>/

Update your index.html file on people.apach.org/public_html to make the packages visible. Here is an example of possible content :

    <h2>Last Fortress core 1.0.0-RC40 arballs</h2>
      <h3>Sources</h3>

        <img src="/icons/compressed.gif" alt="[   ]"><a href="fortress-core-1.0-RC40/fortress-core-1.0-RC40-source-release.zip">fortress-core-1.0-RC40-source-release.zip</a><br/>
        <img src="/icons/compressed.gif" alt="[   ]"><a href="fortress-core-1.0-RC40/fortress-core-1.0-RC40-source-release.zip.asc">fortress-core-1.0-RC40-source-release.zip.asc</a><br/>
        <img src="/icons/compressed.gif" alt="[   ]"><a href="fortress-core-1.0-RC40/fortress-core-1.0-RC40-source-release.zip.md5">fortress-core-1.0-RC40-source-release.zip.md5</a><br/>
        <img src="/icons/compressed.gif" alt="[   ]"><a href="fortress-core-1.0-RC40/fortress-core-1.0-RC40-source-release.zip.sha1">fortress-core-1.0-RC40-source-release.zip.sha1</a><br/>

## Step 9 : Voting a release

Once the tarballs have been created, and the binaries available in Nexus, a vote can be launched. Simply send a mail on the dev@directory.apache.org mailing list describing the new release.

Here is how you  send a [VOTE] mail on the dev mailing list :


    Hi,
    
    <blah blah blah>
    
    Here is the list of fixed issues :
     
    
       * [FC-83 <https://issues.apache.org/jira/browse/FC-83>] Cleanup core test processing
       * ...
    
    
    Here's the Jira link for this version if you'd like to review issues in more details:
    
    https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=10670&styleName=Html&version=12313702
    
    A temporary tag has been created (it can be removed if the vote is not approved)
    
    The newly approved Nexus has been used for the preparation of this release and all final artifacts are stored 
    in a staging repository:
    https://repository.apache.org/content/repositories/orgapachedirectory-1028
    
    
    The distributions are available for download on :
    https://repository.apache.org/content/repositories/orgapachedirectory-1028/org/apache/directory/project/fortress-core/1.0-RC40/
    
    Let us vote :
    [ ] +1 | Release Fortress-core 1.0-RC40
    [ ] +/- | Abstain
    [ ] -1 | Do *NOT* Fortress-core 1.0-RC40
	
    Thanks !

The vote will be open for 72 hours. Once the delay is over, collect the votes, and count the binding +1/-1. If the vote is positive, then we can release.

### Step 11 : Close the vote

You can officially close the vote now. There are some more steps to fulfill :

* Release the project on https://repository.apache.org
* Copy the tarballs and heir signature in people.apache.org /www/downloads.apache.org/fortress

This can be done on people.apache.org :

    $ ssh people.apache.org
    # svn co https://dist.apache.org/repos/dist/release/directory/fortress/ fortress-dist
    # cd fortress-dist
    # mkdir <version>
    # cp ../public_html/fortress-core-<version>/* <version>
    # svn add <version>
    # svn ci <version>
    ...
    # exit
    $

### Step 12: Deploy Web Reports (JavaDoc and JXR)

The javadoc and xref files have been generated in step 6, it's now time to push them into the production site. They are generated in the following directory :

    target/checkout/target/site

We will copy two directories :

    apidocs
    xref

*Staging or Production?*

<DIV class="info" markdown="1">
Those files will be stored on the production server only !!! And some extra caution ust be taken not to delete them when we will publish the staging site too...
</DIV>

First of all, you must checkout the two CMS store for the site : staging and production.

    $ svn co https://svn.apache.org/repos/infra/websites/staging/directory/trunk staging
    ...
    $ svn co https://svn.apache.org/repos/infra/websites/production/directory production
    ...

Then copy the generated docs :

    $ cp -r ~/apacheds/directory-fortress-core/target/checkout/target/site/apidocs production/directory/content/fortress/gen-docs
    $ cp -r ~/apacheds/directory-fortress-core/target/checkout/target/site/xref production/directory/content/fortress/gen-docs
    $ 

You have to check in those directories :

    $ svn add apidocs
    $ svn add xref
    $ svn ci apidocs xref -m "Injected Fortress <version> javadocs"

Now, you have to update the staging site <em>extpaths.txt</em>

This file list the file on the production site that will not be overriden by the publication of the staging site. It has to be updated

    $ cd ~/apacheds/staging/content/
    $ vi extpaths.txt

The following lines should be present. If not, add them and commit the file  after having added a new line for the newly released version:

Add the following line :

    
    ...
    # Fortress
    fortress/gen/docs/<the new version>
    ...

### Step 13: Wait 24 hours

We have to wait at least 24 hours for all mirrors to retrieve the uploaded files before making any announcement.  I'd recommend you to wait for 48 hours because some mirrors might lag due to various issues.

### Step 14: Update the Links in Web Site

Update the links to new distributions in [Downloads] page.

There are a few places to modify :

* /config.toml: update the version_fortress variable with the new version.
* /source/_index.md  : same here, update the <!-- FORTRESS project --> section, which contains the version.
* /source/fortress/news.md : add the news on top of thise page
* /source/fortress/download-old-versions.md : add a new line on top of the array, which refers to the latest version before the new one

Commit the changes, and publish the web site, you are done !

### Step 15: Wait another 24 hours

We need to wait until any changes made in the web site and metadata file(s) go live.

### Step 16: Announce the New Release

An announcement message can be sent to [mailto:announce@apache.org], [mailto:announce@apachenews.org], [mailto:users@directory.apache.org] and [mailto:dev@directory.apache.org].  Please note that announcement messages are rejected unless your from-address ends with `@apache.org`.  Plus, you shouldn't forget to post a news to the Directory site main page.

