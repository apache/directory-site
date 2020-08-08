---
title: 17 - OSGi
navPrev: 16-dsml.html
navPrevText: 16 - DSML
navUp: ../internal-design-guide.html
navUpText: Internal Design Guide
---

# 17 - OSGi

The **LDAP API** can either be use as a standalone API, or in an **OSGi** environment.

## Activators

LdapProtocolCodecActivator

### ExtrasBundleActivator 

This activator loads and initializes extras controls and extended operations :

### DefaultActivator

This is the base activator. It instanciates and loads the _DefaultLdapCodecService_ class, which loas the default controls and extended operations
