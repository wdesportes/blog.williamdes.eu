+++
title = "Report for September 2023"
date = 2023-09-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for September 2023.

<!-- more -->

In September 2023 my focus was the Debian packaging.

## First week (36)

I merged [#18690](https://github.com/phpmyadmin/phpmyadmin/pull/18690) to add a security link to the composer.json file. On the Debian side I sent tcpdf 6.6.3, 6.6.4 and 6.6.5 to unstable, and built the autoload from composer.json.

- [8559cce8e6 - Merge #18690 - Add security link to composer.json file ](https://github.com/phpmyadmin/phpmyadmin/commit/8559cce8e6cc15c28c9111a3facf558a661d2525)
- [81ff19d4a0 - Send 6.6.5+dfsg-1 to unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/81ff19d4a0c21d8e7898dcddffde2a393bf0a482)
- [bb55e2b410 - Change Debian branch to debian/unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/bb55e2b4102f3cc7dcc0a15f9a8b9bb2627993dc)
- [21a7c5a0a1 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/21a7c5a0a108aeb68b8e28ad0eb1b080ef4b5b8f)
- [60d9b7fead - Update upstream source from tag 'upstream/6.6.5+dfsg'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/60d9b7fead822d1e9bfe1243a7cd79c6f5f3bc7a)
- [d6e998e0ac - New upstream version 6.6.5+dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/d6e998e0acd2f498563d03be17867d8c902e285f)
- [4e631c7c5c - Change repacksuffix to dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/4e631c7c5cd50a89cb8ed32fb622f242b2079c53)
- [c1c57e78eb - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/c1c57e78eb08966d31e4e0cfe53587c6d2d17cab)
- [095f9ccfdf - Update upstream source from tag 'upstream/6.6.4+dfsg'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/095f9ccfdf1a35c57eb748a0ba96fa70ff35e0f1)
- [077b79c36f - New upstream version 6.6.4+dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/077b79c36f5c10cec507830b677f3649cfd4ceaa)
- [51242605a2 - Send 6.6.3+dfsg1-1 to unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/51242605a2fa2a27048386a2c050715c7d73ec11)
- [19526de23b - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/19526de23ba37983744df7b30af6411e7b357b0c)
- [5c284f5669 - Remove clean of include/sRGB.icc and override dh_install](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/5c284f56692f310dc7ea6b72885019a9024a8120)
- [87492578df - Build the autoload from composer.json](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/87492578dfc9edc275ea7080401189c81c82f54d)
- [e068389a75 - Update d/copyright and upate debian/*](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/e068389a758242a5a70dc2178dd5a2ee3711d237)
- [0c61a5991f - Add Changelog, Documentation, Security-Contact, CPE to d/u/metadata](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/0c61a5991fcc9b08536ecdc981119442af6edd3a)
- [4f3ab42873 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/4f3ab42873e46f00d1acdfc04751fa73fbd6c963)
- [92f75f5818 - Update upstream source from tag 'upstream/6.6.3+dfsg1'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/92f75f581860cf7e026d750b22e97fea6f164fc1)
- [d6505c5e82 - New upstream version 6.6.3+dfsg1](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/d6505c5e8269d8e202df00e5997ff049ed097467)

## Second week (37)

I sent motranslator 5.3.1-1 and shapefile 3.0.2-1 to unstable, with a patch for phpunit 10 and the Standards-Version bumped to 4.6.2.

- [4731314e97 - Send 5.3.1-1 to unstable](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/4731314e973d872a89b79334325c9a84bd7a48fa)
- [a813979073 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/a813979073a18201cacdd613a9b3a77d4bc51419)
- [dbffc9aa0e - Simplify symfony/expression-language constraints for dh_phpcomposer](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/dbffc9aa0e14bf2bb351f9fb1a22af2da3b15693)
- [c90a0b883b - Add a patch for phpunit 10](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/c90a0b883ba8a1326005ef811261ef90f994802b)
- [f84286df35 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/f84286df35650dbda15e000da4512377b6c9b416)
- [570a401006 - Bump Standards-Version to 4.6.2](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/570a401006f043cbe516ec840a6b653b03d846b6)
- [005cc9fed8 - Update upstream source from tag 'upstream/5.3.1'](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/005cc9fed8969f2b4255941ff0ad31c5ac1168c0)
- [562c6e8969 - New upstream version 5.3.1](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/562c6e8969593899266d512a0949852544565512)
- [5a72e4c956 - Send 3.0.2-1 to unstable](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/5a72e4c95695b1719c95d965f13f33146a677071)
- [324f304813 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/324f3048136d2ddb49832c3ffcd29bc21112bce1)
- [7305fa6d70 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/7305fa6d707ca77bf85aee94c5be382bba77d0d3)
- [44ed26cb62 - Update upstream source from tag 'upstream/3.0.2'](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/44ed26cb62ada9f6aa9a2b349f9e0504893ca39a)
- [ceb7dbafde - New upstream version 3.0.2](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/ceb7dbafde88eb0ceda77a733d6285c116bf62fc)

## Third week (38)

I fixed the base64 encoding of the GitHub token on the website and added tests for the GitHub API.

- [cda1133cb9 - Fix base64 encode of the GitHub token](https://github.com/phpmyadmin/website/commit/cda1133cb93abc7ee4aa01d827963cdb2e421b55)
- [0d37670375 - Add tests for the GitHub API](https://github.com/phpmyadmin/website/commit/0d3767037557444dbc3f87c8ff46509b0c91356a)
- [fad73905d1 - Add code to the test data](https://github.com/phpmyadmin/website/commit/fad73905d15fc3536c3bf63cc0dc1bd0ffaad8fd)

## Fourth week (39)

On the Debian package of phpmyadmin I switched to libjs-bootstrap5 and added patches for phpunit 10, and I sent sql-parser 5.8.2-1 to unstable.

- [68a10fdb43 - Depend on libjs-bootstrap5 and link to it](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/68a10fdb4375c8564619165646b69efe49208c39)
- [391aea199d - Build depend on libjs-bootstrap5](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/391aea199d9b9205fd9a7c23b179d0f69c895c12)
- [b8769d060a - Build css files in the build dir](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b8769d060aa6035ce821115f1e049552faa75df7)
- [9fab2a396d - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9fab2a396d4aa147701e3e4327af6e012766c8f2)
- [b9d590ec08 - Add a patch for fatal errors](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b9d590ec0819fa93489f3421e9fd768923d2056e)
- [c6b336bb0c - Add patches for phpunit 10](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c6b336bb0cf230e8685e2f881fbe90ccea7199fa)
- [2d2d2adf49 - Allow symfony 6](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2d2d2adf4993c9fdd0a5276c9bd253abd5193049)
- [d6c4728789 - Send 5.8.2-1 to unstable](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/d6c4728789896a80451d4eda62c9f13ad7968e71)
- [2601c8cc09 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/2601c8cc091d024635e48690651850ac0f9f7099)
- [415780884d - Add a patch for phpunit 10](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/415780884d43339e4aa9c7157c74025f65fcb117)
- [996394d26b - Update d/copyright](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/996394d26b60ba2ef5ce1a9419928dd53874442f)
- [8781576815 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/8781576815978722bb15219d4b9d9cce2bfc050a)
- [127c75fa4c - Update upstream source from tag 'upstream/5.8.2'](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/127c75fa4cc2b143f5b218cd058724d5979c18d4)
- [31b691029d - New upstream version 5.8.2](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/31b691029d4979accad64a55dc97e5ece5e252ad)

