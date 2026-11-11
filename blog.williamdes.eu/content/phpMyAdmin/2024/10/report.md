+++
title = "Report for October 2024"
date = 2024-10-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for October 2024.

<!-- more -->

In October 2024 I worked on the Debian packaging of phpmyadmin and sql-parser, and on the snapshot links of the website.

## First week (40)

On the Debian packaging of phpmyadmin I added a patch for PHPUnit 10, required the newer versions in d/control and updated the patches for the newer Twig versions.

- [656b481aae - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/656b481aae806785c2017932b5f20a06a761cd24)
- [f5c943c5ab - Add a patch for PHPunit 10](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f5c943c5abe04c5cae3f4bfb0188d00aba2893ac)
- [968513f13a - Require the newer versions in d/control](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/968513f13aa026e21a2f1d07fe95d887dbd95dfa)
- [d0e0b80839 - Update patches for newer Twig versions](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d0e0b80839830208e429a242940cbd114cc4a30e)

## Second week (41)

On the website I encoded the `+` in the snapshot links, and used the checksum helper instead of a concatenation for the download row. On the Debian side I sent phpmyadmin 5.2.1+dfsg-4 to unstable with a fix for the exclude group of PHPUnit 12.

- [46795921fc - Temporary fix: encode + for the snaphots links](https://github.com/phpmyadmin/website/commit/46795921fc287e8857187ccfa4fce2fff78dcd93)
- [268cca2909 - Use get_checksum_url instead of a concat on download row](https://github.com/phpmyadmin/website/commit/268cca290958b8c76f52bd5f8ab3c9e175896b59)
- [466a0f0e60 - Temporary fix: encode + for the snaphots links](https://github.com/phpmyadmin/website/commit/466a0f0e60bee51159b8d98cfecf114ae0360765)
- [1382f9b6d0 - Send 4:5.2.1+dfsg-4 to unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/1382f9b6d0dac73d01a844b0499260d42f9b1add)
- [86f9c6729f - Revert "Fix --exclude-group for PHPunit 12"](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/86f9c6729fb4d0fd79947c2c0cebe75a681c0db6)
- [a2a0f86ff2 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a2a0f86ff2b8a61196e1896453a1cc6979540fe1)
- [97b2ece9d3 - Fix --exclude-group for PHPunit 12](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/97b2ece9d3f00e44b6ce66b763e998fc313ce9b7)

## Third week (42)

Only a French translation update on Weblate this week.

- [85e2cdec7e - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/85e2cdec7e8e0dcfba202312230b02ab60edba16)

## Fourth week (43)

On the Debian packaging of sql-parser I dropped the dependency on the Symfony PHP 8.0 polyfill and prepared the 5.10.0 version.

- [27b06735c4 - Drop depends on php-symfony-polyfill-php80](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/27b06735c4abf279b69546c185c7c2a1417bf023)
- [e4b77be3f0 - d/ch](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/e4b77be3f0aa9d9b43f558be90a7e8953d81a311)
- [43607e91d5 - Update upstream source from tag 'upstream/5.10.0'](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/43607e91d56512d25532b1a40fa2e3f0d0ad85e8)
- [65db38a576 - New upstream version 5.10.0](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/65db38a576605d7675fd55a4b11147e96194b08b)

## Fifth week (44)

I sent sql-parser 5.10.0-1 to unstable.

- [f1e6d4477b - Send 5.10.0-1 to unstable](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/f1e6d4477b2501887c912a462956a4b985f4185b)

