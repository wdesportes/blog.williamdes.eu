+++
title = "Report for April 2025"
date = 2025-04-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for April 2025.

<!-- more -->

In April 2025 I worked on the Debian packaging of tcpdf, motranslator, sql-parser and phpmyadmin, and sent the 5.2.2-really+dfsg-1 upload to unstable.

## First week (14)

On the Debian packaging of tcpdf I updated the package to 6.9.1, refreshed the patches and bumped the Standards-Version.

- [9a2a3a753d - d/ch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/9a2a3a753df02b144b2662c5920b6fa6fa8430ff)
- [6b39f545d0 - Bump Standards-Version to 4.7.2](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/6b39f545d02c37d1a524012f09c6f7dea55548b4)
- [8494faa787 - d/ch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/8494faa78779ac6a4c1cf61c3e5b0f29eb837c5b)
- [51999b0f92 - Update upstream source from tag 'upstream/6.9.1+dfsg'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/51999b0f920dd3a8263809761ac5932d3dc77ac0)
- [efb753deb3 - New upstream version 6.9.1+dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/efb753deb3533cc26d56e65930371185ad1d7467)
- [b605ecdd10 - d/ch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/b605ecdd10987ddfa9f05437a851a7a2d605de2d)
- [d964395e8c - Refresh patches](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/d964395e8c2174d2cc26bb2599b8b02a12c19340)
- [00dd1411ff - Documentation](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/00dd1411fff0771b9a96f4baf3f022bfcc065672)
- [fdd51c94bf - Drop install exclude for tcpdf_import.php](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/fdd51c94bf6bd57d73a529b12daabf4d747b4e14)
- [62b5af67fc - Update upstream source from tag 'upstream/6.9.0+dfsg'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/62b5af67fc6af63bb2f59b64012d430ca9250c0c)
- [40536e3ebb - New upstream version 6.9.0+dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/40536e3ebbbdbff3de15abb3f664316ed6a080a5)

## Second week (15)

I sent motranslator 5.4.0-1 and sql-parser 5.11.0 to unstable, and bumped the Standards-Version of both packages.

- [124f61f93e - Send 5.4.0-1 to unstable](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/124f61f93e91190d8b6e8861d2e575cb349737c9)
- [5f8efc47ce - d/ch](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/5f8efc47ce44a55f5d04b4f43f07c1b789d76de8)
- [f7715e96be - Refresh patches](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/f7715e96bec0f128f0dfa2127026b98caaabe5a3)
- [8f81f3443c - Update upstream source from tag 'upstream/5.4.0'](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/8f81f3443cb37aee4f74ecd576517975c3802e05)
- [ec92a7fd26 - New upstream version 5.4.0](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/ec92a7fd2646fe0f02b8fa0f5a98b99c5d1e1642)
- [14c884452c - Bump Standards-Version to 4.7.2 and relax pkg-php-tools version](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/14c884452cd72fde8183a4f697b6e8b14c565427)
- [8c077bd206 - d/ch](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/8c077bd206ea46ab800d381989986eef27e53b42)
- [a68652ca68 - Bump Standards-Version to 4.7.2](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/a68652ca685435e94cf20cce8504837da8a942eb)
- [fd89afae25 - d/ch](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/fd89afae25e2336712c21ee5d2bc6a467e6ee8ad)
- [fb628d0288 - Update upstream source from tag 'upstream/5.11.0'](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/fb628d0288636bc1ab59271e23700e7d3cfe67d9)
- [b0d8804ac6 - New upstream version 5.11.0](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/b0d8804ac607fafe6aab6d594ea3ff4bb0ceb12f)

## Third week (16)

On the Debian packaging of phpmyadmin I switched to the debian/trixie branch, fixed the tests for PHPUnit 12 and dropped the unneeded overrides and dependencies. I also updated tcpdf to 6.9.2.

- [00aa9a6c48 - Use debian/trixie as the Debian branch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/00aa9a6c485831d91eca167c92bbb857644e9bd3)
- [379645ef42 - Remove Matthias from uploaders](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/379645ef42f99f31637138eac275af4c2f07e5fb)
- [96a762643c - Adjust dversionmangle for -really](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/96a762643c880ca157e19542e028612f8959f8c0)
- [dea679d074 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/dea679d074df9a59b8f0473f96f17faa27d2b6b7)
- [dd8c116f4a - Update upstream source from tag 'upstream/5.2.2-really+dfsg'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/dd8c116f4a77ef5faf1ec586300cf0e06ea1e536)
- [e974ec6248 - New upstream version 5.2.2-really+dfsg](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e974ec6248e04065847f454519e119bd2564904e)
- [49632fbb4d - Fix tests for phpunit 12](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/49632fbb4d6a949d95d14973078679a5aadef31c)
- [f03c67cc44 - Drop not needed overrides for tcpdf (since tcpdf: 6.3.5+dfsg1-1)](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f03c67cc44eb356ea1bbdc4369d8660f80fcf50a)
- [0e8c964854 - Drop not needed depends on php-symfony-polyfill-php80 and Standards-Version to 4.7.2](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/0e8c964854c50eb7f5c22a73ed956646d75c8478)
- [9ac03d5f1a - d/ch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/9ac03d5f1ae145f023c678fe34e82f37397b0ac2)
- [683e66ec46 - Update upstream source from tag 'upstream/6.9.2+dfsg'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/683e66ec469a5680cf71dda392e67b8ae5bdebfc)
- [ffc1cfd9d3 - New upstream version 6.9.2+dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/ffc1cfd9d32e01131e2132ffa04cb18f02791e5c)

## Fourth week (17)

I sent phpmyadmin 4:5.2.2-really+dfsg-1 to unstable.

- [04d9f8cf85 - Send 4:5.2.2-really+dfsg-1 to unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/04d9f8cf85cf6f6f1c18633d6e60da2e26cbf180)

