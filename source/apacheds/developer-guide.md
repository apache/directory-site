---
title: Developers Guide
---

# Developers Guide

## Getting the source, Building the trunks
To get the source, build the *trunks* and get along with Maven, follow the instruction given in this page: [AUG : 0.2. Building trunks](advanced-ug/0.2-building-trunks.html)

## Versioning Scheme

The version number of *ApacheDS* has the following form:

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

The applicable coding standards for ADS 2.0 are described in [Coding Standards](coding-standards.html)

There are some more rules, as we are using **Java 8** now :

* Use generics as much as you can. Generic are a good way to avoid casting, and it enforce the usage of the correct type.
* If you can avoid *Iterators*, do so. There is this cool construction with a **for( Type t:<collection instance> )** : use it !
* Use **assert**. It's usefull, especially instead of a bunch of **if (<test is wrong>)** then throw Exception* when controlling incoming parameters
* Use the new *Enum* type !

## Releasing ApacheDS

Here is a guide on how to cut a new release. This is a long process, expect it to last a few hours !

First, you need to have a recent version of Maven (we are using 3.0.4) and a recent version of the JDK (Java 8 is required).

### Maven Settings

You'll need a settings section for the **Nexus** and **people.apache.org** servers with a password or a path to the SSH key used. Here's what my **settings.xml** file in **~/.m2** looks like:

```xml
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
```

Just replace your username, passwords and paths. Note that the username and password is your Apache LDAP account.


<DIV class="info" markdown="1">
You'll need to provide the passphrase in the <b>settings.xml</b> to access the gpg secret key installed on your host. This is due to a bug with the passphrase prompt in the <em>maven-gpg-plugin</em>. So unfortunately we must provide the passphrase in the <b>settings.xml</b> file in clear text. This should change in the future when this bug is fixed. Note that this passphrase is put into the release profile which we activate to properly sign and release the artifacts and poms via the release plugin.
</DIV>

### GPG Key

All subprojects are configured to deploy signatures for the artifacts uploaded to the repository. The **gpg** plugin will check use the default gpg key for the user deploying the project with the release:perform directive of the release plugin. This will prompt you for the passphrase for the default key. If you do not have one setup the build will fail.

You can generate and upload a PGP key to a PGP keyserver using the following commands:

```bash
gpg --gen-key
gpg --fingerprint
gpg --keyserver subkeys.pgp.net --send-keys <your key's id from last command>
```

<DIV class="info" markdown="1">
Make sure to have created the .pgpkey in your <em>p.a.o/~</em> directory and to have added your public key to the <b>KEYS</b> file.
See also https://people.apache.org/~henkp/repo/faq.html#4
</DIV>

### Releasing ApacheDS

Now that your environment has been setup, we will show you how to build and release the ApacheDS subproject. Keep an eye out for warnings and note sections that show version specific differences in this process. 

#### Manual Steps
Some things have not yet been automated with maven and require users to manually edit some files. Below are the steps to follow.

##### Update the apacheds/pom.xml

The current <em>apacheds/pom.xml</em> contains references to LDAP API SNAPSHOTs, which is not good. You have to bump up those references to the latest LDAP-API version.

##### Update service/apacheds.sh and service/apacheds.bat

Edit the <em>apacheds.sh/bat</em> files in the service project directory to update the revision numbers used in that file to reference non-SNAPSHOT releases. 

#### Release process

