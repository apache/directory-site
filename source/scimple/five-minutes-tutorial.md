---
title: Five Minutes Tutorial
---

# Five Minutes Tutorial

> **NOTE:** Apache SCIMple is still in development, you must build Apache SCIMple from source.
> ```
> git clone https://github.com/apache/directory-scimple.git
> cd directory-scimple
> ./mvnw install
> ```


## Create a new Spring Boot 3.0 project

Head over to [start.spring.io](https://start.spring.io/#!type=maven-project&language=java&platformVersion=3.0.0&packaging=jar&jvmVersion=17) and create a new project with Spring Boot 3.

Add the Apache SCIMple dependencies to the project:

```xml
<dependency>
  <groupId>org.apache.directory.scim</groupId>
  <artifactId>scim-spring-boot-starter</artifactId>
  <version>${scimple.version}</version>
</dependency>
<dependency>
  <groupId>org.apache.directory.scim</groupId>
  <artifactId>scim-server</artifactId>
  <version>${scimple.version}</version>
</dependency>
```

## Implement Repositories

A SCIMple `Repository` is an abstraction used to reduce the boiler plain needed to implement a SCIM service. Each 
`Repository` implementation translates data to and from SCIMple's data model to an underlying data store.

> **TL;DR** A `Repository` handles all the CRUD operations of your User and Group data store. 

For example, to create an in-memory `Repository` that manages users objects, create a new class:

```java
@Service
public class InMemoryUserService implements Repository<ScimUser> {
```

Then implement each method (`create`, `get`, `update`, `delete`, and `find`).

The first four map to the expected CRUD operations, and the last method `find`, allows you to transform a SCIM query, 
into the query languages your objects are stored in.

You can view this complete example on [GitHub](https://github.com/apache/directory-scimple/tree/spring-boot/scim-server-examples/scim-server-spring-boot).
