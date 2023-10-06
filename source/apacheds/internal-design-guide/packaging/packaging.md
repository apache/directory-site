---
title: Packaging
Notice: Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at
    .
    http://www.apache.org/licenses/LICENSE-2.0
    .
    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.
---

# Packaging

*Apache Directory Server* is packaged in many flavvors:

* As a pure *linux* binary
* As a *Debian* *dep* file
* As a *RedHat* *RPM* file
* As a *Mac OS* installer
* As a *Winwosw* installer
* As a *docker* installer
* As a source archive

We are going to explain how each of those packages are created.

## Generalities

We use two sub-modules for the installer:
* The *apacheds-installers-maven-plugin* which is a *Maven* plugin used to create the various packages
* The *apacheds-installers* which is creatinhg the packages

The *apacheds-installers* project defines each of the target in its *pom.xml* file. For instance, for the *Debian* installer, we will use this configuration:

```xml
    <profile>
      <id>debian</id>
      <build>
        <plugins>
          <!-- Generating installers -->
          <plugin>
            <groupId>${project.groupId}</groupId>
            <artifactId>apacheds-installers-maven-plugin</artifactId>
            <configuration>
              <!-- Targets for Linux .deb installer package -->
              <debTargets>
                <debTarget>
                  <id>apacheds-debian-i386</id>
                  <finalName>apacheds-${project.version}-i386.deb</finalName>
                  <osArch>i386</osArch>
                </debTarget>
                
                <debTarget>
                 <id>apacheds-debian-amd64</id>
                  <finalName>apacheds-${project.version}-amd64.deb</finalName>
                  <osArch>amd64</osArch>
                </debTarget>
              </debTargets>
            </configuration>

            <executions>
              <execution>
                <goals>
                  <goal>generate</goal>
                </goals>
              </execution>
            </executions>
          </plugin>
        </plugins>
        
        <pluginManagement>
          <plugins>
            <plugin>
              <groupId>${project.groupId}</groupId>
              <artifactId>apacheds-installers-maven-plugin</artifactId>
              <version>${project.version}</version>
            </plugin>
          </plugins>
        </pluginManagement>
      </build>
    </profile>
```

We can see we have defined a specific profile for this package, *debian*, and that the _apacheds-installers-maven-plugin_ plugin is configured to support two kinds of packages (_osArch_ parameter):
* A *i386* package
* An *amd64* packager

We also set the _finalName_ with the package name.

The *Maven* goal we call is named _generate_.

In Java, we will have one class per target, extending the parent _Target_ class.

The _Target_ parent class stores the target *id*, *architecture*, *OS* and the final file name. Each inheriting class stores the path to the tool to use to generate the installer:

* _dpkg_ for the *Debian* installer (defaults to _/usr/bin/dpkg_)
* _rpmbuild_ for the *RedHat* installer (defaults to _/usr/bin/rpmbuild_)
* TODO: Mac, Windows

We use a default value, hard coded in the extended class, but this value can be ovveriden by the _pom.xml_ configuration, and overriden by the use of a *-D* flag on teh command line (which has the highest level of precedence).

Each extended class implements the _execute()_ method which is responsible for calling an _InstallerCommand_ class. These classes are teh one which create the packages.

## Linux Debian

The debian configuration is managed by the _DebTarget.java_ file, which sets one specific parameneter:
* _OsName_ set to *Linux*


The three other parameters are declared in the _pom.xml_ file:

* _id_ set to *apacheds-debian-i386* or apacheds-debian-amd64*
* _OsArch_ set to *i386* or *i386* (see upper).
* _finalName_ is set to *apacheds-<version>-i386.deb* or *apacheds-<version>-amd64.deb*

(They do have default value, which get overriden by configuration).


A _DebInstallerCommand_ instance is created and its _execute()_ method is called.