Since we are using Nexus for releases the release process is as follows (see also [Publishing maven artifacts](https://www.apache.org/dev/publishing-maven-artifacts.html#staging-maven).

##### Test the Project

```bash
$ mvn release:prepare -DdryRun=true
```

Replace the version by the new version. Be careful, and remove the 'apacheds-parent-' which is proposed for the new tag. We should just use the version number.

##### Deploy a Snapshot

```bash
$ mvn deploy -Darguments="-DskipTests"
```

This is useful to verify your settings in ~/.m2/settings.xml (Nexus password and GPG key)

##### Prepare the Release

```bash
$ mvn release:clean
$ mvn release:prepare
```

This creates a tag [here](https://svn.apache.org/viewvc/directory/apacheds/tags/)

##### Stage the Release

```bash
$ mvn release:perform -Darguments="-DskipTests"
```

This deploys the release to a staging repository. Go to [Staging Repositories](https://repository.apache.org/index.html#stagingRepositories) and close the staging repository.

(The _-Darguments="-DskipTests"_ parameter is there to avoid running the tests again...)

##### Build the Site

We will now build the site. This will be done from the  <em>target/checkout</em> directory :

```bash
$ cd target/checkout
```

In order to generate the site, you have to comment some modules in the apacheds <em>pom.xml</em> file :

```xml
<!--module>all</module-->
...
<!--module>installers-maven-plugin</module-->
<!--module>installers</module-->
...
<!--module>service</module-->
```

Then you can start the maven command :

```bash
$ mvn site
```

This creates the site and the Javadocs.

<DIV class="info" markdown="1">
Now, you have to sign the sources packages which are in <em>apacheds/target/checkout/target</em>.

Use your PGP key ID (the pub key, 4096R/[XXXXXXX] where [XXXXXXX] is the key ID)

Note we should not sign with MD5 or SHA-1.
</DIV>

You can get the keys by typing :

```bash
gpg --list-keys
```

You can use this small script that does the job (copy-paste this code in a file named <em>sign.sh</em> in your path) :

```bash
#!/bin/sh

echo "PGP Key ID: "
read DEFAULT_KEY

echo "PGP Key Password: "
stty -echo
read PASSWORD
stty echo
echo ""

for FILE in $(find . -maxdepth 1 -not '(' -name "sign.sh" -or -name ".*" -or -name "*.md5" -or -name "*.sha1" -or -name "*.asc" ')' -and -type f) ; do

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
```

Then to sign the packages :

```bash
$ sign.sh
PGP Key ID: 
<your PGP key>
PGP Key Password: 
<Your password>

-n Signing: ./apacheds-parent-<version>-source-release.zip ... 
- Generated './apacheds-parent-<version>-source-release.zip.md5'
- Generated './apacheds-parent-<version>-source-release.zip.sha1'
- Generated './apacheds-parent-<version>-source-release.zip.asc'
$
```

##### Publish Source Distribution Package

The sources, binaries and their signatures, have to be pushed in a place where they can be downloaded by the other committers, in order to be checked while validating the release. As the ~/people.apache.org server is not anymore available for that purpose, we use the [distribution](https://dist.apache.org/repos/dist/dev/directory) space for that purpose.

If you haven't checked out this space, do it now :

```bash
$ mkdir -p ~/apacheds/dist/dev/directory
$ svn co https://dist.apache.org/repos/dist/dev/directory ~/apacheds/dist/dev/directory
```

That will checkout the full project distributions. 

You may want to checkout only the part that you are going to generate, to avoid getting Gb of data :

```bash
$ mkdir -p ~/apacheds/dist/dev/directory/apacheds
$ svn co https://dist.apache.org/repos/dist/dev/directory/apacheds ~/apacheds/dist/dev/directory/apacheds
```

Now, create a sub-directory for the version you have generated (here, for version 2.0.0-M22) :

```bash
$ mkdir ~/apacheds/dist/dev/directory/apacheds/2.0.0-M22
```

and copy the packages and signature to this area :

```bash
$ cd target/checkout/target
$ cp apacheds-parent-<version>-source-release.zip* ~/apacheds/dist/dev/directory/apacheds/2.0.0-M22
```

Last, not least, commit your changes

```bash
$ svn add ~/apacheds/dist/dev/directory/apacheds/2.0.0-M22
$ svn ci ~/apacheds/dist/dev/directory/apacheds/2.0.0-M22 -m "ApacheDS 2.0.M22 packages"
```

##### Test the new version

The best way to do that is to download the sources, extract them, build the server and the installers, and check if the installers are correctly working. Then check that the server is correctly running.

##### Create the installers

We now have to create the installers. Go into the <em>target/checkout</em> directory and run :

```bash
$ cd apacheds/target/checkout/installers
$ mvn clean install -Pinstallers
```

This will create the installers in the <em>target/checkout/installers/target/installers</em> directory

<DIV class="info" markdown="1">
    We are meant to create all the installers. It's possible to create installers for a specific platform by using a different profile :
    
  <UL>
    <LI>Debian   : mvn clean install -Pdebian</LI>
    <LI>Rpm      : mvn clean install -Prpm</LI>
    <LI>Windows  : mvn clean install -Pwindows</LI> 
    <LI>Mac OS X : mvn clean install -Pmac</LI>
    <LI>Binary   : mvn clean install -Pbin</LI>
    <LI>Archive  : mvn clean install -Parchive</LI>
  </UL>

    This will build only one single target.
</DIV>

<DIV class="info" markdown="1">
    If the packaging tool path is not correct, you can set it on the command line :
    
  <UL>
    <LI>Debian   : mvn clean install -Pdebian -Dinstallers.dpkg=&lt;path to the dpkg installer&gt;</LI>
    <LI>Rpm      : mvn clean install -Prpm -Dinstallers.rpmbuild=&lt;path to the rpmbuild installer&gt;</LI>
    <LI>Windows  : mvn clean install -Pwindows -Dinstallers.makensis=&lt;path to the makensis installer&gt;</LI> 
    <LI>Mac OS X : mvn clean install -Pmac -Dinstallers.packageMaker=&lt;path to the PackageMaker installer&gt;</LI>
  </UL>

  Typically, recent versions of Mac OSX moved the tools from <EM>/usr/bin</EM> to <EM>/usr/local/bin</EM>

  Keep in mind that you will have to sign and move each target package before building the next one, as the <EM>clean</EM> instruction will remove the content of the <EM>target</EM> directory...
</DIV>



Sign those installers using the <em>sign.sh</em> script, and copy them in <em>~/apacheds/dist/dev/directory/apacheds/<version></em>

```bash
$ cd apacheds/target/checkout/target/installers/target/installers
$ cp apacheds-<version>* ~/apacheds/dist/dev/directory/apacheds/2.0.0-M22
```

Note : you will need a Debian, a Fedora and a Windows server to generate dedicated binaries for those platforms, or you can use rpmbuild, dpkg or nsis if you don't want to use many different servers.


##### Vote

Start a 72h vote at the dev mailing list.

##### Release

If the vote succeeds Apacheds project can be released.

Go to [https://repository.apache.org/index.html#stagingRepositories](https://repository.apache.org/index.html#stagingRepositories) and release the staging repository so all artifacts are published to Maven central.

The sources, binaries and their signatures, have to be pushed in a place where they can be downloaded by users. We use the [distribution](https://dist.apache.org/repos/dist/release/directory) space for that purpose.

Move the distribution packages (sources and binaries) to the dist SVN repository: https://dist.apache.org/repos/dist/release/directory/apacheds/dist/$(version)

If you haven't checked out this space, do it now :

```bash
$ mkdir -p ~/apacheds/dist/release/directory
$ svn co https://dist.apache.org/repos/dist/release/directory ~/apacheds/dist/release/directory
```

That will checkout the full project distributions. 

You may want to checkout only the part that you are going to generate, to avoid getting Gb of data :

```bash
$ mkdir -p ~/apacheds/dist/release/directory/apacheds/dist
$ svn co https://dist.apache.org/repos/dist/release/directory/apacheds/dist ~/apacheds/dist/release/directory/apacheds/dist
```

Then move the packages from 'dev' to 'release' :

```bash
# cd dist/release/directory/apacheds/dist
# cp ~/apacheds/dist/dev/directory/apacheds/<version> .
# svn add <version>
# svn ci <version>
...
# exit
$
```

The packages should now be available on https://www.apache.org/dist/directory/apacheds/dist/<version>

##### Deploy the Javadocs and XRef

We now can deploy the generated Javadoc and cross-reference pages. They are generated in the following directory :

    target/checkout/target/site

We will copy two directories :

    apidocs
    xref

*Staging or Production?*

Those files will be stored on the production server only !!! And some extra caution must be taken not to delete them when we will publish the staging site too...

First of all, you must checkout the two CMS store for the site : staging and revision.

```bash
$ cd ~/apacheds
$ svn co https://svn.apache.org/repos/infra/websites/staging/directory/trunk staging
...
$ svn co https://svn.apache.org/repos/infra/websites/production/directory production
...
```

Now, you will first add the directory for the newly generated version :

```bash
$ cd ~/apacheds/production/content/apacheds/gen-docs
$ mkdir <version>
```

Then copy the generated docs :

```bash
$ cp -r ~/apacheds/trunks/apacheds/target/checkout/target/site/apidocs ~/apacheds/production/content/apacheds/gen-docs/<version>
$ cp -r ~/apacheds/trunks/apacheds/target/checkout/target/site/xref ~/apacheds/production/content/apacheds/gen-docs/<version>
```

You have to check in those directories :

```bash
$ svn add <version>
$ svn ci <version> -m "Injected <version> javadocs"
```

Now, you have to update the staging site, but first, do a <em>svn up</em>. Then you have to update the <em>extpaths.txt</em> file.

This file list the files on the production site that will not be overriden by the publication of the staging site. It has to be updated.

```bash
$ cd ~/apacheds/staging/content/
$ vi extpaths.txt
```

Add the following line :

```text
...
# Apacheds
apacheds/gen-docs/<version>
...
```

then save and check in the file.

We also have to update the <em>.htaccess</em> file :

```bash
$ cd ~/apacheds/staging/content/apacheds/gen-docs
$ vi .htaccess
```

And update the two last lines to refer to the version you've just released :

```bash
RewriteRule ^latest$ <version>/
RewriteRule ^latest/(.*)$ <version>/$1
```

Save and commit the file.

##### Update the web site

You can now update the site, add a news on the front page, and publish the site.

There are a few places to modify :

* /config.toml : update the version_apacheds variable with the new version.
* /source/_index.md : same here, update the <!-- ApacheDS project --> section, which contains the version.
* /source/apacheds/news.md : add the news on top of this page
* /source/apacheds/download-old-versions.md : add a new line on top of the array, which refers to the latest version before the new one

Commit the changes, and publish the web site, you are done !

##### Inform the world !

After 24h, you can now inform the world about the release.

Send a mail to the users and dev mailing list, and one to the <em>announce@apache.org</em>

You are done !
