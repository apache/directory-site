---
title: 5 - Kerberos Crypto and Encryption Types
navPrev: 4-identity-backend.html
navPrevText: 4 - Identity Backend
navUp: ../user-guide.html
navUpText: User Guide
navNext: 6-network-support.html
navNextText: 6 - Network Support
---

# 5 - Kerberos Crypto and Encryption Types

Supported des, des3, rc4, aes, camellia encryption and corresponding checksum types
Interoperates with MIT Kerberos and Microsoft AD
Independent of Kerberos code in JRE, but rely on JCE

| Encryption Type | Description |
| --------------- | ----------- |
| des-cbc-crc | DES cbc mode with CRC-32 (weak) |
| des-cbc-md4 | DES cbc mode with RSA-MD4 (weak) |
| des-cbc-md5 |	DES cbc mode with RSA-MD5 (weak) |
| des3-cbc-sha1 des3-hmac-sha1 des3-cbc-sha1-kd |	Triple DES cbc mode with HMAC/sha1 |
| des-hmac-sha1 |	DES with HMAC/sha1 (weak) |
| aes256-cts-hmac-sha1-96 aes256-cts AES-256 	| CTS mode with 96-bit SHA-1 HMAC |
| aes128-cts-hmac-sha1-96 aes128-cts AES-128 	| CTS mode with 96-bit SHA-1 HMAC |
| arcfour-hmac rc4-hmac arcfour-hmac-md5 |	RC4 with HMAC/MD5 |
| arcfour-hmac-exp rc4-hmac-exp arcfour-hmac-md5-exp |	Exportable RC4 with HMAC/MD5 (weak) |
| camellia256-cts-cmac camellia256-cts |	Camellia-256 CTS mode with CMAC |
| camellia128-cts-cmac camellia128-cts |	Camellia-128 CTS mode with CMAC |
| des |	The DES family: des-cbc-crc, des-cbc-md5, and des-cbc-md4 (weak) |
| des3 |	The triple DES family: des3-cbc-sha1 |
| aes |	The AES family: aes256-cts-hmac-sha1-96 and aes128-cts-hmac-sha1-96 |
| rc4 |	The RC4 family: arcfour-hmac |
| camellia | The Camellia family: camellia256-cts-cmac and camellia128-cts-cmac |
