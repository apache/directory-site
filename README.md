# Apache Directory website

This is the source code for the website of [Apache Directory](https://directory.apache.org/), hosted at:

    https://directory.apache.org/

## Repository structure

This repository uses 2 branches for serving the website.
- The `master` branch, which contains all the sources for the website.
- The `asf-site` branch, which contains the generated website being used for the actual website.

When contributing patches, apply them to the `master` branch. Jenkins will then regenerate the website
and commit the changes to the `asf-site` branch.

## Content Management System

The website uses Hugo as static website generator. 
See [Hugo](https://gohugo.io/) for more info and for details how to install Hugo.

## Generate the website

To generate the static website, execute `hugo` to generate and serve the website on `localhost:1313`.

During development, it may be useful to run an incremental build. For this to work, execute `hugo server -D` to 
continuously generate and serve the website on `localhost:1313`.

## Publish the website

Jenkins is used for generating the website and committing the generated site to the `asf-site` branch.
