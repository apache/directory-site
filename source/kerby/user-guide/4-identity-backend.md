---
title: 4 - Identity Backend
navPrev: 3.4-klist.html
navPrevText: 3.4 - klist
navUp: ../user-guide.html
navUpText: User Guide
navNext: 5-crypto-and-encryption-types.html
navNextText: 5 - Kerberos Crypto and Encryption Types
---

# 4 - Identity Backend
A standalone KDC server that can integrate various identity back ends including:

* MemoryIdentityBackend.
    * It is default Identity Backend, and no cofiguration is needed. This backend is for no permanent storage requirements.

* JsonIdentityBackend.
    * It implemented by Gson which is used to convert Java Objects into their JSON representation and convert a JSON string to an equivalent Java object. A json file will be created in "backend.json.file". This backend is for small, easy, development and test environment.

* ZookeeperIdentityBackend.
    * Currently it uses an embedded Zookeeper. In follow up it will be enhanced to support standalone Zookeeper cluster for replication and reliability. Zookeeper backend would be a good choice for high reliability, high performance and high scalability requirement and scenarios.

* LdapIdentityBackend.
    * The Ldap server can be standalone or embedded using ApacheDS server as the backend. It is used when there is exist ldap server.

* MavibotBackend.
    * A backend based on Apache Mavibot(an MVCC BTree library).