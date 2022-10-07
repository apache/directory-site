---
title: 7 - Dependency
navPrev: 6-network-support.html
navPrevText: 6 - Network Support
navUp: ../user-guide.html
navUpText: User Guide
---

# 7 - Dependency

* The core part is ensured to only depend on the JRE and SLF4J. Every external dependency is taken carefully and maintained separately.
* [Nimbus JOSE + JWT](https://connect2id.com/products/nimbus-jose-jwt), needed by token-provider and TokenPreauth mechanism.
* [Netty](https://netty.io/), needed by netty based KDC server.
* [Zookeeper](https://zookeeper.apache.org/), needed by zookeeper identity backend.
