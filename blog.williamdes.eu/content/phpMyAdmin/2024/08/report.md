+++
title = "Report for August 2024"
date = 2024-08-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for August 2024.

<!-- more -->

In August 2024 I worked on sql-parser, the Docker image, and the Debian packaging of sql-parser.

## First week (33)

On sql-parser I merged a change on the average time assertions of the benchmarks.

- [6dc815b3c1 - Merge #566 - benchmarks: decreasing benchmarks average time assertions](https://github.com/phpmyadmin/sql-parser/commit/6dc815b3c1cc9507e99f6de1054ee0d5c4a903b9)

## Second week (34)

On the Docker image I worked on the rootless tests, moved the testing to Alpine 3.20, fixed the permissions of config.secret.inc.php and enabled SSL for all the servers. On Debian I sent sql-parser 5.9.1 to unstable and bumped the Standards-Version.

- [f79c7073ab - Ref #187 - Make the rootless test fully using rootless and allow to skip the expose_php assertion](https://github.com/phpmyadmin/docker/commit/f79c7073ab4f3abf9267735a3f69572ed8ae7628)
- [0109a4fbdd - Revert "Ref #187 - Make custom ini files writable in rootless mode"](https://github.com/phpmyadmin/docker/commit/0109a4fbdd4144fa3585260527d200818ac76eaf)
- [a0e2d0f499 - Bump testing to Alpine 3.20](https://github.com/phpmyadmin/docker/commit/a0e2d0f499ce5d8733cc5087cb47869b3fece686)
- [4cbf9ef735 - Merge #432 - Fix Permissions of config.secret.inc.php](https://github.com/phpmyadmin/docker/commit/4cbf9ef7355f3e1c7ee00e671cd592039b850c61)
- [6a4843e99d - Delete the old stalebot config](https://github.com/phpmyadmin/docker/commit/6a4843e99d8803d10780cb74d7f38c5849fa1f55)
- [998a6d85ab - Update CHANGELOG.md](https://github.com/phpmyadmin/docker/commit/998a6d85abc6238f5e9ea077b28734cbfb0b2bc5)
- [8831312555 - Merge #441 - Enable SSL for all server](https://github.com/phpmyadmin/docker/commit/883131255586796acaca9ed2db3da4d8563f3e9d)
- [1a311fd27b - Merge #175 - Update workflows](https://github.com/phpmyadmin/website/commit/1a311fd27b5c4669ab9ffaf97ad41de29eb9b93d)
- [9c88bc9e4c - Send 5.9.1-1 to unstable](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/9c88bc9e4ce20c01a24adb5ce0f7b5cf09b48f72)
- [2cec15eb85 - d/ch](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/2cec15eb85c0f6d9a5cb3bf8e2c4386cabe8a44a)
- [0be5c3c490 - Drop the forwarded patches](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/0be5c3c490f54c2f651c2934167bde4f57a0c295)
- [1f4e737bda - Update upstream source from tag 'upstream/5.9.1'](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/1f4e737bdad0c77950f9a0a95ab68ff807fabbda)
- [0bc3b8e986 - New upstream version 5.9.1](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/0bc3b8e98644acc8a655339bdf77f707deeecf91)
- [258bcadb8d - Bump Standards-Version to 4.7.0](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/258bcadb8d6ae0e31ffcd8f2095711fbdee515b1)

## Third week (35)

On sql-parser I merged the use of the `::class` keyword to load a context, a fix for the query flags of lower-case functions, and a refactor of the `KILL` statement parser.

- [9b0acc4064 - Add a CHANGELOG entry for #571](https://github.com/phpmyadmin/sql-parser/commit/9b0acc4064aa850007d80e7ea040adecf8a54af9)
- [8649874af7 - Merge #571 - Allow using ::class keyword to load a context](https://github.com/phpmyadmin/sql-parser/commit/8649874af720a3517b2a806750df2adabed2fc15)
- [456d9469ec - Add a CHANGELOG entry for #564](https://github.com/phpmyadmin/sql-parser/commit/456d9469ec1997aa8e612a15bad9a33560e01ffe)
- [d8e30bcd72 - Merge #564 - Fix query flags for lower-case functions](https://github.com/phpmyadmin/sql-parser/commit/d8e30bcd7273bfca4a059d570c5f45277489fa8a)
- [7c4a54acbb - Add CHANGELOG entries for recent changes](https://github.com/phpmyadmin/sql-parser/commit/7c4a54acbbd5a30da361cdb735a2a4422b41270e)
- [a09e13ca19 - Update out files](https://github.com/phpmyadmin/sql-parser/commit/a09e13ca19959639eecb349d457bcdbd44c17c91)
- [03f05324a9 - Merge #565 - Fix #556 - Implementing and refactoring the KILL statement parser](https://github.com/phpmyadmin/sql-parser/commit/03f05324a9b12c59f13e824008f1a3b2f8841d3c)

