---
title: SCIMple Downloads
---

# Download SCIMple

## SCIMple Archive Downloads 

To Download Apache Directory SCIMple:

* ![Download](../images/download-sources.png) [Download Sources](download/download-sources.html)

## SCIMple Maven Dependencies

To embed Apache Directory SCIMple components into applications via Maven dependencies:

Add the Apache SCIMple dependencies to the project:

```xml
<dependency>
    <groupId>org.apache.directory.scim</groupId>
    <artifactId>scim-server</artifactId>
    <version>{{< param version_scimple >}}</version>
</dependency>

<!-- Spring Boot users, can use the starter package -->
<dependency>
    <groupId>org.apache.directory.scim</groupId>
    <artifactId>scim-spring-boot-starter</artifactId>
    <version>{{< param version_scimple >}}</version>
</dependency>
```

See the [Five Minute Spring Boot tutorial](five-minutes-tutorial) for more details!

Tutorials for other frameworks coming soon! If you cannot wait, look at the [examples on GitHub](https://github.com/apache/directory-scimple/tree/{{< param version_scimple >}}/scim-server-examples):

- [Quarkus](https://github.com/apache/directory-scimple/tree/{{< param version_scimple >}}/scim-server-examples/scim-server-quarkus)
- [Spring Boot](https://github.com/apache/directory-scimple/tree/{{< param version_scimple >}}/scim-server-examples/scim-server-spring-boot)
- [Jersey](https://github.com/apache/directory-scimple/tree/{{< param version_scimple >}}/scim-server-examples/scim-server-jersey)
- [Jakarta EE War](https://github.com/apache/directory-scimple/tree/{{< param version_scimple >}}/scim-server-examples/scim-server-memory)