package path;

# Versions (for download links)
our $version_api = "1.0.0-M13";
our $version_apacheds = "2.0.0-M8";
our $version_studio = "2.0.0.v20120224";
our $version_studio_name = "2.0-M3";

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
        version => $version_apacheds } ],
    
    # Download ApacheDS Linux BIN page
    [qr!apacheds\/download\/download-linux-bin\.mdtext$!, template_page => {
        template => "apacheds/download-linux-bin.html",
        isDirApacheDS => true, 
        version => $version_apacheds } ],
    
    # Download ApacheDS Linux DEB page
    [qr!apacheds\/download\/download-linux-deb\.mdtext$!, template_page => {
        template => "apacheds/download-linux-deb.html",
        isDirApacheDS => true, 
        version => $version_apacheds } ],
    
    # Download ApacheDS Linux RPM page
    [qr!apacheds\/download\/download-linux-rpm\.mdtext$!, template_page => {
        template => "apacheds/download-linux-rpm.html",
        isDirApacheDS => true, 
        version => $version_apacheds } ],
    
    # Download ApacheDS Mac OS X page
    [qr!apacheds\/download\/download-macosx\.mdtext$!, template_page => {
        template => "apacheds/download-macosx.html",
        isDirApacheDS => true, 
        version => $version_apacheds } ],
    
    # Download ApacheDS Sources page
    [qr!apacheds\/download\/download-sources\.mdtext$!, template_page => {
        template => "apacheds/download-sources.html",
        isDirApacheDS => true, 
        version => $version_apacheds } ],
    
    # Download ApacheDS Windows page
    [qr!apacheds\/download\/download-windows\.mdtext$!, template_page => {
        template => "apacheds/download-windows.html",
        isDirApacheDS => true, 
        version => $version_apacheds } ],
        
    # ApacheDS Index page
    [qr!apacheds\/index\.mdtext$!, template_page => {
        template => "apacheds/index.html",
        isDirApacheDS => true } ],
    
    # Standard ApacheDS page
    [qr!apacheds\/.*?\.mdtext$!, template_page => {
        template => "apacheds/page.html",
        isDirApacheDS => true } ],
    
    #
    # Apache LDAP API sub-project pages
    #
    
    # Download Apache LDAP API Archive page
    [qr!api\/download\/download-archive\.mdtext$!, template_page => {
        template => "api/download-archive.html",
        isDirAPI => true, 
        version => $version_api } ],
    
    # Download Apache LDAP API Sources page
    [qr!api\/download\/download-sources\.mdtext$!, template_page => {
        template => "api/download-sources.html",
        isDirAPI => true, 
        version => $version_api } ],
        
    # Apache LDAP API Index page
    [qr!api\/index\.mdtext$!, template_page => {
        template => "api/index.html",
        isDirAPI => true } ],
    
    # Standard Apache LDAP API page
    [qr!api\/.*?\.mdtext$!, template_page => {
        template => "api/page.html",
        isDirAPI => true } ],
    
    #
    # Apache Directory Studio sub-project pages
    #
    
    # Download Apache Directory Studio Linux page
    [qr!studio\/download\/download-linux\.mdtext$!, template_page => {
        template => "studio/download-linux.html",
        isDirStudio => true, 
        version => $version_studio } ],
    
    # Download Apache Directory Studio Mac OS X page
    [qr!studio\/download\/download-macosx\.mdtext$!, template_page => {
        template => "studio/download-macosx.html",
        isDirStudio => true, 
        version => $version_studio } ],
    
    # Download Apache Directory Studio Sources page
    [qr!studio\/download\/download-sources\.mdtext$!, template_page => {
        template => "studio/download-sources.html",
        isDirStudio => true, 
        version => $version_studio } ],
    
    # Download Apache Directory Studio Windows page
    [qr!studio\/download\/download-windows\.mdtext$!, template_page => {
        template => "studio/download-windows.html",
        isDirStudio => true, 
        version => $version_studio } ],
        
    # Apache Directory Studio Index page
    [qr!studio\/index\.mdtext$!, template_page => {
        template => "studio/index.html",
        isDirStudio => true } ],
        
    # Standard Apache Directory Studio page
    [qr!studio\/.*?\.mdtext$!, template_page => {
        template => "studio/page.html",
        isDirStudio => true } ],
    
    #
    # Apache Directory Project pages
    #
        
    # Apache Directory Project Index page
    [qr!index\.mdtext$!, template_page => {
        template => "index.html",
        isDirSite => true } ],
    
    # Standard Apache Directory Project page
    [qr!^/.*\.mdtext$!, template_page => {
        template => "page.html",
        isDirSite => true } ]
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
