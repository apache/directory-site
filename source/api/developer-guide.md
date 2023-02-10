---
title: LDAP Java API - Developer Guide
---

# Developer Guide

This guide is intened to be read by those who participate into the development of the LDAP API. Users of the API are expected to read the [User guide](user-guide.html).

## Getting the source, Building the trunks
To get the source, build the *trunks/api* and get along with Maven.

## Versioning Scheme

The version number of **LDAP API** has the following form:

<DIV class="info" markdown="1">
    &lt;major>.&lt;minor>.&lt;micro> \[-M&lt;milestone number> or -RC&lt;release candidate number>]
</DIV>

This scheme has three number components:

* The __major__ number increases when there are incompatible changes in the API.
* The __minor__ number increases when a new feature is introduced.
* The __micro__ number increases when a bug or a trivial change is made.

and an optional label that indicates the maturity of a release:

* __M__ (Milestone) means the feature set can change at any time in the next milestone releases. The last milestone release becomes the first release candidate after a vote.
* __RC__ (Release Candidate) means the feature set is frozen and the next RC releases will focus on fixing problems unless there is a serious flaw in design. The last release candidate becomes the first GA release after a vote.
* No label implies __GA__ (General Availability), which means the release is stable enough and therefore ready for production environment.

<DIV class="info" markdown="1">
    A <b>stable</b> version is a version with a frozen set of features, and a frozen <b>API</b>. We don't release a version if all the integration tests are not passing, so any release should be considered stable enogh to be used.<BR/>
    Although we may add new features between two milestones, and the data structure may change, which may imply that the data have to be extracted and reimported in order for the server to be operational.<BR/>
    The configuration might also evolve between two versions.
</DIV>

## Coding standards 

The applicable coding standards for LDAP API 1.0 are described in [Coding Standards](coding-standards.html)

There are some more rules, as we are using **Java 8** now :

* Use generics as much as you can. Generic are a good way to avoid casting, and it enforce the usage of the correct type.
* If you can avoid *Iterators*, do so. There is this cool construction with a **for( Type t:<collection instance> )** : use it !
* Use **assert**. It's usefull, especially instead of a bunch of **if (<test is wrong>)** then throw Exception* when controlling incoming parameters
* Use the new *Enum* type !

## Releasing the LDAP API

**Note: The release guide needs to be updated after git migration!**

Here is a guide on how to cut a new release. This is a long process, expect it to last a couple of hours !

First, you need to have a recent version of Maven (we are using 3.0.4) and a recent version of the JDK (1.7 is ok, it should also build with 1.6).

### Maven Settings

You'll need a settings section for the **Nexus** and **people.apache.org** servers with a password or a path to the SSH key used. Here's what my **settings.xml** file in **~/.m2** looks like:

    
    <settings>

      <servers>
        <!-- To publish a snapshot of some part of Maven -->
        <server>
          <id>apache.snapshots.https</id>
          <username>username</username>
          <password>********</password>
        </server>

        <!-- To publish a website using Maven -->
        <server>
          <id>apache.directory</id>
          <username>username</username>
          <privateKey>/Users/username/.ssh/id_rsa</privateKey>
          <filePermissions>664</filePermissions>
          <directoryPermissions>775</directoryPermissions>
        </server>

        <!-- To stage a release of some part of Maven -->
        <server>
          <id>apache.releases.https</id>
          <username>username</username>
          <password>********</password>
        </server>

        <!-- To stage a website of some part of Maven -->
        <server>
          <id>stagingSite</id> <!-- must match hard-coded repository identifier in site:stage-deploy -->
          <username>elecharny</username>
          <filePermissions>664</filePermissions>
          <directoryPermissions>775</directoryPermissions>
        </server>

      </servers>    

      <profiles>
        <profile>
          <id>apache-public</id>
          <pluginRepositories>
            <pluginRepository>
              <id>apache.public</id>
              <url>https://repository.apache.org/content/groups/public/</url>
            </pluginRepository>
          </pluginRepositories>
        </profile>

        <profile>
          <id>apache-release</id>
          <!-- Configuration for artifacts signature -->
          <properties>
            <gpg.passphrase>********</gpg.passphrase>
            <gpg.keyname>elecharny@apache.org</gpg.keyname>
          </properties>
        </profile>
      </profiles>

    </settings>

