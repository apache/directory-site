---
title: Command Line Inteface
---

# Fortress Command Line Interface

Used for ad-hoc administration, review and testing of policy data.

## Use cases supported

* Create, Read, Update, Delete policies
* Testing of policies

### Instructions to run the Fortress Command Line Interpreter (CLI)

The CLI is useful for ad-hoc policy administration in runtime environments.

#### 1. From **FORTRESS_HOME** enter the following command:

 ```bash
 mvn -Pcli test
 ```

#### 2. Which starts the Fortress command line interpreter:

 ```
 CommandLineInterpreter:176 - Startup to interactive mode success...
 CommandLineInterpreter:183 - CLI function groups include admin, review, system, dadmin, group
 CommandLineInterpreter:185 - Enter one from above or 'q' to quit
 ```

#### 3. Where subsequent commands can be performed.  For example to add a new user:

 ```bash
 admin auser -u testuser1 -p mypasword123 -o dev1
 CommandLineInterpreter:1078 - arg:admin
 CommandLineInterpreter:1078 - arg:auser
 CommandLineInterpreter:1078 - arg:-u
 CommandLineInterpreter:1078 - arg:testuser1
 CommandLineInterpreter:1078 - arg:-p
 CommandLineInterpreter:1078 - arg:-o
 CommandLineInterpreter:1078 - arg:dev1
 CommandLineInterpreter:487 - auser
 CommandLineInterpreter:683 - command:auser was successful
 CommandLineInterpreter:183 - CLI function groups include admin, review, system, dadmin, group
 CommandLineInterpreter:185 - Enter one from above or 'q' to quit
 ```

#### 4. Or to interrogate users:

 ```bash
 review fuser -u testuser1
 CommandLineInterpreter:1078 - arg:review
 CommandLineInterpreter:1078 - arg:fuser
 CommandLineInterpreter:1078 - arg:-u
 CommandLineInterpreter:1078 - arg:testuser1
 CommandLineInterpreter:713 - fuser
 CommandLineInterpreter:1443 - U   CTR  [0]
 CommandLineInterpreter:1443 - U   UID  [testuser1]
 CommandLineInterpreter:1443 - U   IID  [20ef2dfd-0b86-41a5-87d6-f7081e455d76]
 CommandLineInterpreter:1443 - U   CN   [testuser1]
 CommandLineInterpreter:1443 - U   DESC [null]
 CommandLineInterpreter:1443 - U   OU   [dev1]
 CommandLineInterpreter:1443 - U   SN   [testuser1]
 ```

#### 5. For a complete reference manual:
* [CLI Reference](https://directory.apache.org/fortress/gen-docs/latest/apidocs/org/apache/directory/fortress/core/cli/package-summary.html)
