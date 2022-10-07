---
title: Download Old Versions
---

# Download Old Versions

Old version can be found in the [archive](https://archive.apache.org/dist/directory/studio/).

> **Note:** We encourage you to verify the integrity of the downloaded file using:
> 
> * the ASC file (OpenPGP compatible signature) with the [KEYS](https://downloads.apache.org/directory/KEYS) file (code signing keys used to sign the product)
> * the MD5 file (checksum).

## Verify the integrity of the file

The PGP signatures can be verified using PGP or GPG. First download the [KEYS file](https://downloads.apache.org/directory/KEYS) as well as the asc signature file for the relevant distribution. Then verify the signatures using:

    $ pgpk -a KEYS
    $ pgpv apache_1.3.24.tar.gz.asc

or

    $ pgp -ka KEYS
    $ pgp apache_1.3.24.tar.gz.asc

or

    $ gpg --import KEYS
    $ gpg --verify apache_1.3.24.tar.gz.asc

Alternatively, you can verify the MD5 signature on the files. A unix program called md5 or md5sum is included in many unix distributions. It is also available as part of [GNU Textutils](https://www.gnu.org/software/textutils/textutils.html). Windows users can get binary md5 programs from [here](https://www.fourmilab.ch/md5/), [here](http://www.pc-tools.net/win32/freeware/console/), or [here](https://www.slavasoft.com/fsum/).
