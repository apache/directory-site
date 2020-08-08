---
title: Fortress Downloads
---

# Download Fortress

## Fortress Archive Downloads 

To Download Apache Fortress:

* ![Download](../images/download-archive.png) [Download Binaries](download/download-archive.html)
* ![Download](../images/download-sources.png) [Download Sources](download/download-sources.html)

## Fortress Maven Dependencies

To embed Apache Fortress components into applications via Maven dependencies:

    <!-- 1. Fortress Core API usage: -->
    <dependency>
        <groupId>org.apache.directory.fortress</groupId>
        <artifactId>fortress-core</artifactId>
        <version>${fortress-version}</version>
    </dependency>

    <!-- 2. Fortress Realm API usage: -->
    <dependency>
      <groupId>org.apache.directory.fortress</groupId>
      <artifactId>fortress-realm-impl</artifactId>
      <version>${fortress.version}</version>
    </dependency>

    <!-- 3. Fortress Web API usage: -->
    <dependency>
      <groupId>org.apache.directory.fortress</groupId>
      <artifactId>fortress-web</artifactId>
      <version>${fortress.version}</version>
    </dependency>

Note: Fortress Web is dependent on Fortress Realm is dependent on Fortress Core.
