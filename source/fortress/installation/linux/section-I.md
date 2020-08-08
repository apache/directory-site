---
title: Section I - Instructions to download, extract and configure Fortress
navPrev: guidelines.html
navPrevText: Guidelines and Tips for first-time users
navUp: linux.html
navUpText: Quickstart Linux - Table of contents
navNext: section-II.html
navNextText: Section II - Instructions to run the Fortress Ant Build
---

## Section I - Instructions to download, extract and configure Fortress Builder Package to Target System

* Download one of the linux packages from here: iamfortress.org/download
* Copy fortressBuilder-\[platform\]-\[version\].zip to hard drive on target server env.
* Extract the zip. The location for archive can vary according to requirements. The location of package will be referred to as FORTRESS_HOME later on.
*Enable permission for the binaries to execute. From FORTRESS_HOME root folder, enter the following command from a system prompt:

    chmod a+x -Rf * 

<CENTER>
  <IMG src="../../images/Screenshot1-chmod.png" alt="Screenshot" width="766" height="58"/>
</CENTER>

If debian platform and using sudo, edit file named 'build.properties' and insert sudo password here:

    sudo.pw=your pw here

Note: For Redhat deployments leave this param's value empty, like below, otherwise the 'stop-slapd' target may not work.

    sudo.pw=

<CENTER>
  <IMG src="../../images/Screenshot2-edit-sudo.png" alt="Screenshot" width="766" height="111"/>
</CENTER>

