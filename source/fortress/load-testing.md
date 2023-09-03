---
title: Load Testing
---

# Fortress Load Testing

Fortress uses Apache Jmeter, driven by the Apache Maven Jmeter plugin.
Typical tests insert millions of entries and process authentication and authorization requests at very high throughput rates.
For production deployments, it's not unusual to run tests for many days, even weeks, to verify that the environment can handle the expected loads, over time, without degradation or faults.

How fast/long can it run? Take it for a test drive in your env and find out.

### Typical deployment

```
            .--------------.      
            |     Maven    |      
            '-------.------'      
                    | in-process
            .-------'-------.
            | Jmeter plugin |
            '-------.-------'
                    | in-process
            .-------'------.
            | FortressCore |
            '-------.------'
                    | LDAPS
          .---------'-------.
          | DirectoryServer |
          '-----------------'
```

- Uses the ```mvn verify``` command to invoke maven jmeter plugin which then executes jmeter tests running various fortress core test cases.

## Use cases supported:

* Add, Update, Delete User
* Assign, Deassign User
* Check User
* Add, Delete Role
* Add, Delete Permission
* Grant, Revoke Permission

### Instructions to run the Load Tests

#### 1. Load the security policy

Use the [Fortress Load Utility](http://fortress-a:1313/fortress/load-utility.html) to load a [Jmeter Test Policy](https://github.com/apache/directory-fortress-core/blob/master/ldap/setup/JmeterTestPolicy.xml): 

```
mvn install -Dload.file=./ldap/setup/JmeterTestPolicy.xml
```

#### 2. Find the .jmx files

Next, edit one of the following jmeter config files to enable a corresponding test case:

A. Add User:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/AddUser.jmx](src/test/jmeter/AddUser.jmx)

B. Del User:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/DelUser.jmx](src/test/jmeter/DelUser.jmx)

C. Check User:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/CheckUser.jmx](src/test/jmeter/CheckUser.jmx)

D. Create Session:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/CreateSession.jmx](src/test/jmeter/CreateSession.jmx)

E. Bind User:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/BindUser.jmx](src/test/jmeter/BindUser.jmx)

F. Check Access:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/CheckAccess.jmx](src/test/jmeter/CheckAccess.jmx)

G. Check Role:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/CheckRole.jmx](src/test/jmeter/CheckRole.jmx)

H. Session Perms:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/SessionPerms.jmx](src/test/jmeter/SessionPerms.jmx)

I. Add Role:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/AddRole.jmx](src/test/jmeter/AddRole.jmx)

J. Del Role:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/DelRole.jmx](src/test/jmeter/DelRole.jmx)

K. Assign User:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/AssignUser.jmx](src/test/jmeter/AssignUser.jmx)

L. Deassign User:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/DeassignUser.jmx](src/test/jmeter/DeassignUser.jmx)

M. Add Permission:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/AddPerm.jmx](src/test/jmeter/AddPerm.jmx)

N. Del Permission:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/DelPerm.jmx](src/test/jmeter/DelPerm.jmx)

O. Grant Permission:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/GrantPerm.jmx](src/test/jmeter/GrantPerm.jmx)

