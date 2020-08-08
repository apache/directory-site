---
title: Download Old Versions
---

# Download Old Versions

<CENTER>

| Version| Download Link | Javadoc & XRef | Date |
|:-:|:-:|:-:|:-:|
| Apache KERBY 1.1.1| [Download](https://archive.apache.org/dist/directory/kerby/dist/1.1.1/)
| Apache KERBY 1.0.1| [Download](https://archive.apache.org/dist/directory/kerby/dist/1.0.1/)

</CENTER>

We encourage you to verify the integrity of the downloaded file using:

* the ASC file (OpenPGP compatible signature) with the [KEYS](https://downloads.apache.org/directory/KEYS) file (code signing keys used to sign the product)
* the checksum file

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

 
Alternatively, you can verify the checksums of the files (see the [How to verify downloaded files](https://www.apache.org/info/verification.html) page).
