---
title: 7 - Embedding ApacheDS in Java
navPrev: 6-implementing-interceptor.html
navPrevText: 6 - Implementing a simple custom Interceptor for ApacheDS
navNext: 8-operational-attributes.html
navNextText: 8 - Operational Attributes
navUp: ../advanced-user-guide.html
navUpText: Advanced User Guide
---

# 7 - Embedding ApacheDS in Java

## Using ApacheDS for unit tests
The idea is to use ADS as an embedded server for Ldap junit tests.
We will build an environment in which it will be convenient to test
Ldap applications.

We also want to avoid launching the server for every test, as it's
an expensive operation. We have built ApacheDS so that you can start
a server, inject some data, launch a test, then revert the data and
go on to another test. At the end of the tests, the server is stopped.

### Prerequicites
We will assume you have **Maven** project and using **JUNIT** for testing

### First steps
#### Maven
You need to add following dependency to your `pom.xml`:

    <dependency>
        <groupId>org.apache.directory.server</groupId>
        <artifactId>apacheds-test-framework</artifactId>
        <version>2.0.0.AM25</version>
        <scope>test</scope>
    </dependency>

Please NOTE: you need to exclude `org.apache.directory.api:api-ldap-schema-data`
artifact from above dependency in case your project uses `org.apache.directory.api:api-all`

#### Java
Maven set-up was easy enough, let's create our first unit test:

##### Resources
Lets describe your LDAP structure in external LDIF file

Create file `src/test/resources/users.ldif` with following text:

    version: 1
    dn: dc=myorg,dc=com
    objectClass: domain
    objectClass: top
    dc: myorg
    
    dn: ou=Users,dc=myorg,dc=com
    objectClass: organizationalUnit
    objectClass: top
    ou: Users
    
    dn: ou=Groups,dc=myorg,dc=com
    objectClass: organizationalUnit
    objectClass: top
    ou: Groups
    
    dn: cn=Test1 Ldap,ou=Users,dc=myorg,dc=com
    objectClass: inetOrgPerson
    objectClass: organizationalPerson
    objectClass: person
    objectClass: top
    cn: Test1 Ldap
    sn: Ldap
    uid: ldaptest1
    userPassword: 12345


##### Basic test

    import org.apache.directory.server.core.integ.AbstractLdapTestUnit;
    import org.apache.directory.server.core.integ.FrameworkRunner;
    import org.apache.directory.server.core.annotations.CreateDS;
    import org.apache.directory.server.core.annotations.CreatePartition;
    import org.apache.directory.server.annotations.CreateLdapServer;
    import org.apache.directory.server.annotations.CreateTransport;
    import org.apache.directory.server.core.annotations.ApplyLdifFiles;
    import org.junit.runner.RunWith;
    import org.junit.Test;
    
    @RunWith(FrameworkRunner.class)
    @CreateDS(name = "myDS",
        partitions = {
            @CreatePartition(name = "test", suffix = "dc=myorg,dc=com")
        })
    @CreateLdapServer(transports = { @CreateTransport(protocol = "LDAP", address = "localhost")})
    @ApplyLdifFiles({"users.ldif"})
    public class TestLdap extends AbstractLdapTestUnit {
        @Test
        public void test() {
            //do whatever you need with `ldapServer`
        }
    }


As a result you can access running ApacheDS server at `ldap://localhost:<random port>`
inside your test, or access server internals via `static ldapServer`.

##### Advanced usage
Often you need to add LDAP unit tests to already created tests, in this case you might
not be allowed to `extend AbstractLdapTestUnit` and/or to `@RunWith(FrameworkRunner.class)`
In this case you can use `@ClassRule`.
Here is the example:

    import org.apache.directory.server.core.annotations.CreateDS;
    import org.apache.directory.server.core.annotations.CreatePartition;
    import org.apache.directory.server.annotations.CreateLdapServer;
    import org.apache.directory.server.annotations.CreateTransport;
    import org.apache.directory.server.core.annotations.ApplyLdifFiles;
    import org.apache.directory.server.core.integ.CreateLdapServerRule;
    import org.junit.ClassRule;
    import org.junit.Test;
    
    @CreateDS(name = "myDS",
        partitions = {
            @CreatePartition(name = "test", suffix = "dc=myorg,dc=com")
        })
    @CreateLdapServer(transports = { @CreateTransport(protocol = "LDAP", address = "localhost")})
    @ApplyLdifFiles({"users.ldif"})
    public class TestLdap {
        @ClassRule
        public static CreateLdapServerRule serverRule = new CreateLdapServerRule();
    
        @Test
        public void test() {
            //do whatever you need with `serverRule.getLdapServer()`
        }
    }


As you can see the code if very much the same, the only difference: you are working with
`serverRule.getLdapServer()` and not with `ldapServer`



