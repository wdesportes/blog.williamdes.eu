+++
title = "Report for April 2026"
date = 2026-04-01T12:00:00+00:01
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"
draft = true

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for April 2026.

<!-- more -->

In April I worked on modernizing the sql-parser tests and CI, merged and reviewed a lot of
contributions in phpMyAdmin, improved MariaDB compatibility, and did some issues triage.

## First week (14)

I worked on sql-parser: I migrated the tests to PHPUnit attributes, added a native type
hint, made the data providers static, and refreshed the phpstan and psalm baselines.
I merged #631 (build the insert statement using the context's quote style), #636 (desc
index lint error), #637 (formatter spacing for the JSON path operators) and #648 (bump
zumba/json-serializer), then regenerated the test data.

I also bumped the CI: ramsey/composer-install to v4, codecov-action to v6 using the token
method, added the missing workflow permissions, and updated the coding-standard,
motranslator, phpstan, psalm and phpbench tools. On Scrutinizer I had to update the base
image and composer, and psalm needed a newer PHP.

In motranslator I updated the Scrutinizer base image and the PHP version for psalm, and
bumped the GitHub actions. Same for shapefile.

## Second week (15)

I merged contributions after reviewing them. This week's phpMyAdmin merges include: skipping
the locale directory assertion when the folder is missing (#20268), reducing the
simulate-query memory usage (#20238, #18941), skipping the user link for non-real users in
the processes list (#20259, #19842), the drag & drop difference between Firefox and
Chromium (#20189, #18557), removing the dead Suhosin warning (#20167, #19912), adding the
missing length validation when changing a column type (#20267, #19338), fixing the sliding
message container overlapping the page content (#20269, #20064), fixing the export for raw
queries without a table reference (#20266, #20041), adding a SQL button to the database list
(#20210), and updating create-release.sh with the files to exclude (#20250, #20007).

I also fixed the TOON export for the normal user (#20275), made the CSV import turn empty
values into NULL (#19381), removed getInnodbPluginVersion() and refactored
getInnodbFileFormat() for MariaDB compatibility (#18204), and improved the drag & drop to
accept application/x-moz-file.

For sql-parser I merged the Weblate translations, removed the extra spaces in the new 6.x
tests, and fixed #609 (attempt to read property "keyword" on null).

I also did some issues triage, including the demo servers being out of disk space and not
updated since December 2024.

## Third week (16)

A quieter week: I upgraded phpstan to 2.1.47.
