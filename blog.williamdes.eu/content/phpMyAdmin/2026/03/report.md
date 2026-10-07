+++
title = "Report for March 2026"
date = 2026-03-07T16:57:00+00:01
updated = 2026-03-07T16:57:00+00:01
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for March 2026.

<!-- more -->

In March I merged and reviewed a lot of contributions, did some issues triage, kept up
with the Debian packaging of our dependencies, and reworked the website.

## First week (10)

I merged contributions after reviewing them. I also did some issues triage.
I updated the psalm and phpstan baselines, and cleaned up the release process (the
release script, the list of files excluded from a tarball, and removing leftover vendor
dev files). I also adjusted the GIS test and the coding standard.

On the packaging side, I uploaded tcpdf 6.11.0 and 6.11.2 to unstable, and bumped the
copyright years for mariadb-mysql-kbs.

## Second week (11)

A quieter week. I added a SQL button to the database list.

## Third week (12)

I merged contributions after reviewing them. I also did some issues triage.
I fixed several XML import problems and refactored how the default storage engine is
retrieved, refactored the File class, and did the QA_5_2 backports along with a PHPStan
update.

On the website I reworked the sponsors (moved them into a data file, handled plurals and
rel attributes), dropped planet.phpmyadmin.net, improved the CDN error handling and
updated the layout with colour modes and the removal of jQuery.

I also updated the CI PHP versions on shapefile.

## Fourth week (13)

I merged contributions after reviewing them. I also did some issues triage.
And I sent mariadb-mysql-kbs 1.3.0-4 to unstable.

## Fifth week (14)

**Nothing to report**
