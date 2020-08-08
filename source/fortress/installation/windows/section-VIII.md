---
title: Section VIII - Instructions to run the Fortress Command Line Interpreter (CLI)
navPrev: section-VII.html
navPrevText: Section VII - nstructions to connect to Commander Web Admin
navUp: windows.html
navUpText: Quickstart Windows - Table of contents
navNext: section-IX.html
navNextText: Section IX - Instructions to run Fortress Console (CLI)
---

## Section VIII - Instructions to run the Fortress Command Line Interpreter (CLI) (optional)

This command line tool provides an interactive session with the user based on a simple command line syntax.

### Step 1

To start the CLI, enter:

    b cli 

<CENTER>
  <IMG src="../../images/Screenshot36-ant-cli-win.png" alt="Screenshot"/>
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

Note: if javadocs are not found, go to [Section X](section-X.html)