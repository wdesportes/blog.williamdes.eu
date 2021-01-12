+++
title = "Report for January 2021"
date = 2020-12-31
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for January 2021.

<!-- more -->

## First week

## Second week

### Monday

I migrated sql-parser to GitHub actions. And I worked on copyright updates for the Debian version 5.0.4+dfsg2, that required to search on each file for missing copyrights in the d/copyright file and document them. Most of the source files that where excluded are now back.
I also had to remove the lib that finds out the strength of passwords because it could not be re-build from source (DFSG not compatible). All the `.min.js` files had to be [re-built from source](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c4b28b4c5ca955c7ddf1858b6e5e9f89d3505216), [I added the missing source files](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/abac8a5cf05e2955a2c5bd14dc52c0ab75405659) to the `debian/missing-sources` directory. The Debian version no more has `zxcvbn` until the from source issue can be solved. For now `?` force is displayed when you type passwords.

### Tuesday

#### phpMyadmin

All the work from yesterday landed into [a merge](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9206cece4599be77d436057fe51f7b106e9b8de2) and David did upload the changes to unstable.

#### Other

I moved this blog from GitLab to GitHub pages because for some reason it was not working and I always had some 401 errors when browsing. It just never worked and that made not sense because most of my websites are GitLab pages hosted.
Anyway, bye bye GitLab pages. I used one of my bots to GPG sign and push commits on gh-pages when I edit the blog contents.

## Third week

## Fourth week