Just replace your username, passwords and paths. Note that the username and password is your Apache LDAP account.


<DIV class="info" markdown="1">
You'll need to provide the passphrase in the <b>settings.xml</b> to access the gpg secret key installed on your host. This is due to a bug with the passphrase prompt in the <em>maven-gpg-plugin</em>. So unfortunately we must provide the passphrase in the <b>settings.xml</b> file in clear text. This should change in the future when this bug is fixed. Note that this passphrase is put into the release profile which we activate to properly sign and release the artifacts and poms via the release plugin.
</DIV>

### GPG Key

All subprojects are configured to deploy signatures for the artifacts uploaded to the repository. The **gpg** plugin will check use the default gpg key for the user deploying the project with the release:perform directive of the release plugin. This will prompt you for the passphrase for the default key. If you do not have one setup the build will fail.

You can generate and upload a PGP key to a PGP keyserver using the following commands:

    
    gpg --gen-key
    gpg --fingerprint
    gpg --keyserver subkeys.pgp.net --send-keys <your key's id from last command>


<DIV class="info" markdown="1">
Make sure to have created the .pgpkey in your <em>p.a.o/~</em> directory and to have added your public key to the <b>KEYS</b> file.
See also http://people.apache.org/~henkp/repo/faq.html#4
</DIV>

## Release process

