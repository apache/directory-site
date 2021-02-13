---
title: FAQs
---

# FAQs

{{% toc %}}

### How to set the language of Studio?

Studio currentlly is translated in three languages: English (en), French (fr) and German (de). When starting Studio, the language setting of your operation system is used to determine the language of Studio (On linux, the LC_CTYPE environment variable is used to determinate the default language). 

However it is possible to force another language. Add the following content to the _ApacheDirectoryStudio.ini_ file (before the "-vmargs" line):

    -nl
    en

Please notice the line break between -nl and the language.


### When browsing and expanding an entry, Studio only shows 1000 child entries.

Studio uses a client-side count limit when browsing the DIT. This limit is defined in the connection properties. See
[Connection Properties](./users-guide/ldap_browser/tools_connection_properties.html#tools_connection_properties_browser_options) how to change it. 


### How to set the Java VM to use?

Add the following content to _ApacheDirectoryStudio.ini_ file (before the "-vmargs" line):

    -vm
    <path to java executable>

Please notice the line break between -vm and the path.

Studio requires Java 11 or newer.

MacOS note: You can find out the Java home directories with `/usr/libexec/java_home -V`, append `/bin/java` to the path


### How to increase the heap memory?

Add the following content to _ApacheDirectoryStudio.ini_ file:

    -vmargs
    -Xms128m
    -Xmx512m

Please notice the line breaks.


### Location of `ApacheDirectoryStudio.ini` file

* On Linux: in the installation folder
* On macOS: `/Applications/ApacheDirectoryStudio.app/Contents/Eclipse/ApacheDirectoryStudio.ini`
* On Windows: in the installation folder


### Location of Apache Directory Studio settings

The settings are located per default in your home directory under the directory _.ApacheDirectoryStudio_.

The file containing all connections is:

    ~/.ApacheDirectoryStudio/.metadata/.plugins/org.apache.directory.studio.connection.core/connections.xml

The file containing all searches and bookmarks is:

    ~/.ApacheDirectoryStudio/.metadata/.plugins/org.apache.directory.studio.ldapbrowser.core/browserconnections.xml

The file containing the history of the connection wizard (recently used hosts and bind users) is:

    ~/.ApacheDirectoryStudio/.metadata/.plugins/org.apache.directory.studio.connection.ui/dialog_settings.xml

The file containing the history of search settings (recently used DNs, filters, returning attributes) is:

    ~/.ApacheDirectoryStudio/.metadata/.plugins/org.apache.directory.studio.ldapbrowser.common/dialog_settings.xml

There are some more _dialog_settings.xml_ files in the other plugins directories.

Note: the location of the settings directory could be configured by changing the parameter "osgi.instance.area.default" in configuration/config.ini.

