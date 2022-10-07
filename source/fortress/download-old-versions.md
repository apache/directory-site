---
title: Download Old Versions
---

# Download Old Versions

<CENTER>

| Version| Download Link | Javadoc | Date |
|:-:|:-:|:-:|:-:|
| Apache Fortress 2.0.7 | [Download](https://archive.apache.org/dist/directory/fortress/dist/2.0.7) | [Javadoc](https://nightlies.apache.org/directory/fortress/2.0.7/apidocs/index.html) |12/December/2021 |
| Apache Fortress 2.0.6 | [Download](https://archive.apache.org/dist/directory/fortress/dist/2.0.6) | [Javadoc](https://nightlies.apache.org/directory/fortress/2.0.6/apidocs/index.html) |15/July/2021 |
| Apache Fortress 2.0.5 | [Download](https://archive.apache.org/dist/directory/fortress/dist/2.0.5) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/fortress/gen-docs/2.0.5/apidocs/index.html) |26/May/2020 |
| Apache Fortress 2.0.4 | [Download](https://archive.apache.org/dist/directory/fortress/dist/2.0.4) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/fortress/gen-docs/2.0.4/apidocs/index.html) |13/December/2019 |
| Apache Fortress 2.0.3 | [Download](https://archive.apache.org/dist/directory/fortress/dist/2.0.3) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/fortress/gen-docs/2.0.3/apidocs/index.html) |12/November/2018 |
| Apache Fortress 2.0.2 | [Download](https://archive.apache.org/dist/directory/fortress/dist/2.0.2) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/fortress/gen-docs/2.0.2/apidocs/index.html) |12/September/2018 |
| Apache Fortress 2.0.1 | [Download](https://archive.apache.org/dist/directory/fortress/dist/2.0.1) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/fortress/gen-docs/2.0.1/apidocs/index.html) |20/July/2018 |
| Apache Fortress 2.0.0 | [Download](https://archive.apache.org/dist/directory/fortress/dist/2.0.0) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/fortress/gen-docs/2.0.0/apidocs/index.html) |26/June/2017 |
| Apache Fortress 2.0.0-RC2 | [Download](https://archive.apache.org/dist/directory/fortress/dist/2.0.0-RC2) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/fortress/gen-docs/2.0.0-RC2/apidocs/index.html) |04/May/2017 |
| Apache Fortress 2.0.0-RC1 | [Download](https://archive.apache.org/dist/directory/fortress/dist/2.0.0-RC1) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/fortress/gen-docs/2.0.0-RC1/apidocs/index.html) |07/Nov/2016 |
| Apache Fortress 1.0.1 | [Download](https://archive.apache.org/dist/directory/fortress/dist/1.0.1) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/fortress/gen-docs/1.0.1/apidocs/index.html) |22/Jul/2016 |
| Apache Fortress 1.0.0 | [Download](https://archive.apache.org/dist/directory/fortress/dist/1.0.0) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/fortress/gen-docs/1.0.0/apidocs/index.html) |15/Apr/2016 |
| Apache Fortress 1.0-RC42 | [Download](https://archive.apache.org/dist/directory/fortress/dist/1.0-RC42) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/fortress/gen-docs/1.0-RC42/apidocs/index.html) |28/Mar/2016 |
| Apache Fortress 1.0-RC40 | [Download](https://archive.apache.org/dist/directory/fortress/dist/1.0-RC40) | [Javadoc](https://svn.apache.org/repos/infra/websites/production/directory/content/fortress/gen-docs/1.0-RC40/apidocs/index.html) |15/Apr/2015 |

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
