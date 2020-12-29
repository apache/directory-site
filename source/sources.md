---
title: Sources
---

# Sources

Most sources for the Apache Directory projects are managed through Git, some parts still remain in Subversion. For each project you can find a detailed description how to checkout and build the source on the project documentation. This page is just a short overview.

## Web access

If you just want to browse the source code, you can use one of the web interfaces:

* [web interface to Gitbox](https://gitbox.apache.org/repos/asf#directory)
* [web interface to GitHub](https://github.com/apache?q=directory-)
* [web interface to Subversion](https://svn.apache.org/viewvc/directory)

## Normal Git/Subversion Access

Anyone can clone a git repository or check code out from Subversion. You only need to specify a username and password in order to update a repository, and only Directory committers have the permissions to do that. We run Git and Subversion over standard HTTPS, so hopefully you won't have problems with intervening firewalls.

### Check out from Git or Subversion

For Git use a command like:

    git clone https://gitbox.apache.org/repos/asf/directory-server.git

For Subversion Use a command like:

	svn checkout https://svn.apache.org/repos/asf/directory/apacheds/trunk

The following table displays the URL of each project, and the URL where you can find information about how to build each project.

| Subproject / Documentation | SCM URL |
|:-:|:-:|
| ApacheDS  1.0 (not maintained) | [https://svn.apache.org/repos/asf/directory/apacheds/tags/1.0.2/](https://svn.apache.org/repos/asf/directory/apacheds/tags/1.0.2/) |
| [ApacheDS  2.0](https://directory.apache.org/apacheds/advanced-ug/0.2-building-trunks.html) | [https://gitbox.apache.org/repos/asf/directory-server.git](https://gitbox.apache.org/repos/asf/directory-server.git) |
| ApacheDS build tools (checkstyle, docker, junit-addons, skins) | [https://gitbox.apache.org/repos/asf/directory-buildtools.git](https://gitbox.apache.org/repos/asf/directory-buildtools.git) |
| [Apache Directory Studio](https://directory.apache.org/studio/developers-guide.html) | [https://gitbox.apache.org/repos/asf/directory-studio.git](https://gitbox.apache.org/repos/asf/directory-studio.git) |
| [Apache LDAP API](https://directory.apache.org/api/developer-guide.html) | [https://gitbox.apache.org/repos/asf/directory-ldap-api.git](https://gitbox.apache.org/repos/asf/directory-ldap-api.git) |
| [Apache Mavibot](https://directory.apache.org/mavibot/developer-guide.html) | [https://gitbox.apache.org/repos/asf/directory-mavibot.git](https://gitbox.apache.org/repos/asf/directory-mavibot.git) |
| [Apache Fortress Core](https://directory.apache.org/fortress/developer-guide.html) | [https://gitbox.apache.org/repos/asf/directory-fortress-core.git](https://gitbox.apache.org/repos/asf/directory-fortress-core.git) |
| [Apache Fortress Realm](https://directory.apache.org/fortress/developer-guide.html) | [https://gitbox.apache.org/repos/asf/directory-fortress-realm.git](https://gitbox.apache.org/repos/asf/directory-fortress-realm.git) |
| [Apache Fortress EnMasse (REST API)](https://directory.apache.org/fortress/developer-guide.html) | [https://gitbox.apache.org/repos/asf/directory-fortress-enmasse.git](https://gitbox.apache.org/repos/asf/directory-fortress-enmasse.git) |
| [Apache Fortress Commander (Web UI)](https://directory.apache.org/fortress/developer-guide.html) | [https://gitbox.apache.org/repos/asf/directory-fortress-commander.git ](https://gitbox.apache.org/repos/asf/directory-fortress-commander.git ) |
| [Apache Kerby](https://directory.apache.org/kerby/developer-guide.html) | [https://gitbox.apache.org/repos/asf/directory-kerby.git ](https://gitbox.apache.org/repos/asf/directory-kerby.git ) |
| Apache SCIMple | [https://gitbox.apache.org/repos/asf/directory-scimple.git](https://gitbox.apache.org/repos/asf/directory-scimple.git) |
| Apache Directory Site | [https://svn.apache.org/repos/asf/directory/site/trunk/](https://svn.apache.org/repos/asf/directory/site/trunk/) |

### Commit Changes

Any Directory committer has commit access. Use your Apache user ID and LDAP password for authentication. You can change the password at [https://id.apache.org/](https://id.apache.org/).

###  Commit changes to Git

You can use a command like this to commit, rebase possible remote changes, and push your changes to the repository:

    git commit
    git pull --rebase
    git push

### Commit changes to Subversion

You can use a command like this to commit:

	svn commit

If Subversion can't figure out your username, you can tell it explicitly:

	svn --username you commit

Subversion will prompt you for a password, and once you enter it once, it will remember it for you.

## Web Site

The Web site itself is stored in a SVN repository and can be updated easily. Let's see how it works.

What is important here is that the pages are written using Markdown. Once a page has been modified, it can be committed, which will generate the static pages on a staging web site. When everything is checked and sounds correct, the staging site can be published on the production site, which will be pushed to the mirrors every hour. Here is the process :

* Modify the markdown pages
* Commit them
* Check on the staging site to see if it's correct (see [https://directory.staging.apache.org/](https://directory.staging.apache.org/))
* Publish the site using the [Apache CMS](https://www.apache.org/dev/cmsref.html)

### Repository

All the web site can be fetched at [https://svn.apache.org/repos/asf/directory/site/trunk/](https://svn.apache.org/repos/asf/directory/site/trunk/). Be sure to use *https* in order to be able to commit your changes...

### Structure
The following structure is used :

    cgi-bin

    content
      |
      +-- apacheds
      |
      +-- api
      .
      .
      +-- (common pages)

    lib
      |
      +-- path.pm
      |
      +-- view.pm

    templates
      |
      +-- apacheds
      |
      +-- api
      .
      .
      +-- studio
      |
      +-- (index.html, etc)

Usually, you won't have to change the templates and lib section (except when cutting a release). Most of ypur updates will impact the content/<project> pages.

### Publishing the web site

You have to install the [CMS bookmarklet](https://www.apache.org/dev/cms.html#usage) for that. Then simply open the directory web site and click on the bookmarklet, enter your apache credentials (you have to be a committer) and click on the 'Publish' button.

The best way to understand how to use the CMS system is to follow [this video](https://www.youtube.com/watch?v=xcDZN3Lu6HA).
