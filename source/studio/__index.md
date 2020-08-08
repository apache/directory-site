---
type: studio
title: Welcome to Apache Directory Studio
slug: index
---

<div class="hero clearfix">
    <div class="left">
        <h1>Apache Directory Studio&trade;</h1>
        <h2>The Eclipse-based LDAP browser and directory client</h2>
        <div class="description">Apache Directory Studio is a complete directory tooling platform intended to be used with any LDAP server however it is particularly designed for use with ApacheDS. It is an Eclipse RCP application, composed of several Eclipse (OSGi) plugins, that can be easily upgraded with additional ones. These plugins can even run within Eclipse itself.</div>
        <div class="download-link">
            <a href="/studio/downloads.html" class="download_badge"><b>Download Apache<br>Directory Studio {{< param version_studio_name >}}</b></a>
        </div>
    </div>
    <div class="right">
        <div id="studio-slideshow" class="slideshow">
            <img src="static/images/screen_ldap_browser.jpg" width="377" height="287" border="0"/>
        </div>
        <script type="text/javascript" src="static/js/mootools.js"></script><script type="text/javascript" src="static/js/slideshow.js"></script>
        <script type="text/javascript">
            window.onload = function()
            {
                new Slideshow( "studio-slideshow",
                {
                    hu: 'static/images/', 
                    images: [
                        'screen_ldap_browser.jpg',
                        'screen_ldif_editor.jpg',
                        'screen_aci_editor.jpg',
                        'screen_schema_editor.jpg',
                        'screen_apacheds_configuration.jpg'
                    ],
                    duration: [600, 2000]
                });
            }
    </script>
    </div>
</div>

<div class="features-highlights clearfix">
    <div class="feature-highlight left">
        <img class="icon" src="../images/feature_highlight_studio_ldap_browser.png">
        <h3>LDAP Browser</h3>
        <div class="text">The LDAP Browser has been designed to work with almost any LDAP server available. It not only permits to read and display the tree of your LDAP Server but also allows you to modify it by creating, editing or removing entries.</div>
    </div>
    <div class="feature-highlight right">
        <img class="icon" src="../images/feature_highlight_studio_ldif_editor.png">
        <h3>LDIF Editor</h3>
        <div class="text">The LDIF Editor is a tool for editing LDIF files. It provides syntax highlighting and content assistance.</div>
    </div>
    <div class="separator clearfix"></div>
    <div class="feature-highlight left">
        <img class="icon" src="../images/feature_highlight_studio_schema_editor.png">
        <h3>Schema Editor</h3>
        <div class="text">The Schema Editor has been designed to edit the schema files in the OpenLDAP format. It allows you to edit easily attribute types and object classes for Apache Directory Server and OpenLDAP.</div>
    </div>
    <div class="feature-highlight right">
        <img class="icon" src="../images/feature_highlight_studio_embedded_apacheds.png">
        <h3>Embedded ApacheDS</h3>
        <div class="text">Apache Directory Studio bundles the latest version of the LDAPV3 certified ApacheDS. Creating and launching a new LDAP server now takes less than 10 seconds!</div>
    </div>
    <div class="separator clearfix"></div>
    <div class="feature-highlight left">
        <img class="icon" src="../images/feature_highlight_studio_apacheds_configuration.png">
        <h3>ApacheDS Configuration</h3>
        <div class="text">The ApacheDS Configuration Editor can be used to edit the server configuration ('server.xml' and 'config.ldif' files) of an Apache Directory Server installation.</div>
    </div>
    <div class="feature-highlight right">
        <img class="icon" src="../images/feature_highlight_studio_aci_editor.png">
        <h3>ACI Editor</h3>
        <div class="text">The ACI Editor allows you to define, for an entry or a set of entries, graphically or manually (in souce code mode), an ACI (Access Control Information) item specification for Apache Directory Server.</div>
    </div>
    <div class="separator clearfix"></div>
    <div class="feature-highlight left">
        <img class="icon" src="../images/feature_highlight_studio_internationalization.png">
        <h3>Internationalization</h3>
        <div class="text">Apache Directory Studio is internationalized in English, French and German. We're also open for volunteers who want to add another language support.</div>
    </div>
    <div class="feature-highlight right">
        <img class="icon" src="../images/feature_highlight_studio_multi_platform_in_eclipse.png">
        <h3>Multi-Platform &amp; in Eclipse</h3>
        <div class="text">Based on Eclipse, Apache Directory Studio is a multi-plaform application that runs on macOS, Linux and Windows, and also as plugins inside Eclipse itself.</div>
    </div>
</div>

<div class="news">
    {{< grabpage "studio/news.md" >}}
</div>
