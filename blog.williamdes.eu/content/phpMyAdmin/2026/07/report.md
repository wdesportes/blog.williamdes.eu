+++
title = "Report for July 2026"
date = 2026-10-07T18:00:00+00:01
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for July 2026.

<!-- more -->

In July I merged and reviewed contributions, did some issues triage and kept up the
Debian packaging of our dependencies.

## First week (28)

I merged contributions after reviewing them. I also did some issues triage.
I fixed compressed columns not being detected on MariaDB, a TypeError when adding a column
without index data, and some test issues with PHPUnit 13.1. I updated the psalm baseline
and worked on the release tooling (create-release.sh, and the list of files excluded from
a release tarball).

I also made twig-i18n-extension compatible with Twig 3.26+, and migrated the motranslator
Debian watch file to version 5.

## Second week (29)

I did some issues triage.

## Third week (30)

**Nothing to report**

## Fourth week (31)

I sent twig-i18n-extension 5.0.2-1 to unstable, bumped the Standards-Version and dropped
the patches that are now upstream.
