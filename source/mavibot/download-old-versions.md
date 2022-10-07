---
title: Download Old Versions
---

# Download Old Versions

<CENTER>

| Version| Download Link | Javadoc & XRef | Date |
|:-:|:-:|:-:|:-:|
| Apache MAVIBOT 1.0.0-M7 | [Download](https://archive.apache.org/dist/directory/mavibot/dist/1.0.0-M7) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/mavibot/gen-docs/1.0.0-M7/apidocs/index.html), [Xref](https://svn.apache.org/repos/infra/websites/production/directory/content/mavibot/gen-docs/1.0.0-M7/xref/index.html) | 27/mar/2015 |
| Apache MAVIBOT 1.0.0-M6 | [Download](https://archive.apache.org/dist/directory/mavibot/dist/1.0.0-M6) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/mavibot/gen-docs/1.0.0-M6/apidocs/index.html), [Xref](https://svn.apache.org/repos/infra/websites/production/directory/content/mavibot/gen-docs/1.0.0-M6/xref/index.html) | 16/nov/2014 |
| Apache MAVIBOT 1.0.0-M5 | [Download](https://archive.apache.org/dist/directory/mavibot/dist/1.0.0-M5) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/mavibot/gen-docs/1.0.0-M5/apidocs/index.html), [Xref](https://svn.apache.org/repos/infra/websites/production/directory/content/mavibot/gen-docs/1.0.0-M5/xref/index.html) | 04/jul/2014 |
| Apache MAVIBOT 1.0.0-M4 | [Download](https://archive.apache.org/dist/directory/mavibot/dist/1.0.0-M4) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/mavibot/gen-docs/1.0.0-M4/apidocs/index.html), [Xref](https://svn.apache.org/repos/infra/websites/production/directory/content/mavibot/gen-docs/1.0.0-M4/xref/index.html) | 13/mar/2014 |
| Apache MAVIBOT 1.0.0-M3 | [Download](https://archive.apache.org/dist/directory/mavibot/dist/1.0.0-M3) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/mavibot/gen-docs/1.0.0-M3/apidocs/index.html), [Xref](https://svn.apache.org/repos/infra/websites/production/directory/content/mavibot/gen-docs/1.0.0-M3/xref/index.html) | 16/Dec/2013 |
| Apache MAVIBOT 1.0.0-M2 | [Download](https://archive.apache.org/dist/directory/mavibot/dist/1.0.0-M2) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/mavibot/gen-docs/1.0.0-M2/apidocs/index.html), [Xref](https://svn.apache.org/repos/infra/websites/production/directory/content/mavibot/gen-docs/1.0.0-M2/xref/index.html) | 06/Nov/2013 |
| Apache MAVIBOT 1.0.0-M1 | [Download](https://archive.apache.org/dist/directory/mavibot/dist/1.0.0-M1) | N/A | 06/Jun/2013 |

</CENTER>

<DIV class="note" markdown="1">
We encourage you to verify the integrity of the downloaded file using:

* the ASC file (OpenPGP compatible signature) with the [KEYS](https://downloads.apache.org/directory/KEYS) file (code signing keys used to sign the product)
* the MD5 file (checksum).
</DIV>

## Verify the integrity of the file

The PGP signatures can be verified using PGP or GPG. First download the [keys](https://downloads.apache.org/directory/KEYS) file as well as the asc signature file for the relevant distribution. Then verify the signatures using:

	$ pgpk -a KEYS
	$ pgpv apache_1.3.24.tar.gz.asc

or

	$ pgp -ka KEYS
	$ pgp apache_1.3.24.tar.gz.asc

or

	$ gpg --import KEYS
	$ gpg --verify apache_1.3.24.tar.gz.asc

 

Alternatively, you can verify the MD5 signature on the files. A unix program called md5 or md5sum is included in many unix distributions. It is also available as part of [GNU Textutils](https://www.gnu.org/software/textutils/textutils.html). Windows users can get binary md5 programs from [here](https://www.fourmilab.ch/md5/), [here](http://www.pc-tools.net/win32/freeware/console/), or [here](https://www.slavasoft.com/fsum/).
