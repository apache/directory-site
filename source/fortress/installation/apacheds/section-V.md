---
title: Section V - Instructions to run the Fortress Command Line Interpreter (CLI) utility
navPrev: section-IV.html
navPrevText: Section IV - Instructions to regression test Fortress and ApacheDS
navUp: apacheds.html
navUpText: Quickstart ApacheDS - Table of contents
navNext: section-VI.html
navNextText: Section VI - Instructions to run Fortress Console
---

## Section V - Instructions to run the Fortress Command Line Interpreter (CLI) utility

This command line tool provides an interactive session with the user based on a simple command line syntax.

### Step 1

To start the CLI, enter:

    ./b.sh cli 

<CENTER>
  <IMG src="../../images/Screenshot13-ant-cli.png" alt="Screenshot" width="766" height="48"/>
</CENTER>

Which will bring up the command interpreter: 

<CENTER>
  <IMG src="../../images/Screenshot14-cli.png" alt="Screenshot" width="766" height="78"/>
</CENTER>

### Step 2

enter the command:

    review fuser -u demo 

<CENTER>
  <IMG src="../../images/Screenshot15-cli-review.png" alt="Screenshot" width="766" height="78"/>
</CENTER>
 
This example will return all users with userId that begins with 'demo':

<CENTER>
  <IMG src="../../images/Screenshot16-cli-fuser.png" alt="Screenshot" width="766" height="682"/>
</CENTER>

### Step 3

To learn more about the CLI and what it can do, follow instructions in the command line interpreter reference manual in the javadoc located here:

    [Command Line Interpreter](link...)

Note: if javadocs are not found, go to [Section VII](section-VII.html)