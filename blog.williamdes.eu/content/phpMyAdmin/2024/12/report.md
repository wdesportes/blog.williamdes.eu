+++
title = "Report for December 2024"
date = 2024-11-12T17:51:00+00:01
updated = 2024-11-12T17:51:00+00:01
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for December 2024.

<!-- more -->

Like last year, this year has been crowded with tasks and goals. I miss the good old days of phpMyAdmin full time work.

## First week (49)

I merged the pull-request #19392 for PHP 8.4 support in `str_getcsv`.
And did some issue management.

## Second week (50)

I merged the pull-request #19428 to fix column type extraction.
And uploaded tcpdf and sql-parser 5.10.2 to Debian.

## Third week (51)

- Monday:
  - Added new options to the `create-release.sh` script to allow writing the `revision-info.php` file
  And to chose the kit and compressions to build. This saves quite some time.
  - Re-built all the script to create the demo server files: [commit on the scripts repo](https://github.com/phpmyadmin/scripts/commit/d8c97ad84a555655af933e20b90c41254de54a47)
  - Upgraded the demo VM to Debian Bookworm
  - Adjusted the website for the new `versions.ini` data format

- Wednesday:
  - I worked on getting back all the git information into our `revision-info.php` file: [PR #19458](https://github.com/phpmyadmin/phpmyadmin/pull/19458)
  - And removed NVM on the demo VM and installed NodeJS 22 -> TODO: changelog
- Thursday:
  - I worked on the PHPUnit tests for PHPUnit 11 on Debian 13
- Saturday:
  - Some mail-server config adjustments
  - And pruning space on the reports database
  - And I sorted out what I had as unread emails for sql-parser

## Fourth week (52)

I uploaded tcpdf and twig-i18n-extension with some minor changes to Debian.
And did some issue management.