Since we are using Nexus for releases the release process is as follows (see also [Publishing maven artifacts](https://www.apache.org/dev/publishing-maven-artifacts.html#staging-maven)).

### Test the Project

    
    $ mvn release:prepare -DdryRun=true

Be aware that this phase will ask you about the next version, and most important, for the next SCM tag :

    
    ...
    [INFO] Checking dependencies and plugins for snapshots ...
    What is the release version for "Apache Directory LDAP API"? (org.apache.directory.api:api-parent) 1.0.0-M16: : 
    What is the release version for "Apache Directory LDAP API I18n"? (org.apache.directory.api:api-i18n) 1.0.0-M16: : 
    What is the release version for "Apache Directory LDAP API Utilities"? (org.apache.directory.api:api-util) 1.0.0-M16: : 
    ...
    What is SCM release tag or label for "Apache Directory LDAP API"? (org.apache.directory.api:api-parent) 1.0.0-M16: :
    ...

### Deploy a Snapshot

    
    $ mvn deploy

This is useful to verify your settings in ~/.m2/settings.xml (Nexus password and GPG key)

### Prepare the Release

    
    $ mvn release:clean
    $ mvn release:prepare

This creates a tag [here](https://gitbox.apache.org/repos/asf?p=directory-ldap-api.git)

### Stage the Release

    
    $ mvn release:perform

This deploys the release to a staging repository.

Go to [the nexus server](https://repository.apache.org/index.html#stagingRepositories) and close the staging repository.

### Build the Site

In order to be able to generate the site, you will have to modify the target/checkout/pom.xml file, by adding a line to the javadoc configuration (in two places) :

    
    $ vi target/checkout/pom.xml
    ...
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-javadoc-plugin</artifactId>
        <configuration>
          <show>private</show>
          <nohelp>true</nohelp>
          <doclint>none</doclint>     <---- This line 
    ...

and

    
    ...
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-javadoc-plugin</artifactId>
        <configuration>
          <windowtitle>Apache LDAP API ${project.version} API Documentation</windowtitle>
          <doctitle>Apache LDAP API ${project.version} API Documentation</doctitle>
          <minmemory>512m</minmemory>
          <maxmemory>1g</maxmemory>
          <linksource>true</linksource>
          <doclint>none</doclint>   <---- This line too
    ...


then run the maven site goal :

    
    $ cd target/checkout
    $ mvn site

This creates the site.

### Sign the packages

Now, you have to sign the binary packages which are in target/checkout/distribution/target.

Use your PGP key ID (the pub key, 4096R/[XXXXXXX] where [XXXXXXX] is the key ID)

You can get the keys by typing :

    gpg --list-keys

The produced packages already have .asc signature that you will need to remove :

    
    $ cd target/checkout/distribution/target
    $ rm *.asc
    $ ~/sign.sh
    PGP Key ID: 
    <You public key>
    PGP Key Password: 
    <Your password>
    -n Signing: ./apache-ldap-api-1.0.0-M25-bin.tar.gz ... 
      - Generated './apache-ldap-api-1.0.0-M25-bin.tar.gz.md5'
      - Generated './apache-ldap-api-1.0.0-M25-bin.tar.gz.asc'
    -n Signing: ./apache-ldap-api-1.0.0-M25-bin.zip ... 
      - Generated './apache-ldap-api-1.0.0-M25-bin.zip.md5'
      - Generated './apache-ldap-api-1.0.0-M25-bin.zip.asc'
    ...

You are done with the signature.

For the record, here is the script shell you can use to sign the packages. Name it sign.sh, and put it into your home directory (on a unix based computer) :

    #!/bin/sh

    echo "PGP Key ID: "
    read DEFAULT_KEY

    echo "PGP Key Password: "
    stty -echo
    read PASSWORD
    stty echo
    echo ""

    for FILE in $(find . -maxdepth 1 -not '(' -name "sign.sh" -or -name ".*" -or -name "*.asc" ')' -and -type f) ; do
        if [ -f "$FILE.asc" ]; then
            echo "Skipping: $FILE"
            continue
        fi

        echo -n "Signing: $FILE ... "

        # SHA-256
        if [ ! -f "$FILE.sha256" ];
        then
            gpg -v --default-key "$DEFAULT_KEY" --print-md SHA256 "$FILE" > "$FILE".sha256
            echo "  - Generated '$FILE.sha256'"
        else
            echo "  - Skipped '$FILE.sha256' (file already existing)"
        fi

        # SHA-512
        if [ ! -f "$FILE.sha512" ];
        then
            gpg -v --default-key "$DEFAULT_KEY" --print-md SHA512 "$FILE" > "$FILE".sha512
            echo "  - Generated '$FILE.sha512'"
        else
            echo "  - Skipped '$FILE.sha512' (file already existing)"
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


### Publish Source and Binary Distribution Packages

The sources, binaries and their signatures, have to be pushed in a place where they can be downloaded by the other committers, in order to be checked while validating the release. As the \~/people.apache.org server is not anymore available for that purpose, we use the [distribution](https://dist.apache.org/repos/dist/dev/directory) space for that purpose.

If you haven't checked out this space, do it now :

    
    $ mkdir -p ~/apacheds/dist/dev/directory
    $ svn co https://dist.apache.org/repos/dist/dev/directory ~/apacheds/dist/dev/directory

That will checkout the full project distributions. 

You may want to checkout only the part that you are going to generate, to avoid getting Gb of data :

    
    $ mkdir -p ~/apacheds/dist/dev/directory/api
    $ svn co https://dist.apache.org/repos/dist/dev/directory/api ~/apacheds/dist/dev/directory/api

Now, create a sub-directory for the version you have generated (here, for version 1.0.0-RC1) :

    
    $ mkdir ~/apacheds/dist/dev/directory/api/1.0.0-RC1

and copy the packages and signature to this area :

    
    $ cd distributions/target
    $ cp apache-ldap-api-<version>-* ~/apacheds/dist/dev/directory/api/1.0.0-RC1

Last, not least, commit your changes

    
    $ svn add ~/apacheds/dist/dev/directory/api/1.0.0-RC1
    $ svn ci ~/apacheds/dist/dev/directory/api/1.0.0-RC1 -m "Apache LDAP API 1.0.0-RC1 packages"

### Test the New Version in ApacheDS and Studio

In <em>apacheds/pom.xml</em> change the <org.apache.directory.api.version> property, build ApacheDS, go into <em>apacheds/service</em>, and run <em>./apachds.sh</em> to start the server.

In <em>studio/pom.xml</em> change the <org.apache.directory.api.version> and <org.apache.directory.api.validversion> properties, build Studio, and start Studio in <em>applications/applications_<your platform>/target/ApacheDirectoryStudio-<your platform>/<executable></em>. Connect to the started **ApacheDS**.

### Stage the release

Go to [https://repository.apache.org/index.html#stagingRepositories](https://repository.apache.org/index.html#stagingRepositories) and close the staging repository.

### Vote

Start a 72h vote at the dev mailing list.

### Release

If the vote succeeds LDAP API project can be released.

Go to [https://repository.apache.org/index.html#stagingRepositories](https://repository.apache.org/index.html#stagingRepositories) and release the staging repository so all artifacts are published to Maven central.

The sources, binaries and their signatures, have to be pushed in a place where they can be downloaded by users. We use the [distribution](https://dist.apache.org/repos/dist/release/directory) space for that purpose.

Move the distribution packages (sources and binaries) to the dist SVN repository: https://dist.apache.org/repos/dist/release/directory/api/dist/$(version)

If you haven't checked out this space, do it now :

    
    $ mkdir -p ~/apacheds/dist/release/directory
    $ svn co https://dist.apache.org/repos/dist/release/directory ~/apacheds/dist/release/directory

That will checkout the full project distributions. 

You may want to checkout only the part that you are going to generate, to avoid getting Gb of data :

    
    $ mkdir -p ~/apacheds/dist/release/directory/api/dist
    $ svn co https://dist.apache.org/repos/dist/release/directory/api/dist ~/apacheds/dist/release/directory/api/dist

Then move the packages from 'dev' to 'release' :

    
    # cd dist/release/directory/api/dist
    # cp ~/apacheds/dist/dev/directory/api/<version> .
    # svn add <version>
    # svn ci <version>
    ...
    # exit
    $

The packages should now be available on http://www.us.apache.org/dist/directory/api/dist/<version>

### Deploy the Javadocs and XRef

We now can deploy the generated Javadoc and cross-reference pages. They are generated in the following directory :

    target/checkout/target/site

We will copy two directories :

    apidocs
    xref

They are uploaded to https://nightlies.apache.org/ via WebDAV protocol.

First create the folders for the version:

    $ curl -u <your asf id> -X MKCOL 'https://nightlies.apache.org/directory/api/2.0.2/'
    $ curl -u <your asf id> -X MKCOL 'https://nightlies.apache.org/directory/api/2.0.2/apidocs'
    $ curl -u <your asf id> -X MKCOL 'https://nightlies.apache.org/directory/api/2.0.2/xref'

I used [Rclone](https://rclone.org/) to copy folders via WebDAV.

After intallation run `rclone config` and configure the `nightlies` connection:

    $ rclone config
    name: nightlies
    type: webdav
    url: https://nightlies.apache.org
    vendor: other
    user: yourasfid
    pass: yourasfpassword (will be stored encrypted)

Then copy the directories:

    cd target/checkout/target/site
    rclone copy --progress apidocs nightlies:/directory/api/2.0.2/apidocs
    rclone copy --progress xref nightlies:/directory/api/2.0.2/xref

Finally update the links in the `static/api/gen-docs/.htaccess` of the directory-site repo:

    RewriteRule ^latest2$ https://nightlies.apache.org/directory/api/2.0.2/ [QSA,L]
    RewriteRule ^latest2/(.*)$ https://nightlies.apache.org/directory/api/2.0.2/$1 [QSA,L]

Save and commit the file.

### Update the web site

You can now update the site, add a news on the front page, and publish the site.

There are a few places to modify :

* /config.toml : update the `version_api2` variable with the new version.
* /source/api/news.md : add the news on top of this page
* /source/api/download-old-versions.md : add a new line on top of the array, which refers to the latest version before the new one

Commit the changes, and publish the web site, you are done !

### Update Apache Reporter

Add release to https://reporter.apache.org/addrelease.html?directory

### Inform the world !

After 24h, you can now inform the world about the release.

Send a mail to the users and dev mailing list, and one to the **announce@apache.org**

You are done !
