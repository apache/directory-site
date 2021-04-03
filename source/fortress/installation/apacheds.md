---
title: ApacheDS Installation guide
---

# ApacheDS Installation guide

Provide instructions to install an **ApacheDS** instance and setup for use with **Fortress**. In this configuration, there is an **ApacheDS** server running on a machine (**ApacheDS Host**) and **Fortress** agent which will be installed on a client machine (**Fortress Host**). Note that those two hosts can be shared - and this is such a configuration that we are going to use in this document.

## Prerequisites

There a few mandatory elements that need to be installed on the **ApacheDS Host** :

* Java 8 or greated sdk

On the **Fortress Host**, you will need those components :

* Java 8 or greated sdk
* Apache Maven 3+
* A web browser
* Git
* Apache Directory Studio

## Installing ApacheDS

On the **ApacheDS Host** :

Follow the installation guide on [the ApacheDS download pages](https://directory.staging.apache.org/apacheds/downloads.html) (each page has an installation description).

The base installation will install a server running on port *10389*, with a default user *uid=admin,ou=system* and the password *secret*. Please change those values !!!

Note that the server requires a 8 sdk to run.

## Installing Apache Directory Studio

On the **Fortress Host** :

We will install **Apache Directory Studio** which is a convenient tool when it comes to managing an **LDAP** server. Install using [the following documentation](https://directory.apache.org/studio/downloads.html). Again, each link contains directions on how to install this component.

Once installed, check the connection to the **ApacheDS** server installed during the previous step. Create a _connection_, set the _hostName_ and _port_ to be those where you installed the **ApacheDS** server, then check the Network Parameter, ensure no errors.

Check that the credentials you have set (defaulting to _uid=admin,ou=system_ and _secret_)  using _Simple Authentication_, and clicking on _Check Authentication_ : work also.

The complete description of the steps are found [on this page](https://directory.apache.org/studio/users-guide/ldap_browser/gettingstarted_create_connection.html)

## Installing Fortress Core

Assuming that **Git**, **Java 8** and **Apache Maven** are installed on the **Fortress Host**, and that **ApacheDS** is running on the **ApacheDS Host**, we can now configure and install **Fortress Core** on the **Fortress Host**

The setup will use your specific configuration to create everything needed on the LDAP server to operate **Fortress**. It will also inject specific schema elements into the ldap server; entries that are required for *Fortress* to work. Once done, the **Fortress** APIs are ready to use.

<DIV class="info" markdown="1">
  The setup phase must be performed once per LDAP server instance.  But every machine that uses Fortress, must be configured to point to the same LDAP server (as you would expect) that was initially setup.  This will be explained later on.
</DIV>


