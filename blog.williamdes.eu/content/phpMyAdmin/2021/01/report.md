+++
title = "Report for January 2021"
date = 2021-01-01T12:00:00Z
updated = 2021-01-13T17:51:00Z
category = "phpMyAdmin - reports"
draft = true

[extra]
author = "William Desportes"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for January 2021.

<!-- more -->

## First week (01)

This week was a quite busy one and I could not dev as much as I expected. Real life is important too ;p

### Monday

More work on the Debian 5.0 version.

### Tuesday

More work on the Debian 5.0 version.

### Wednesday

More work on the Debian 5.0 version.

### Thursday

More work on the Debian 5.0 version.

### Friday

The Debian version `5.0.4+dfsg1-1` landed after a lot lot lot of time fixing and improving things for 5.0 series to be accepted into Debian. Thanks to everybody that helped me and reviewed my work. The [pull-request](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/merge_requests/30) was [merged](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f8ca6504dc6f1ee6a8b2fcbb29b9baff30017ed1) after 3 months open lacking reviews and me pushing more and more commits.

### Saturday

### Sunday

I migrated sql-parser to GitHub actions. Still working on the Debian

## Second week (02)

### Monday

And I worked on copyright updates for the Debian version 5.0.4+dfsg2, that required to search on each file for missing copyrights in the d/copyright file and document them. Most of the source files that where excluded are now back.
I also had to remove the lib that finds out the strength of passwords because it could not be re-build from source (DFSG not compatible). All the `.min.js` files had to be [re-built from source](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c4b28b4c5ca955c7ddf1858b6e5e9f89d3505216), [I added the missing source files](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/abac8a5cf05e2955a2c5bd14dc52c0ab75405659) to the `debian/missing-sources` directory. The Debian version no more has `zxcvbn` until the from source issue can be solved. For now `?` force is displayed when you type passwords.

### Tuesday

All the work from yesterday landed into [a merge](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9206cece4599be77d436057fe51f7b106e9b8de2) and David did upload the changes to unstable.

### Wednesday

I handled some issue triage and pull-request reviews.

### Thursday

I did merge some pull-requests and upgraded psalm to `4.4.0`.
On `twig-i18n-extension` I moved to GitHub actions and did setup phpstan.
Also `phpmyadmin/coding-standard` has a quick move to GitHub actions and I found out [a licensing issue](https://github.com/phpmyadmin/coding-standard/pull/9).

On the Debian packaging side I made sure `buster-backports` was ready and prepared the backport of `twig`.
And updated the Ubuntu PPA Bionic to `5.0.4`.

### Friday

I did some quick changes on the Ubuntu PPA.

### Saturday

### Sunday

## Third week (03)

## Fourth week (04)
