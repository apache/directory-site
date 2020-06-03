package path;
 
# Versions (for download links)
our $version_api = "1.0.3";
our $version_api2 = "2.0.1";
our $version_apacheds = "2.0.0.AM26";
our $version_studio = "2.0.0.v20200411-M15";
our $version_studio_name = "2.0.0-M15";
our $version_mavibot = "1.0.0-M8";
our $version_scimple = "1.0.0";
our $version_fortress = "2.0.5";
our $version_kerby = "2.0.1";


# All our pages use the same view function
our @patterns = (
    # Basic HTML content
    [qr!^/.*\.html$!, template_page => {} ],
    
    #
    # Apache DS sub-project pages
    #
    
    # Download ApacheDS Archive page
    [qr!apacheds\/download\/download-archive\.mdtext$!, template_page => {
        template => "apacheds/download-archive.html",
        isDirApacheDS => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download ApacheDS Linux BIN page
    [qr!apacheds\/download\/download-linux-bin\.mdtext$!, template_page => {
        template => "apacheds/download-linux-bin.html",
        isDirApacheDS => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download ApacheDS Linux DEB page
    [qr!apacheds\/download\/download-linux-deb\.mdtext$!, template_page => {
        template => "apacheds/download-linux-deb.html",
        isDirApacheDS => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download ApacheDS Linux RPM page
    [qr!apacheds\/download\/download-linux-rpm\.mdtext$!, template_page => {
        template => "apacheds/download-linux-rpm.html",
        isDirApacheDS => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download ApacheDS macOS page
    [qr!apacheds\/download\/download-macosx\.mdtext$!, template_page => {
        template => "apacheds/download-macosx.html",
        isDirApacheDS => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download ApacheDS Sources page
    [qr!apacheds\/download\/download-sources\.mdtext$!, template_page => {
        template => "apacheds/download-sources.html",
        isDirApacheDS => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download ApacheDS Windows page
    [qr!apacheds\/download\/download-windows\.mdtext$!, template_page => {
        template => "apacheds/download-windows.html",
        isDirApacheDS => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
        
    # ApacheDS Index page
    [qr!apacheds\/index\.mdtext$!, template_page => {
        template => "apacheds/index.html",
        isDirApacheDS => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Standard ApacheDS page
    [qr!apacheds\/.*?\.mdtext$!, template_page => {
        template => "apacheds/page.html",
        isDirApacheDS => true,
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    #
    # Apache LDAP API sub-project pages
    #
    
    # Download Apache LDAP API Archive page
    [qr!api\/download\/download-archive-1\.mdtext$!, template_page => {
        template => "api/download-archive-1.html",
        isDirAPI => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    [qr!api\/download\/download-archive-2\.mdtext$!, template_page => {
        template => "api/download-archive-2.html",
        isDirAPI => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download Apache LDAP API Sources page
    [qr!api\/download\/download-sources-1\.mdtext$!, template_page => {
        template => "api/download-sources-1.html",
        isDirAPI => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
        
    [qr!api\/download\/download-sources-2\.mdtext$!, template_page => {
        template => "api/download-sources-2.html",
        isDirAPI => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
        
    # Apache LDAP API Index page
    [qr!api\/index\.mdtext$!, template_page => {
        template => "api/index.html",
        isDirAPI => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Standard Apache LDAP API page
    [qr!api\/.*?\.mdtext$!, template_page => {
        template => "api/page.html",
        isDirAPI => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    #
    # Apache Mavibot sub-project pages
    #
    
    # Download Apache MAVIBOT Archive page
    [qr!mavibot\/download\/download-archive\.mdtext$!, template_page => {
        template => "mavibot/download-archive.html",
        isDirMVBT => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download Apache MAVIBOT Sources page
    [qr!mavibot\/download\/download-sources\.mdtext$!, template_page => {
        template => "mavibot/download-sources.html",
        isDirMVBT => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
        
    # Apache MAVIBOT Index page
    [qr!mavibot\/index\.mdtext$!, template_page => {
        template => "mavibot/index.html",
        isDirMVBT => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Standard Apache MAVIBOT page
    [qr!mavibot\/.*?\.mdtext$!, template_page => {
        template => "mavibot/page.html",
        isDirMVBT => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    #
    # Apache Directory Studio sub-project pages
    #
    
    # Download Apache Directory Studio Linux page
    [qr!studio\/download\/download-linux\.mdtext$!, template_page => {
        template => "studio/download-linux.html",
        isDirStudio => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download Apache Directory Studio macOS page
    [qr!studio\/download\/download-macosx\.mdtext$!, template_page => {
        template => "studio/download-macosx.html",
        isDirStudio => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download Apache Directory Studio Sources page
    [qr!studio\/download\/download-sources\.mdtext$!, template_page => {
        template => "studio/download-sources.html",
        isDirStudio => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download Apache Directory Studio Windows page
    [qr!studio\/download\/download-windows\.mdtext$!, template_page => {
        template => "studio/download-windows.html",
        isDirStudio => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
        
    # Apache Directory Studio Index page
    [qr!studio\/index\.mdtext$!, template_page => {
        template => "studio/index.html",
        isDirStudio => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
        
    # Standard Apache Directory Studio page
    [qr!studio\/.*?\.mdtext$!, template_page => {
        template => "studio/page.html",
        isDirStudio => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],

    #
    # Apache SCIMple sub-project pages
    #
    
    # Download Apache SCIMple Archive page
    [qr!scimple\/download\/download-archive\.mdtext$!, template_page => {
        template => "scimple/download-archive.html",
        isDirScimple => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download Apache SCIMple Sources page
    [qr!scimple\/download\/download-sources\.mdtext$!, template_page => {
        template => "scimple/download-sources.html",
        isDirScimple => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
        
    # Apache SCIMple Index page
    [qr!scimple\/index\.mdtext$!, template_page => {
        template => "scimple/index.html",
        isDirScimple => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Standard Apache SCIMple page
    [qr!scimple\/.*?\.mdtext$!, template_page => {
        template => "scimple/page.html",
        isDirScimple => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],

    #
    # Apache FORTRESS project pages
    #
    
    # Download Apache FORTRESS Archive page
    [qr!fortress\/download\/download-archive\.mdtext$!, template_page => {
        template => "fortress/download-archive.html",
        isDirFortress => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download Apache FORTRESS Sources page
    [qr!fortress\/download\/download-sources\.mdtext$!, template_page => {
        template => "fortress/download-sources.html",
        isDirFortress => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
        
    # Apache FORTRESS Index page
    [qr!fortress\/index\.mdtext$!, template_page => {
        template => "fortress/index.html",
        isDirFortress => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Standard FORTRESS page
    [qr!fortress\/.*?\.mdtext$!, template_page => {
        template => "fortress/page.html",
        isDirFortress => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    

    #
    # Apache KERBY project pages
    #
    
    # Download Apache KERBY Archive page
    [qr!kerby\/download\/download-archive\.mdtext$!, template_page => {
        template => "kerby/download-archive.html",
        isDirKerby => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Download Apache KROBY Sources page
    [qr!kerby\/download\/download-sources\.mdtext$!, template_page => {
        template => "kerby/download-sources.html",
        isDirKerby => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
        
    # Apache KERBYIndex page
    [qr!kerby\/index\.mdtext$!, template_page => {
        template => "kerby/index.html",
        isDirKerby => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Standard KERBY page
    [qr!kerby\/.*?\.mdtext$!, template_page => {
        template => "kerby/page.html",
        isDirKerby => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],

    #
    # Apache Directory Project pages
    #
        
    # Apache Directory Project Index page
    [qr!index\.mdtext$!, template_page => {
        template => "index.html",
        isDirSite => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
    
    # Standard Apache Directory Project page
    [qr!^/.*\.mdtext$!, template_page => {
        template => "page.html",
        isDirSite => true, 
        version_api => $version_api,
        version_api2 => $version_api2,
        version_apacheds => $version_apacheds,
        version_studio => $version_studio,
        version_studio_name => $version_studio_name,
        version_mavibot => $version_mavibot,
        version_scimple => $version_scimple,
        version_kerby => $version_kerby,
        version_fortress => $version_fortress } ],
);

# for specifying interdependencies between files
our %dependencies = ();

1;

=head1 LICENSE

           Licensed to the Apache Software Foundation (ASF) under one
           or more contributor license agreements.  See the NOTICE file
           distributed with this work for additional information
           regarding copyright ownership.  The ASF licenses this file
           to you under the Apache License, Version 2.0 (the
           "License"); you may not use this file except in compliance
           with the License.  You may obtain a copy of the License at

             http://www.apache.org/licenses/LICENSE-2.0

           Unless required by applicable law or agreed to in writing,
           software distributed under the License is distributed on an
           "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
           KIND, either express or implied.  See the License for the
           specific language governing permissions and limitations
           under the License.
