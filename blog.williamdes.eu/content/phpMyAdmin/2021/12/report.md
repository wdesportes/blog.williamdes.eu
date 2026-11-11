+++
title = "Report for December 2021"
date = 2021-12-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for December 2021.

<!-- more -->

In December 2021 I worked on performance for the import and export pages, replaced the U2F library and uploaded tcpdf 6.4.3 to Debian.

## First week (49)

I worked on a performance improvement on the export and import pages. I also replaced samyoul/u2f-php-server by code-lts/u2f-php-server and fixed the copy to clipboard with NULL values.

- [f6b241cf5f - #16005 - performance improvement on the Export page](https://github.com/phpmyadmin/phpmyadmin/commit/f6b241cf5f40e8954512239cb1051d2a94cdb494)
- [13d3e93f84 - #16005 - performance improvement on the Import page](https://github.com/phpmyadmin/phpmyadmin/commit/13d3e93f8452689beefb2a9e49c7f36ddd81d1b5)
- [68d5ea9400 - Fix two errors reported by phpstan about json_decode on U2F implementation](https://github.com/phpmyadmin/phpmyadmin/commit/68d5ea94005a9fbd3efdd0564cc6642d34a09911)
- [f718f475e4 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/f718f475e4bdead33fb68bc187dde0a19f7e9fa4)
- [57f1d32048 - Add a ChangeLog entry for #16746](https://github.com/phpmyadmin/phpmyadmin/commit/57f1d32048e203cc02fff98baa7e050acb51c600)
- [8bfa3124a4 - Adjust release excludes after #17241](https://github.com/phpmyadmin/phpmyadmin/commit/8bfa3124a4f26abbd43b63358d6a694122312e68)
- [d9944702e4 - Merge #17241 - #16746 - Replace samyoul/u2f-php-server by code-lts/u2f-php-server](https://github.com/phpmyadmin/phpmyadmin/commit/d9944702e4c19524d5c90996dec30e89292c76d4)
- [d2cd67f8dc - #16746 - Replace samyoul/u2f-php-server by code-lts/u2f-php-server](https://github.com/phpmyadmin/phpmyadmin/commit/d2cd67f8dc4aa39cc172653a6937445eac240563)
- [934287250c - Add a ChangeLog entry for #17228](https://github.com/phpmyadmin/phpmyadmin/commit/934287250c1da91878e5beadb2e9fe8ef94ce811)
- [308e5b2a99 - Merge #17232 - Fix #17228 - Resolve formatting of copy to clipboard with NULL values](https://github.com/phpmyadmin/phpmyadmin/commit/308e5b2a99afcec7f61763244de20fb1a9ab8f9b)
- [5d521250b8 - Merge branch 'QA_4_9' into QA_5_1](https://github.com/phpmyadmin/phpmyadmin/commit/5d521250b8663ed4085185920f1b56def812937a)
- [7b469f57e1 - Update testExportRoutines test after sql-parser 5.5.0](https://github.com/phpmyadmin/phpmyadmin/commit/7b469f57e1b0e922d60b6fa4d3cd7748b3cab46f)
- [1d33b66a0a - Merge branch 'origin/QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/1d33b66a0ac7368018539f25980871f1834b8204)
- [bdea4645e1 - Update psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/bdea4645e13987c21f9eccf24f96e3171af2ef57)
- [82c96d105b - Update phpstan baseline](https://github.com/phpmyadmin/phpmyadmin/commit/82c96d105bcb3a8e7c3b36dac39d766aef07230b)
- [0c42c2092d - Remove tput from generate-mo script, some installations do not see to have it](https://github.com/phpmyadmin/phpmyadmin/commit/0c42c2092dc624f04659630e1fe770f033308e26)
- [cce40f6b3a - Translated using Weblate (Persian)](https://github.com/phpmyadmin/phpmyadmin/commit/cce40f6b3a752b725a44e4084258dd55030a9848)
- [ca9b19aad8 - Translated using Weblate (Persian)](https://github.com/phpmyadmin/phpmyadmin/commit/ca9b19aad8e28ed78ad300e9102112d8b00af497)
- [62bbd08399 - Translated using Weblate (Persian)](https://github.com/phpmyadmin/phpmyadmin/commit/62bbd08399a54e12d8a4413c03d8b70c2aa9e45d)

## Second week (50)

I merged the performance improvement on the import and export pages. On the Debian side I uploaded sql-parser 5.5.0.

- [5abbb1463d - Add a ChangeLog entry for 78fd92fde9](https://github.com/phpmyadmin/phpmyadmin/commit/5abbb1463d1c07701a48862c92d63f86f3c36441)
- [78fd92fde9 - Merge #17242 - #16005 - performance improvement on the Import and Export pages](https://github.com/phpmyadmin/phpmyadmin/commit/78fd92fde97c651d8fbc4da6b2f68fd843ab0db2)
- [d39c8b68ed - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/d39c8b68ed4fc1d76fd91689a2b9b8553b93d027)
- [8ec5b044b3 - Update upstream source from tag 'upstream/5.5.0'](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/8ec5b044b3cce6d5c546212c6f303274e2b5f85b)
- [569a4789ba - New upstream version 5.5.0](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/569a4789bac1bed2c772143cc68494880777055e)

## Third week (51)

I cleaned up the sql-parser tools files from the vendor bundle and fixed a useless for loop after a merge.

- [ff64b1df74 - Cleanup sql-parser tools files from vendor bundle](https://github.com/phpmyadmin/phpmyadmin/commit/ff64b1df74869cf5668e3d7c7886b087d1839c5d)
- [bc570cb1de - Fix merge 2a4b170a347, remove useless for loop](https://github.com/phpmyadmin/phpmyadmin/commit/bc570cb1de591a918bdca8c69edf877ac92ed840)

## Fourth week (52)

I upgraded tcpdf to 6.4.3, which has a PHP 8.1 bug fix, and fixed the phpdocs and phpstan baseline after it. I also cleaned up some useless files from the vendor bundles. And I uploaded tcpdf 6.4.3+dfsg1 to Debian.

- [679eca275a - Fix phpdocs after tcpdf update to 6.4.3 (the actual hints where not valid)](https://github.com/phpmyadmin/phpmyadmin/commit/679eca275ae31d986c6caf0f6d16898b0e52ac9a)
- [2cdf437938 - Update phpstan baseline after tcpdf 6.4.3](https://github.com/phpmyadmin/phpmyadmin/commit/2cdf437938a3cffd45543948eecb1839e37aea08)
- [812b41c3a7 - Upgrade tcpdf to latest 6.4.3 (that has a PHP 8.1 bug fix)](https://github.com/phpmyadmin/phpmyadmin/commit/812b41c3a7666afd4ca75a6fedda3b69eca032de)
- [f8f815e736 - Cleanup sql-parser translation files on English bundle](https://github.com/phpmyadmin/phpmyadmin/commit/f8f815e736dc3e33850ea5158c0bd59f48143110)
- [dfea1a04c5 - Remove vendor/google/recaptcha/ARCHITECTURE.md useless file](https://github.com/phpmyadmin/phpmyadmin/commit/dfea1a04c530cae251fc7c7b3efb614388465dd6)
- [aa7a67f7c7 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/aa7a67f7c7db8768f4d00371631ba09694e141da)
- [833666bf39 - Add d/s/lintian-overrides](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/833666bf39794b8d3e73026c8594ffe7541595ac)
- [6c22ea25c8 - Update d/copyright](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/6c22ea25c834a42ccd700cd21d286ece7c6106d2)
- [0398303bb9 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/0398303bb9a801745720232b9989b8ce5681327a)
- [fe5788453d - Update tcpdf test.php from upstream](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/fe5788453d525c7ab9347ba393196edaa55b8408)
- [339913137f - Merge tag 'upstream/6.4.3+dfsg1' into debian/latest](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/339913137f94dacffd07c0270ee23870e04b6c04)
- [f1b68a33cf - New upstream version 6.4.3+dfsg1](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/f1b68a33cf2481858f846755bd494c6498534481)

