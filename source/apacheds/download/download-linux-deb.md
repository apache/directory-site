---
title: Downloads for Linux Debian Package
---

# Downloads for Linux Debian Package

<p>
    [if-any logo]
    <a href="[link]"><img align="right" src="[logo]" border="0" /></a>
    [end]
    We suggest the following mirror site for your download:
</p>

## Linux Debian Package 64 bit

<p>
  <div class="download">
    <table width="100%" class="noBorder">
      <tr>
        <td>
          <a href="[preferred]/directory/apacheds/dist/{{< param version_apacheds >}}/apacheds-{{< param version_apacheds >}}-amd64.deb">
            <img src="/images/download.png" width="32" height="32" border="0"/>
          </a>
        </td>
        <td>&nbsp;</td>
        <td>
          <a href="[preferred]/directory/apacheds/dist/{{< param version_apacheds >}}/apacheds-{{< param version_apacheds >}}-amd64.deb">
            <strong>
              [preferred]/&#91;...&#93;/apacheds-{{< param version_apacheds >}}-amd64.deb
            </strong>
          </a>
        </td>
        <td align="right">
          [<a href="https://downloads.apache.org/directory/apacheds/dist/{{< param version_apacheds >}}/apacheds-{{< param version_apacheds >}}-amd64.deb.asc">ASC</a>-<a href="https://downloads.apache.org/directory/apacheds/dist/{{< param version_apacheds >}}/apacheds-{{< param version_apacheds >}}-amd64.deb.sha256">SHA256</a>-<a href="https://downloads.apache.org/directory/apacheds/dist/{{< param version_apacheds >}}/apacheds-{{< param version_apacheds >}}-amd64.deb.sha512">SHA512</a>]
        </td>
      </tr>
    </table>
  </div>
</p>

## Linux Debian Package 32 bit

<p>
  <div class="download">
    <table width="100%" class="noBorder">
      <tr>
        <td>
          <a href="[preferred]/directory/apacheds/dist/{{< param version_apacheds >}}/apacheds-{{< param version_apacheds >}}-i386.deb">
            <img src="/images/download.png" width="32" height="32" border="0"/>
          </a>
        </td>
        <td>&nbsp;</td>
        <td>
          <a href="[preferred]/directory/apacheds/dist/{{< param version_apacheds >}}/apacheds-{{< param version_apacheds >}}-i386.deb">
            <strong>
              [preferred]/&#91;...&#93;/apacheds-{{< param version_apacheds >}}-i386.deb
            </strong>
          </a>
        </td>
        <td align="right">
          [<a href="https://downloads.apache.org/directory/apacheds/dist/{{< param version_apacheds >}}/apacheds-{{< param version_apacheds >}}-i386.deb.asc">ASC</a>-<a href="https://downloads.apache.org/directory/apacheds/dist/{{< param version_apacheds >}}/apacheds-{{< param version_apacheds >}}-i386.deb.sha256">SHA256</a>-<a href="https://downloads.apache.org/directory/apacheds/dist/{{< param version_apacheds >}}/apacheds-{{< param version_apacheds >}}-i386.deb.sha512">SHA512</a>]
        </td>
      </tr>
    </table>
  </div>
</p>

<p>&nbsp;</p>

{{< download-change-mirror >}}

<p>&nbsp;</p>

# Installation
                    
<p>
  <table class="noBorder">
    <tr>
      <td width="64" height="64"><img src="/images/figure_1.gif" width="64" height="64"/></td>
      <td><img src="images/installation_linux_deb_1.jpg" width="225" height="130"/></td>
      <td>&nbsp;&nbsp;</td>
      <td>Click on the link above to download ApacheDS for your Linux architecture.<br />Your download appears in the download manager of your web browser.</td>
    </tr>
    <tr>
      <td width="64" height="64"><img src="/images/figure_2.gif" width="64" height="64"/></td>
      <td><img src="images/installation_linux_deb_2.jpg" width="225" height="159"/></td>
      <td>&nbsp;&nbsp;</td>
      <td>Double-click on the installer to open it.<br/>It may have already been opened by your web browser.</td>
    </tr>
    <tr>
      <td width="64" height="64"><img src="/images/figure_3.gif" width="64" height="64"/></td>
      <td><img src="images/installation_linux_deb_3.jpg" width="225" height="169"/></td>
      <td>&nbsp;&nbsp;</td>
      <td>The installer displays some information about what's going to be installed.<br>Click the <em>Install Package</em> button to start the installation.</td>
    </tr>
    <tr>
      <td width="64" height="64"><img src="/images/figure_4.gif" width="64" height="64"/></td>
      <td><img src="images/installation_linux_deb_4.jpg" width="225" height="151"/></td>
      <td>&nbsp;&nbsp;</td>
      <td>You might be prompted to enter your <em>root</em> password.</td>
    </tr>
    <tr>
      <td width="64" height="64"><img src="/images/figure_5.gif" width="64" height="64"/></td>
      <td><img src="images/installation_linux_deb_5.jpg" width="225" height="115"/></td>
      <td>&nbsp;&nbsp;</td>
      <td>The installation starts.</td>
    </tr>
  </table>
</p>

## Command line installation

You can also install the debian package from the command line :

```bash
chmod +x apacheds-{{< param version_apacheds >}}-amd64.deb
```

```bash
dpkg -i apacheds-{{< param version_apacheds >}}-amd64.deb
```

<p>&nbsp;</p>

# Requirements

ApacheDS requires at least:

* A recent Linux distribution supporting the *.deb install packages.
* [a Java Runtime Environment](https://www.java.com/) 6 or later.

<p>&nbsp;</p>

{{< download-verify >}}apacheds-{{< param version_apacheds >}}-amd64.deb{{< /download-verify >}}
