+++
title = "Report for October 2020"
date = 2020-10-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for October 2020.

<!-- more -->

In October 2020 I fixed bugs and updated the documentation, with the Debian uploads of phpmyadmin 4.9.6 and 4.9.7. I also sent a few pull-requests to grrnikos/pma and Samyoul/U2F-php-server.

## First week (40)

I merged a fix to use the full list of functions on the insert/edit page "Function" select. I also switched the documentation to the docker official image, documented the new Docker ENV variables and fixed the Stickyfill error again. On the website I improved the end of life grid, and on sql-parser I merged the select validation for CREATE VIEW.

- [0ab9b888b9 - Add a ChangeLog entry for #13557](https://github.com/phpmyadmin/phpmyadmin/commit/0ab9b888b9d1b11d7dd45974f94bff8856d57d6f)
- [46b8b5a744 - Merge #15935 - Fix #13557 - Use a full list of functions on insert/edit page "Function" select](https://github.com/phpmyadmin/phpmyadmin/commit/46b8b5a744fe67aeaceeb532e6a5d5e41db9377b)
- [aecdfc80cb - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/aecdfc80cbc5db6601789368cf5544736540a87d)
- [4b92916fcd - Set a non private URL for reCaptcha console](https://github.com/phpmyadmin/phpmyadmin/commit/4b92916fcdbd22db49d8fa3927142e4b8ba111ea)
- [249d02fddf - Switch to docker official image](https://github.com/phpmyadmin/phpmyadmin/commit/249d02fddfb17a0e4f32dd7944b08bf3bcc2c7c9)
- [31aa1cab76 - Document new Docker ENV variables](https://github.com/phpmyadmin/phpmyadmin/commit/31aa1cab763c265cbd07c4af52e231adef3a34e5)
- [2f3878028f - Fix some documentation typos](https://github.com/phpmyadmin/phpmyadmin/commit/2f3878028fbfde45e7257706aafa138231c2826d)
- [71e1438f52 - Fix reCaptcha redirected links in docs](https://github.com/phpmyadmin/phpmyadmin/commit/71e1438f52a8516edfe9849360dd335e52fd2d58)
- [2824e3ce25 - Merge #16379 - Fix #16377 - Uncaught ReferenceError: Stickyfill is not defined](https://github.com/phpmyadmin/phpmyadmin/commit/2824e3ce25afbd1afc0bdbf174a543dff23b2ee8)
- [81760fd388 - #101 - Make downloads support table readable](https://github.com/phpmyadmin/website/commit/81760fd3888859cbef4ceb83ae08694d3c6e02c8)
- [34dc897a06 - Merge #101 - Improve end of life (EOL) and long-term support (LTS) grid](https://github.com/phpmyadmin/website/commit/34dc897a06b91460eb84fdd433e62ba0b63e99b3)
- [2281094b10 - Fix a typo on README.rst](https://github.com/phpmyadmin/website/commit/2281094b10bf42fc7ed9c173aa86ba970df8d580)
- [b2136f3722 - phpstan baselines and configuration fixes](https://github.com/phpmyadmin/sql-parser/commit/b2136f37227bfbf206c8b50df3a53c07ce88f9bb)
- [5c6e57a093 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/5c6e57a0935b467f84daaaa857da1e346356dde8)
- [50babee9f7 - Apply some phpstan detected errors fixes](https://github.com/phpmyadmin/sql-parser/commit/50babee9f7b01e217bc04fb1bbabeb70c863e86e)
- [abda0ffa47 - Minor README improvements](https://github.com/phpmyadmin/sql-parser/commit/abda0ffa471f98ec491918ae73a78886270fe9f3)
- [cae464cbf7 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/cae464cbf73b2ae02e7055a8213a2958ca6ed21a)
- [707bbfd262 - Typo fixes and ignore .phpunit.result.cache](https://github.com/phpmyadmin/sql-parser/commit/707bbfd26213e6fd14d4e2a06dcd19c1c2d897ad)
- [9886594c7e - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/9886594c7e16a07e12c6bc6496cc88d0ad3ce3ea)
- [ef0943217b - Add a ChangeLog entry for #310](https://github.com/phpmyadmin/sql-parser/commit/ef0943217bc47762c221efdfc0ba8434dc151c78)
- [dca5a971e7 - Merge #311 - Fixes #310 - Adds select validation to create view](https://github.com/phpmyadmin/sql-parser/commit/dca5a971e763e647933207051d6da7ffdda6b5c2)

## Second week (41)

I fixed the zoom search keeping its values after a failed search, the async routine export list and the missing foreign keys, and I stopped shipping the Doctum config files in the releases. On the Debian side I uploaded sql-parser 5.4.0 and dropped the phpunit compatibility patch.

- [463f2a0cc5 - Add some style to the reset Zoom button](https://github.com/phpmyadmin/phpmyadmin/commit/463f2a0cc5922448972aeef1eb2eacda37df2b13)
- [81e64f0402 - Add a ChangeLog entry for #16245 and 7c091b6177b](https://github.com/phpmyadmin/phpmyadmin/commit/81e64f0402f1cebb254e7c4759ab238e24677ad4)
- [7c091b6177 - Fix a PHP error when reporting a particular JS error](https://github.com/phpmyadmin/phpmyadmin/commit/7c091b6177b2be3f173f7689dd350f5a50f367af)
- [c87576f44c - Merge #16384 - Fix #16245 - Failed Zoom search clears existing values](https://github.com/phpmyadmin/phpmyadmin/commit/c87576f44cc4e1a3991dd1735d104ca376f65f0c)
- [abe46bef1d - Fix po files mistake from 224a9ce4a8bb97b9a2f474a738628d4c3d18807a](https://github.com/phpmyadmin/phpmyadmin/commit/abe46bef1da7b6c328bbac6081eaf13d61e95d8a)
- [ee538e3d0c - Trim whitespaces on jquery.sortableTable.js and add a copyright line](https://github.com/phpmyadmin/phpmyadmin/commit/ee538e3d0c4b980f819059b8c44e669be42c4e7a)
- [224a9ce4a8 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/224a9ce4a8bb97b9a2f474a738628d4c3d18807a)
- [1fcb62e563 - Flag 32 bit incompatible tests](https://github.com/phpmyadmin/phpmyadmin/commit/1fcb62e563f3d3c40444d5038a2fa9701e6170db)
- [2d267861bc - Fix failing tests in a random order for seed: 1602433695](https://github.com/phpmyadmin/phpmyadmin/commit/2d267861bc3013b0bf4303e5ccec85c5fe730a7d)
- [33965a7a72 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/33965a7a7218209aa0dfcda9b14810b2d81be421)
- [e9533de88f - Fix HyperFIDO product link](https://github.com/phpmyadmin/phpmyadmin/commit/e9533de88f7ed301c4af98a6cc41d8e998aa0627)
- [682e17e9f3 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/682e17e9f3ad2d9d5e69e5e77e6d83bab6b8d5ab)
- [0d9882961f - #16382 - Remove APC from PHP documentation](https://github.com/phpmyadmin/phpmyadmin/commit/0d9882961f7d55a643ee63c6fb370d0b82d58aab)
- [777dcb2e60 - Fix coding standard issues](https://github.com/phpmyadmin/phpmyadmin/commit/777dcb2e60d8b6472a1ca5fa514c115c56a72065)
- [960e3889c7 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/960e3889c76be4da8e510f5bb868c232c13691db)
- [71ceacb79b - Fix a coding standard issue](https://github.com/phpmyadmin/phpmyadmin/commit/71ceacb79b27a2a3f1da95a3220fc2b6a804138c)
- [01d8979136 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/01d89791369c14478a32f842b7a12fcaf6eb2bf8)
- [34a8dfb6b1 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/34a8dfb6b137257bc5b82089736a155be2ac3d8d)
- [7813f8f2b2 - Remove Doctum config files on releases](https://github.com/phpmyadmin/phpmyadmin/commit/7813f8f2b2ed43b189b52f5a0448d0e16bd3e12d)
- [b5654b02df - Fix failing tests](https://github.com/phpmyadmin/phpmyadmin/commit/b5654b02dfa326d1fbcb775b750a5d16f62ce697)
- [e0183c6f4d - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/e0183c6f4d9e3a9aadf5e7142b7f3d0a91be09b5)
- [0cad95a5de - Add a ChangeLog entry for #14795](https://github.com/phpmyadmin/phpmyadmin/commit/0cad95a5de557d06339725df39513af2e9e4c089)
- [d5b07558bc - Merge #16363 - Fix #14795 - async Routine export list](https://github.com/phpmyadmin/phpmyadmin/commit/d5b07558bc99cbecd53ddd75da41f097c4e462ce)
- [74f40400c5 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/74f40400c56387c128f802cf4410f5559eebb336)
- [da8230fced - Merge #16368 - Fix #16365 - Foreign keys are not showing](https://github.com/phpmyadmin/phpmyadmin/commit/da8230fced12f61cada66eff33d6ef2e78f31494)
- [9033538d7f - Merge #127 - Fix a typo](https://github.com/phpmyadmin/website/commit/9033538d7f594d246954bdb64374e878d5309942)
- [c4521bf2b1 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/c4521bf2b104f73416e273e298b4f9e004448e65)
- [25f9d56ba5 - Do not export phpstan-baseline.neon on vendor tarballs](https://github.com/phpmyadmin/sql-parser/commit/25f9d56ba5636badc8de51770590a84e3053ddcc)
- [93746f0721 - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/localized_docs/commit/93746f0721e154f9da22d76d01507d4b5fbe0a77)
- [8424b52fee - Set default language for tests](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/8424b52fee435e19ce726ec946dedff05222bd1b)
- [ce1721d871 - Update d/changelog entry for 5.4.0-1](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/ce1721d87150072547473da7febc2ffce53faf59)
- [4cec3e523f - Drop phpunit compatibility patch ](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/4cec3e523f9477e192a5e1c0f4a9c2980be35cfb)
- [6882267351 - Add d/changelog entry for 5.4.0-1](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/6882267351bf2312eacb30eca83f6bcec8849ecb)
- [a84ca3870c - Update upstream source from tag 'upstream/5.4.0'](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/a84ca3870c649e625076016aa372f07aacfd70e5)
- [c0c407ea58 - New upstream version 5.4.0](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/c0c407ea58d0e0085c46d098cb9b8f48e25f5bda)

## Third week (42)

I fixed the latitude and longitude swap for geometries in edit mode, with tests for Util::asWKT, and added the Central Atlas Tamazight language. I also fixed the cache warmup running when the console file does not exist, and merged on sql-parser a fix for the `array_key_exists` warning when parsing a `DEFAULT FALSE` token. On the Debian side I uploaded phpmyadmin 4.9.6 and 4.9.7, and sql-parser 5.4.1.

- [9f2a7dfa22 - Fix #16300 - Add new language Central Atlas Tamazight](https://github.com/phpmyadmin/phpmyadmin/commit/9f2a7dfa22b3cb40a658ff57dc8d6299f4d15179)
- [df56f8cf9e - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/df56f8cf9e3735340af6610501144c235328af7a)
- [d468a476ad - Fix #16400 - Only warmup if the console file exists](https://github.com/phpmyadmin/phpmyadmin/commit/d468a476ad5249e5d600947aeaf2fb6204b1da5c)
- [e6d84af4e9 - Upgrade phpstan memory limit](https://github.com/phpmyadmin/phpmyadmin/commit/e6d84af4e944962f5787e00774281d1d4b377380)
- [1ce245a667 - Update psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/1ce245a66711ce25a4030da2a157e4917760734f)
- [0d97b16d16 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/0d97b16d166e69842f7ac19966bfe52a08ef4f1a)
- [55f493dbb6 - Add a ChangeLog entry for #16326](https://github.com/phpmyadmin/phpmyadmin/commit/55f493dbb6ec08816ab9b7d5e8ca9a9cf21a3a5a)
- [711095d4cc - Merge #16391 - Fix #16326 - Latitude and Longitudes swap for geometries in edit mode](https://github.com/phpmyadmin/phpmyadmin/commit/711095d4cc830b3dcbbc2735a0963f5bbd9f73f0)
- [0f0dc09dee - #16326 - Add tests for Util::asWKT](https://github.com/phpmyadmin/phpmyadmin/commit/0f0dc09dee315a7ac494126dd89e89640ffd2eb5)
- [c09734f66f - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/c09734f66fbf475eee529c42f400cb9dd715d94f)
- [0ebf747e3e - Update date for CHANGELOG.md](https://github.com/phpmyadmin/sql-parser/commit/0ebf747e3e3be0d65f50c0f62603b32227155db3)
- [c52b672931 - Update phpstan baseline](https://github.com/phpmyadmin/sql-parser/commit/c52b672931eed6b48d5f9dbcec945ccade50db7b)
- [c5b7495e59 - Add typehints on CreateDefinitionTest](https://github.com/phpmyadmin/sql-parser/commit/c5b7495e5904b536a28b4f616afccee2118a285c)
- [702704844b - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/702704844b8de9ef0a2ceff465822df16f364408)
- [4601f6879d - Add a CHANGELOG entry for #299](https://github.com/phpmyadmin/sql-parser/commit/4601f6879d4f6746508898ddbaa950117ec4280a)
- [9b2d4cac8f - Merge #314 - Fixes #299 - array_key_exists warning when parsing a "DEFAULT FALSE" token](https://github.com/phpmyadmin/sql-parser/commit/9b2d4cac8f19f3917495eed0ce90a1c2e3db9d44)
- [512db632c8 - Add a test for #299](https://github.com/phpmyadmin/sql-parser/commit/512db632c8dedd173f15640259d7e045d7f881bf)
- [ffd5221637 - Add d/chnagelog entries for 4.9.7](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ffd5221637b12d73814ef8ac7dd5a91194a47e25)
- [50f56197c4 - Drop patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/50f56197c4207fb0361716e1f5e4fbeecad76026)
- [f88fed49ee - Update upstream source from tag 'upstream/4.9.7+dfsg1'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f88fed49ee4c8b90f458be7efc8ffb67d1322e0c)
- [4f5e1d2f63 - New upstream version 4.9.7+dfsg1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/4f5e1d2f63fcb83cdd84c26513dd7809db8bbdba)
- [2c30785d8f - Adjust open_basedir for BaconQrCode and DASPRiD/Enum dependency](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2c30785d8f1621ad3d2bcc1230f91157bfbec883)
- [939ad23ae5 - Remove OR from dependencies patch ](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/939ad23ae56dc870584f5163c5c964d1f7fc9687)
- [e89c586d2e - Add a comma on d/control](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e89c586d2e57c5f0d756b204d55ebe169f6b98bf)
- [2045bf87a2 - Add new d/changelog entries](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2045bf87a21db913fa2254f9080407a5c47dd95c)
- [26af7f2771 - Allow bacon qr code to be used](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/26af7f2771b072f9aaa7a23f72c2fc8b3efce8e8)
- [8958b5db37 - Adjust patches for 4.9.6 and allow sql-parser 5.4+](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/8958b5db37618f2c9ce8588d0f42c59ff5b1846d)
- [32c5d65761 - Update d/changelog for 4.9.6](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/32c5d657614e2df995285bc2bff1a263c13a34d2)
- [a5f22d8b03 - Update upstream source from tag 'upstream/4.9.6+dfsg1'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a5f22d8b03627277b9a60997d942bb8389b2714a)
- [d55b0302b6 - New upstream version 4.9.6+dfsg1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d55b0302b6d8f9f5d27679ffa6c39dcc3d3a8035)
- [722b6cebce - Add new d/changelog entry for 5.4.1](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/722b6cebce910ac3ef2e1ef17e2123c7f31d4aa1)
- [1a4babca84 - Update upstream source from tag 'upstream/5.4.1'](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/1a4babca8453669a7d15e153d16db0be6f69fd7b)
- [754b5f5b2f - New upstream version 5.4.1](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/754b5f5b2f016c3c0e073227e2365f404a76ebf1)

## Fourth week (43)

I upgraded CodeMirror to 5.58.2, bootstrap and blueimp-md5, and added stickyfill to the sync script. On motranslator I improved the return type of `Loader::listLocales`. And I did another Debian upload of phpmyadmin, 4.9.7+dfsg2, excluding the built html documentation files.

- [abac029565 - Add a ChangeLog entry for #16227](https://github.com/phpmyadmin/phpmyadmin/commit/abac02956553448887feb4e4862d0d728b1b9262)
- [771aa54a42 - Upgrade bootstrap and blueimp-md5](https://github.com/phpmyadmin/phpmyadmin/commit/771aa54a42efccfdc1cd76f42bd05c5d2f34d718)
- [1ef9bb1232 - #16277 - Add stickyfill.min.js to the sync script](https://github.com/phpmyadmin/phpmyadmin/commit/1ef9bb123263f9830fc5bb3cc04fd839eb1758f5)
- [4841006e1e - Fix #16227 - Upgrade CodeMirror from 5.56.0 to 5.58.2](https://github.com/phpmyadmin/phpmyadmin/commit/4841006e1e0ee40bca3fffb4d23c1659eab1a9a1)
- [9291bd272a - Use php 7.3 for the Doctum step](https://github.com/phpmyadmin/motranslator/commit/9291bd272a10e4cfa71713dd47ef17caef25c0ca)
- [943f91fbfb - Improve README.md and fill CHANGELOG.md](https://github.com/phpmyadmin/motranslator/commit/943f91fbfbf29eaa2c0709e4e88b2c0f1fa4fafa)
- [6af6f51eb3 - Improve return type of Loader::listLocales](https://github.com/phpmyadmin/motranslator/commit/6af6f51eb3e4c5477ad9a9a5214dfc14431611bf)
- [e7a8b5789c - Fix 2 typos](https://github.com/phpmyadmin/motranslator/commit/e7a8b5789c5e2bc8eec4ecbf36e1c277284e3a29)
- [5c77251319 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/5c772513199c2df062a8733202d7655478b156d5)
- [0fe96c6ae5 - Update upstream source from tag 'upstream/4.9.7+dfsg2'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/0fe96c6ae510283146b4f06195c5e7a6266c0b4c)
- [2c5948e0f3 - New upstream version 4.9.7+dfsg2](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2c5948e0f396f5eb9a0cf8ae86f0ca9975c6b4ec)
- [2658139d53 - Add d/changelog entry](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2658139d538017bf00268328661ba6c102def55f)
- [b1313a8bf7 - Exclude and clean built html doc files](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b1313a8bf74e119f6a1ae4598cbaf2f0b76347a4)
- [6ab6065c47 - Make the selenium tests silent before running phpunit instead of removing them](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6ab6065c4733d9547d1a89d482eaa7a7afc328c4)
- [a19b4212a4 - Add d/clean file](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a19b4212a41c4de0e8f10a24b20bcae2c4f51fff)

