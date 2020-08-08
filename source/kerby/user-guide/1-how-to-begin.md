---
title: 1 - How To Begin
navUp: ../user-guide.html
navUpText: User Guide
navNext: 2-kerberos-library.html
navNextText: 2 - Kerberos library
---

# 1 - How to begin
This chapter helps you to set up a Apache Kerby kdc server, with the minimal configuration options being explained. That should be enough to get a running server.

## How to play with the standalone KDC:

The distribution of Kerby.

### To run with a standalone kdc server, kinit and kadmin

* Generate libraries for distribution:

    $ mvn package -Pdist
	
* Run kdcinit:

    $ cd kerby-dist/kdc-dist
    $ sh bin/kdcinit.sh [server-conf-dir] [keytab]

    The admin principal will be exported into [keytab], it will be used by kadmin tool for the authentication. 

* Start kerby-kdc-server:

    $ cd kerby-dist/kdc-dist
    $ sh bin/start-kdc.sh [server-conf-dir] [work-dir]

* Run kadmin to add principals:

    $ cd kerby-dist/kdc-dist
    $ sh bin/kadmin.sh [server-conf-dir] [-k keytab]

  The keytab file is created by the kdcinit.
  In kadmin, you can type "?" for help.
	
* Run kinit:

    $ cd kerby-dist/tool-dist
    $ sh bin/kinit.sh [-conf client-conf-dir] [principal-name]
	
* Run klist:

    $ cd kerby-dist/tool-dist
    $ sh bin/klist.sh -c [credentials-cache]

  If you don't specify [server-conf-dir], it will be set as /etc/kerby. In [server-conf-dir], there should be kdc.conf, backend.conf. 
  And if you don't specify [client -conf-dir], it will be set as /etc/, there should be krb5.conf.

An example of kdc.conf:

    [kdcdefaults]
        kdc_host = localhost
        kdc_tcp_port = 8015
        kdc_realm = EXAMPLE.COM

An example of json backend backend.conf:

    kdc_identity_backend = org.apache.kerby.kerberos.kdc.identitybackend.JsonIdentityBackend
    backend.json.dir = /tmp/kerby/jsonbackend

An example of zookeeper backend backend.conf:

    kdc_identity_backend = org.apache.kerby.kerberos.kdc.identitybackend.ZookeeperIdentityBackend
    data_dir = /tmp/kerby/zookeeper/data
    data_log_dir = /tmp/kerby/zookeeper/datalog

An example of krb5.conf:

    [libdefaults]
        kdc_realm = EXAMPLE.COM
        kdc_tcp_port = 8015