P. Revoke Permission:
- [https://github.com/apache/directory-fortress-core/blob/master/src/test/jmeter/RevokePerm.jmx](src/test/jmeter/RevokePerm.jmx)

#### 3. Understanding the jmeter parameters

These settings affect the length, duration, and the number of threads:

* **LoopController.continue_forever**: boolean value, if *false*, test duration is controlled by numbers of *loops* and *threads*.
* **LoopController.loops**: integer value, contains the number of iterations each thread performs the test function.
* **ThreadGroup.num_threads**: integer value, contains the number of threads to use in the test.
* **ThreadGroup.ramp_time**: integer value, number of seconds for starting threads.  A rule of thumb, set to same as num_threads.

For example:
```xml
<ThreadGroup guiclass="ThreadGroupGui" testclass="ThreadGroup" testname="Fortress CreateSession" enabled="true">
 ...
 <elementProp name="ThreadGroup.main_controller" ...>
     <boolProp name="LoopController.continue_forever">false</boolProp>
     <stringProp name="LoopController.loops">1000</stringProp>
 </elementProp>
 <stringProp name="ThreadGroup.num_threads">10</stringProp>
 <stringProp name="ThreadGroup.ramp_time">10</stringProp>
 ...
</ThreadGroup>
```

This test will start ten threads in ten seconds.  Each thread executes the *createSession* function 1000 times before terminating.

#### 4. Configure Log4j2

The jmeter-maven-plugin log4j config file, [log4j2.xml](https://github.com/apache/directory-fortress-core/blob/master/src/test/conf/log4j2.xml) must be present in the src/test/conf folder.

##### src/test/conf/log4j2.xml config file:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Configuration>
    <Appenders>
        <File name="file" fileName="fortress-jmeter.log" append="true">
            <PatternLayout pattern="%d{yyyy-MM-dd HH:mm:sss} %-5p %c{1}:%L - %m%n"/>
        </File>
        <Console name="console" target="SYSTEM_OUT">
            <PatternLayout pattern="%d{yyyy-MM-dd HH:mm:sss} %-5p %c{1}:%L - %m%n"/>
        </Console>
    </Appenders>
    <Loggers>
        <Logger name="org.apache.directory.api" level="info"/>
        <Logger name="org.apache.directory.fortress.core" level="info"/>
        <Root level="warn">
            <AppenderRef ref="file"/>
        </Root>
    </Loggers>
</Configuration>
```

Tips:
- Use course-grained logging and a file appender for application logging.
- Use console output for viewing the jmeter test progress.
- Use the jmeter and log4j log files (more later) when troubleshooting and reporting.

More info on testing with the jmeter-maven-plugin:
- [Basic Configuration](https://github.com/jmeter-maven-plugin/jmeter-maven-plugin/wiki/Basic-Configuration)

#### 5. Run the tests

##### Overview of the tests

The tests run from the command line as a maven profile.

| Name           | Usage                                             |
|----------------|---------------------------------------------------|
| add users      | mvn verify -Ploadtest -Dtype=AddUser [args]       |
| del users      | mvn verify -Ploadtest -Dtype=DelUser [args]       |
| user check     | mvn verify -Ploadtest -Dtype=CheckUser [args]     |
| create session | mvn verify -Ploadtest -Dtype=CreateSession [args] |
| bind user      | mvn verify -Ploadtest -Dtype=BindUser [args]      |
| check access   | mvn verify -Ploadtest -Dtype=CheckAccess [args]   |
| check role     | mvn verify -Ploadtest -Dtype=CheckRole [args]     |
| session perms  | mvn verify -Ploadtest -Dtype=SessionPerms [args]  |
| add roles      | mvn verify -Ploadtest -Dtype=AddRole [args]       |
| del roles      | mvn verify -Ploadtest -Dtype=DelRole [args]       |
| assign user    | mvn verify -Ploadtest -Dtype=AssignUser [args]    |
| deassign user  | mvn verify -Ploadtest -Dtype=DeassignUser [args]  |
| grant perm     | mvn verify -Ploadtest -Dtype=GrantPerm [args]     |
| revoke perm    | mvn verify -Ploadtest -Dtype=RevokePerm [args]    |

##### Description of runtime arguments

These may be injected into the runtime as Java system (-D) command-line arguments or jmeter params:

| Name      | Type    | Test                                                        | Jmeter param | Java system prop | Description                                                                                  | Example                | Default                |
|-----------| ------- |-------------------------------------------------------------|--------------| ---------------- |----------------------------------------------------------------------------------------------|------------------------|------------------------|
| batchsize | Integer | not AddUser,DelUser                                         | True         | True             | Number of users to iterate over when checking authN and/or authZ.                            | batchsize=1000         | 10                     |
| duplicate | Integer | AddUser,DelUser                                             | False        | True             | Duplicate operation after specified interval.                                                | duplicate=1000         | none (don't duplicate) |
| hostname  | String  | all                                                         | False        | True             | Useful for distributing the load in a multi-provider env. Will override fortress.properties. | hostname=foo           | none                   |
| ou        | String  | AddUser,AddPerm                                             | True         | True             | The group name                                                                               | name=localhost-A1-1    | none                   |
| password  | String  | not DelUser                                                 | True         | True             | The password used by test users                                                              | password=newsecret     | secret                 |
| perm      | String  | CheckUser,CheckAccess, AddPerm,DelPerm,GrantPerm,RevokePerm | True         | True             | Format is objectName.operationName                                                           | perm=jmeterobject.oper | none                   |
| qualifier | String  | all                                                         | True         | True             | Part of the userid: hostname + qualifier + counter.                                          | qualifier=A1           | none                   |
| role      | String  | AddUser,CheckRole,AddRole,DelRole,AssignUser,DeassignUser   | True         | True             | The role name                                                                                | role=jmeterrole        | none                   |
| sleep     | Integer | all                                                         | True         | True             | Sleep this many milliseconds after op.                                                       | sleep=30               | none (no sleep)        |
| update    | Boolean | AddUser                                                     | True         | True             | Edit user's description.                                                                     | update=true            | false                  |
| verify    | Boolean | AddUser,DelUser                                             | True         | True             | e.g. read after op to verify success.                                                        | verify=true            | false                  |

- Java system properties take precedence over params set in the Jmeter config files.

##### Examples of jmeter tests

From **FORTRESS_HOME** folder, enter the following command from a system prompt:

A. Add Users:

Will add user entry.  Optionally will perform an update and/or role assignment.

```bash
mvn verify -Ploadtest -Dtype=ftAddUser -Dqualifier=A1 -Dverify=true -Dsleep=30 -Dupdate=true -Dou=loadtestu -Drole=jmeterrole
```

This test adds users.  The following system properties are passed on the command line to define behavior:

| name=value      | Usage                                            |
|-----------------|--------------------------------------------------|
| type=AddUser    | run the AddUser test case                        |
| qualifier=A1    | construct userid: hostname + qualifier + counter | 
| verify=true     | read after operation to verify success           | 
| sleep=30        | sleep this many milliseconds between ops         |
| update=true     | edit user's description if set to true           | 
| ou=loadtestu    | orgunit is required on fortress users            |  
| role=jmeterrole | role assignments are optional                    | 
| password=secret | optional override to default password            |

- It may be more convenient to set these in the jmeter config files instead. Choose the approach that works in your test setup.

B. Delete Users:

```bash
mvn verify -Ploadtest -Dtype=ftDelUser -Dqualifier=A1 -Dverify=true -Dsleep=30
```

* Same properties as add except for 'ou', which is not used for delete ops

C. Check Users:

Performs createSession followed by optional calling checkAccess.

```bash
mvn verify -Ploadtest -Dtype=CheckUser -Dqualifier=A1 -Dperm=jmeterobject.oper -Dbatchsize=10000
```
Arguments:

| name=value             | Usage                                                      |
|------------------------|------------------------------------------------------------|
| type=CheckUser         | run the CheckUser test case                                |
| qualifier=A1           | construct userid: hostname + qualifier + counter           |
| perm=jmeterobject.oper | calls checkAccess if set. Format: objectName.operationName |
| batchsize=10000        | we have 10000 users in our batch                           | 

D. Create Session:

Performs createSession only.

```bash
mvn verify -Ploadtest -Dtype=CreateSession -Dqualifier=A1 -Dbatchsize=10000
```

E. Check Access:

Perform createSession and one checkAccess.

```bash
mvn verify -Ploadtest -Dtype=CheckAccess -Dqualifier=A1 -Dperm=jmeterobject.oper -Dbatchsize=10000
```
Arguments:
- perm=jmeterobject.oper   <-- Format: objectName.operationName.

F. Bind User:

Performs authentication.

```bash
mvn verify -Ploadtest -Dtype=BindUser -Dqualifier=A1 -Dbatchsize=10000
```

G. Check Role:

Performs createSession and isUserInRole.

```bash
mvn verify -Ploadtest -Dtype=CheckRole -Dqualifier=A1 -Drole=jmeterrole -Dbatchsize=10000
```

H. Session Perms:

Performs createSession and sessionPermissions.

```bash
mvn verify -Ploadtest -Dtype=SessionPerms -Dqualifier=A1 -Dbatchsize=10000
```

I. Add Role:

- Add role entries to the directory.

```bash
mvn verify -Ploadtest -Dtype=AddRole -Dqualifier=A1
```

J. Delete Role:

- Delete role entries from the directory.

```bash
mvn verify -Ploadtest -Dtype=DelRole -Dqualifier=A1
```

K. Assign User:

- Assign users to roles.

```bash
mvn verify -Ploadtest -Dtype=AssignUser -Dqualifier=A1
```

L. Deassign User:

- Deassign users from roles.

```bash
mvn verify -Ploadtest -Dtype=DeassignUser -Dqualifier=A1
```

M. Add Permission:

```bash
mvn verify -Ploadtest -Dtype=AddPerm -Dperm=foo.exe
```

N. Delete Permission:

```bash
mvn verify -Ploadtest -Dtype=DelPerm -Dperm=foo.exe
```

O. Grant Permission:

```bash
mvn verify -Ploadtest -Dtype=GrantPerm -Dperm=foo.exe -Drole=localhost-X2-78
```

P. Revoke Permission:

```bash
mvn verify -Ploadtest -Dtype=RevokePerm -Dperm=foo.exe -Drole=localhost-X2-78
```

#### 5. Understanding the tests

A. Batch Size property

- Required on the tests that perform operations like authentication or authorization.
- Defines the size of the user set for a particular test. The default is 10.
- Sets the global counter max, used to generate test userId.

```bash
mvn verify -Ploadtest -Dtype=BindUser -Dbatchsize=100 -Dqualifier=A1
```

- The above test iterates over 100 users performing authentication.

##### src/test/jmeter/BindUser.jmx jmeter config file:

```xml
      <ThreadGroup guiclass="ThreadGroupGui" testclass="ThreadGroup" testname="Fortress BindUser" enabled="true">
        ...
        <elementProp name="ThreadGroup.main_controller" elementType="LoopController" guiclass="LoopControlPanel" testclass="LoopController" testname="Loop Controller" enabled="true">
          <stringProp name="LoopController.loops">500</stringProp>
        </elementProp>
        <stringProp name="ThreadGroup.num_threads">10</stringProp>
        ...
      </ThreadGroup>
```

- 5,000 bind operations will occur during the test.

##### target/jmeter/results/[DATE]-BindUser.csv log file:

```bash
# notice the generated userids, localhost-A1-1, localhost-A1-2, localhost-A1-3
1688562906113,21,Fortress BindUser,,test completed TID: 19 UID: localhost-A1-1,Fortress BindUser 1-1,,true,,0,0,1,1,null,0,0,0
1688562906136,3,Fortress BindUser,,test completed TID: 19 UID: localhost-A1-2,Fortress BindUser 1-1,,true,,0,0,1,1,null,0,0,0
1688562906139,5,Fortress BindUser,,test completed TID: 19 UID: localhost-A1-3,Fortress BindUser 1-1,,true,,0,0,1,1,null,0,0,0
...
# when the counter == batchsize (100) it will reset to 1
1688562906455,4,Fortress BindUser,,test completed TID: 19 UID: localhost-A1-100,Fortress BindUser 1-1,,true,,0,0,2,2,null,0,0,0
1688562906455,3,Fortress BindUser,,test completed TID: 20 UID: localhost-A1-1,Fortress BindUser 1-2,,true,,0,0,2,2,null,0,0,0
1688562906459,3,Fortress BindUser,,test completed TID: 20 UID: localhost-A1-2,Fortress BindUser 1-2,,true,,0,0,2,2,null,0,0,0
...
# and keep doing that until the number of iterations (5,000) has been reached
1688562915035,2,Fortress BindUser,,test completed TID: 28 UID: localhost-A1-100,Fortress BindUser 1-10,,true,,0,0,1,1,null,0,0,0
```

B. Qualifier property.

- The add test generates userids based on: hostname + qualifier + counter.
- The counter is global across threads, so if you enable 20 threads * 100 loops:

##### src/test/jmeter/AddUser.jmx jmeter config file:

```xml
      <ThreadGroup guiclass="ThreadGroupGui" testclass="ThreadGroup" testname="Fortress AddUser" enabled="true">
        ...
        <elementProp name="ThreadGroup.main_controller" elementType="LoopController" guiclass="LoopControlPanel" testclass="LoopController" testname="Loop Controller" enabled="true">
          <stringProp name="LoopController.loops">100</stringProp>
        </elementProp>
        <stringProp name="ThreadGroup.num_threads">20</stringProp>
        ...
      </ThreadGroup>
```

- with a qualifier = 'A1', 2,000 users will be added:

```bash
mvn verify -Ploadtest -Dtype=AddUser -Dqualifier=A1
```

##### target/jmeter/results/[DATE]AddUser.csv log file:

```bash
1688515254648,107,Fortress AddUser,,test completed TID: 19 UID: localhost-A1-1,Fortress AddUser 1-1,,true,,0,0,2,2,null,0,0,0
1688515254648,115,Fortress AddUser,,test completed TID: 20 UID: localhost-A1-2,Fortress AddUser 1-2,,true,,0,0,2,2,null,0,0,0
1688515254758,22,Fortress AddUser,,test completed TID: 19 UID: localhost-A1-3,Fortress AddUser 1-1,,true,,0,0,2,2,null,0,0,0
...
# the test stops after 2,000 iterations, adding users localhost-A1-1 - localhost-A1-2000
1688515271941,19,Fortress AddUser,,test completed TID: 37 UID: localhost-A1-2000,Fortress AddUser 1-19,,true,,0,0,1,1,null,0,0,0
```

- If the same test runs a second time (before a delete run) it'll fail with duplicates as it tries to add the same users again.
- This is the idea of the 'qualifier'. It defines test batches.
- Change its value and create new batches.
- DelUser work the same way. Delete the user in the A1 batch by running:

```bash
mvn verify -Ploadtest -Dtype=DelUser -Dqualifier=A1
```

- The thread and loop properties in DelUser.jmx must match AddUser.jmx in order for the same size to be computed.

C. Verify property

- When true, a read entry is performed after the write.

```bash
mvn verify -Ploadtest -Dtype=AddUser -Dqualifier=A1 -Dverify=true
```

- Don't confuse the verify property with the maven verify target. One is required on all test invocations, the other optional.

D. Update property

- When true, an update will be performed to the user's description field following the add.

```bash
mvn verify -Ploadtest -Dtype=AddUser -Dqualifier=A1 -Dupdate=true
```

E. Role property

- If 'role' set as property, it will be assigned after the add.  The role itself must already exist before being used in assignment to user.

```bash
mvn verify -Ploadtest -Dtype=AddUser -Dqualifier=A1 -Drole=jmeterrole
```

- Tests that call checkAccess method (CheckUser, CheckAccess) will fail if role has not been assigned.
- Tests that call isUserInRole method (CheckRole) will fail if not assigned.

F. Perm property

- This param is optional in CheckUser and required in CheckAccess.

```bash
# will call checkAccess 10 times (if set) per test iteration:
mvn verify -Ploadtest -Dtype=CheckUser -Dperm=jmeterobject.oper -Dbatchsize=10000
# calls checkAccess once per test:
mvn verify -Ploadtest -Dtype=CheckAccess -Dperm=jmeterobject.oper -Dbatchsize=10000
```

- These permissions must already exist (loaded via security policy) before running this test.
- CheckUser will iterate over 10 perms, e.g. jmeter.oper1, jmeter.oper2, jmeter.oper3, ... jmeter.oper10
- CheckUser picks a random number between 1 and 10 and uses that.

#### 6. Troubleshooting

- The first place to look is the standard out.
- The files listed below contain additional info.

A. View the results
- target/jmeter/results/[DATE]-AddUser.csv
- target/jmeter/results/[DATE]-DelUser.jmx.csv
- target/jmeter/results/[DATE]-CheckUser.csv
- target/jmeter/results/[DATE]-CreateSession.csv
- target/jmeter/results/[DATE]-CheckAccess.csv
- target/jmeter/results/[DATE]-BindUser.csv
- target/jmeter/results/[DATE]-CheckRole.csv
- target/jmeter/results/[DATE]-SessionPerms.csv
- target/jmeter/results/[DATE]-AddRole.csv
- target/jmeter/results/[DATE]-DelRole.jmx.csv
- target/jmeter/results/[DATE]-AssignUser.csv
- target/jmeter/results/[DATE]-DeassignUser.jmx.csv
- target/jmeter/results/[DATE]-AddPerm.csv
- target/jmeter/results/[DATE]-DelPerm.jmx.csv
- target/jmeter/results/[DATE]-GrantPerm.csv
- target/jmeter/results/[DATE]-RevokePerm.jmx.csv

B. View the Log4j logs

if file logging enabled in log4j2.xml:
* ./target/.../jmeter/bin/fortress-jmeter.log

Otherwise log4j outputs to console

C. Common Errors

##### i. jmeter tests fail java.lang.NoSuchMethodError

Happens when jmeter test instance can't load all of its classes. Ensure the required libs have been loaded.

```bash
[INFO] Executing test: AddUser.jmx
[INFO] Arguments for forked JMeter JVM: [java, -Xms1024M, -Xmx1024M, -Djava.awt.headless=true, -jar, ApacheJMeter-5.5.jar, -d, /home/smckinn/GIT/fortressDev/directory-fortress-core/target/b8ccc8a0-8845-4d34-aa10-b4ec7f50f4f5/jmeter, -j, /home/smckinn/GIT/fortressDev/directory-fortress-core/target/jmeter/logs/AddUser.jmx.log, -l, /home/smckinn/GIT/fortressDev/directory-fortress-core/target/jmeter/results/20230702-AddUser.csv, -n, -t, /home/smckinn/GIT/fortressDev/directory-fortress-core/target/jmeter/testFiles/AddUser.jmx, -Dsun.net.http.allowRestrictedHeaders, true, -Dqualifier, A10, -Dversion, 3.0.0-SNAPSHOT]
[INFO]  
[INFO] java.lang.NoSuchMethodError: 'void org.apache.logging.slf4j.Log4jLoggerFactory.<init>(org.apache.logging.slf4j.Log4jMarkerFactory)'
[INFO]  at org.apache.logging.slf4j.SLF4JServiceProvider.initialize(SLF4JServiceProvider.java:54)
[INFO]  at org.slf4j.LoggerFactory.bind(LoggerFactory.java:183)
[INFO]  at org.slf4j.LoggerFactory.performInitialization(LoggerFactory.java:170)
[INFO]  at org.slf4j.LoggerFactory.getProvider(LoggerFactory.java:455)
[INFO]  at org.slf4j.LoggerFactory.getILoggerFactory(LoggerFactory.java:441)
[INFO]  at org.slf4j.LoggerFactory.getLogger(LoggerFactory.java:390)
[INFO]  at org.slf4j.LoggerFactory.getLogger(LoggerFactory.java:416)
[INFO]  at org.apache.jmeter.JMeter.<clinit>(JMeter.java:113)
[INFO]  at java.base/jdk.internal.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
[INFO]  at java.base/jdk.internal.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)
[INFO]  at java.base/jdk.internal.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
[INFO]  at java.base/java.lang.reflect.Constructor.newInstance(Constructor.java:490)
[INFO]  at org.apache.jmeter.NewDriver.main(NewDriver.java:257)
[INFO] JMeter home directory was detected as: /home/smckinn/GIT/fortressDev/directory-fortress-core/target/b8ccc8a0-8845-4d34-aa10-b4ec7f50f4f5/jmeter
[INFO] Completed Test: /home/smckinn/GIT/fortressDev/directory-fortress-core/target/jmeter/testFiles/AddUser.jmx
[INFO]  
[INFO] 
[INFO] --- tools:1.4:verify-legal-files (verify-legal-files) @ fortress-core ---
```
____________________________________________________________________________________
##### ii. jmeter error: Error in NonGUIDriver null

The current version of jmeter v5.6 requires

```xml
    <!-- Required for jmeter runtime. Fixes: Error in NonGUIDriver java.lang.NullPointerException -->
    <dependency>
      <groupId>org.apache.jmeter</groupId>
      <artifactId>jorphan</artifactId>
      <version>${version.jmeter.java}</version>
      <scope>test</scope>
    </dependency>
```

Sample error

```bash
[INFO] Executing test: AddUser.jmx
[INFO] Arguments for forked JMeter JVM: [java, -Xms1024M, -Xmx1024M, -Djava.awt.headless=true, -jar, ApacheJMeter-5.5.jar, -d, /home/smckinn/GIT/fortressDev/directory-fortress-core/target/dceff4c0-ff24-4e9c-ad4a-7db38b276b52/jmeter, -j, /home/smckinn/GIT/fortressDev/directory-fortress-core/target/jmeter/logs/AddUser.jmx.log, -l, /home/smckinn/GIT/fortressDev/directory-fortress-core/target/jmeter/results/20230702-AddUser.csv, -n, -t, /home/smckinn/GIT/fortressDev/directory-fortress-core/target/jmeter/testFiles/AddUser.jmx, -Dsun.net.http.allowRestrictedHeaders, true, -Dqualifier, A10, -Dversion, 3.0.0-SNAPSHOT]
[INFO]  
[INFO] Error in NonGUIDriver java.lang.NullPointerException
[INFO] An error occurred: Error in NonGUIDriver null
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  12.799 s
[INFO] Finished at: 2023-07-02T14:04:09-05:00
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal com.lazerycode.jmeter:jmeter-maven-plugin:3.7.0:jmeter (jmeter-tests) on project fortress-core: Test failed with exit code:1 -> [Help 1]
[ERROR] 
[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR] 
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoExecutionException
[INFO] Shutdown detected, destroying JMeter process...
```
____________________________________________________________________________________

##### iii. jmeter tests hang

Observation:
When running tests that consume lots of memory, e.g. using many threads and/or enabling REST, the process hangs.
Jmeter and log4j logs stop outputing. The machine's otherwise unaffected. LDAP and/or HTTP servers are responsive.
Root Cause:
Most likely jmeter has run out of memory.  
An error is not reported. The process hangs and stops responding.

Remedy:
Edit the project's pom.mxl. Goto the loadtest profile. Increase the memory allocation, e.g. 2048 (2GB):
```xml
<profile>
   <id>loadtest</id>
   <build>
    ...
      <jMeterProcessJVMSettings>
         <xms>2048</xms>
         <xmx>2048</xmx>
      </jMeterProcessJVMSettings>
    ...
   </build>
</profile>
```
____________________________________________________________________________________

##### iv. too many open files

Observation:
When running loadtests thought the REST interface, Exceptions in log file:

###### target/[GUID]/jmeter/bin/fortress-jmeter.log

```bash
2023-07-05 01:59:015 WARN  UserBase:219 - ThreadId: 23, error running test: org.apache.directory.fortress.core.RestException: post uri=[https://fortress-a:8443/fortress-rest-3.0.0-SNAPSHOT/], function=[rbacCheck], caught IOException=Too many open files
2023-07-05 01:59:015 ERROR RestUtils:389 - post uri=[https://fortress-a:8443/fortress-rest-3.0.0-SNAPSHOT/], function=[rbacCheck], caught IOException=Too many open files
java.net.SocketException: Too many open files
```

Remedy:
Increase the maximum open files for ALL users. Requires a reboot to become active.

###### /etc/security/limits.conf

```
'*               -       nofile             8192'
```
____________________________________________________________________________________
