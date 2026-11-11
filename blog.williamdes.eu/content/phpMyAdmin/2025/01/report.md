+++
title = "Report for January 2025"
date = 2025-01-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for January 2025.

<!-- more -->

In January 2025 I prepared the twig-i18n-extension 5.0.0 release and merged a lot of pull-requests on the main repository. I also worked on the Docker image and the official images, and sent the Debian updates for phpmyadmin, sql-parser and twig-i18n-extension.

## First week (1)

On the Docker image I fixed a loop variable that could be affected by socket settings of a different length.

- [12b0f347cb - Fix $i could be affected by the socket settings not being of the same length](https://github.com/phpmyadmin/docker/commit/12b0f347cb933a7fac768286dbd0369d7e78bef0)

## Second week (2)

On twig-i18n-extension I prepared the 5.0.0 release: dropped the support for Twig older than 3.17.0 and for PHP 8.1, fixed the Twig deprecations and cleaned up the vendor bundle. On the main repository I merged some fixes, and I made small adjustments on the Docker image and on the website. I also sent twig-i18n-extension 5.0.0 to Debian unstable.

- [57610a504f - Merge #19508 - Use shorthand attributes](https://github.com/phpmyadmin/phpmyadmin/commit/57610a504f6b5b4d0e4c4c140e8aa186f36057c3)
- [5a10863529 - Fix Twig deprecations - allow twig-i18n-extension v5](https://github.com/phpmyadmin/phpmyadmin/commit/5a10863529fea9bfd56e51e763e5c0733e670d1f)
- [5b58c8af12 - Add CHANGELOG entries for #19500 and 2baf6b33b8](https://github.com/phpmyadmin/phpmyadmin/commit/5b58c8af12d11f699ebe55601811c03db2263088)
- [2baf6b33b8 - Fix adding a blank row in "copy to clipboard" for each repeating header row](https://github.com/phpmyadmin/phpmyadmin/commit/2baf6b33b847a54865627823da4de97940cecb5c)
- [71fb45ace5 - Fix #19500 - Use `KILL` instead of `CALL mysql.rds_kill` for non super users](https://github.com/phpmyadmin/phpmyadmin/commit/71fb45ace5a503693e57691b54c8526824027102)
- [6ce5636092 - Merge #19353 - Allow opening server breadcrumb links in new tab with Ctrl/Meta key](https://github.com/phpmyadmin/phpmyadmin/commit/6ce56360928211a70359e62ad50f54aa10540b5f)
- [edf8ec9d05 - Add a ChangeLog entry](https://github.com/phpmyadmin/phpmyadmin/commit/edf8ec9d0567d44572b7fc24c814f35e3fa83b9a)
- [ec0d6a5c3a - Use chown from Docker directly](https://github.com/phpmyadmin/docker/commit/ec0d6a5c3ae5d8df6e5f7d08570c91518cfc302e)
- [2b712de361 - Add CHANGELOG entries for #448](https://github.com/phpmyadmin/docker/commit/2b712de3614ad26be2fe7ac2f0db52311b506278)
- [9c06d07727 - Add a CHANGELOG entry for #186](https://github.com/phpmyadmin/docker/commit/9c06d07727e259a3bbcde8f094ea62aae22114f3)
- [a0e0282c91 - Fix $i could be affected by the socket settings not being of the same length](https://github.com/phpmyadmin/docker/commit/a0e0282c91232abae89bd0fea7add83a9272a6be)
- [6c2aca9319 - Revert "Temporary fix: encode + for the snaphots links"](https://github.com/phpmyadmin/website/commit/6c2aca9319d0a4f72c401fae8dd29f426646b40d)
- [70f91778be - Revert "Temporary fix: encode + for the snaphots links"](https://github.com/phpmyadmin/website/commit/70f91778be4cb15565f264d136fcc019fc8553c4)
- [c15914938f - Merge #185 - Fix active state for nested URLs in navigation](https://github.com/phpmyadmin/website/commit/c15914938ff1e211564964b3aaec01af5c89b0fb)
- [442b73a6ca - Drop Codacy badge](https://github.com/phpmyadmin/website/commit/442b73a6ca6c3f3e36bea2c020f0caf7186afe5b)
- [187186c4fc - Document how to change the port](https://github.com/phpmyadmin/website/commit/187186c4fca7bedd79b2914643a3e544636bcc1e)
- [0ff5467514 - Merge #183 - Fix typo and correct default port in README](https://github.com/phpmyadmin/website/commit/0ff546751440ffa59f2830e379391bb0b39a8277)
- [6aab917320 - Test PHP 8.4 and set 8.5 as experimental](https://github.com/phpmyadmin/shapefile/commit/6aab9173201b992a90ad36b5ee6b001f35760284)
- [26cbbae9d8 - Add a PHPUnit group to integration tests (I18nExtensionTest)](https://github.com/phpmyadmin/twig-i18n-extension/commit/26cbbae9d8cdbb6c0695ca5b5b90bb46114306cf)
- [572810eab7 - Add a PHPUnit group to integration tests](https://github.com/phpmyadmin/twig-i18n-extension/commit/572810eab7efbb0ed56e1392f03bd3ede88a542a)
- [2006c55d6f - Drop older versions of PHPUnit (9.x)](https://github.com/phpmyadmin/twig-i18n-extension/commit/2006c55d6f2ac64b39295cb865887cf2718bfc9e)
- [57d1410685 - Fix deprecated testing getFixturesDir should be getFixturesDirectory](https://github.com/phpmyadmin/twig-i18n-extension/commit/57d141068593ba2a427ef5e45b369e4ee83ecde1)
- [a7e16a7321 - Apply the coding standard](https://github.com/phpmyadmin/twig-i18n-extension/commit/a7e16a7321e2347e3ba049a59b5069682e572688)
- [43e6f43d4d - Fix deprecated testing methods: getTests is now provideTests and getVariableGetter is now createVariableGetter](https://github.com/phpmyadmin/twig-i18n-extension/commit/43e6f43d4daa9ce2f1b5ab1e3e4da6064e77172c)
- [3d8c24fd83 - Exclude tests from the vendor bundle](https://github.com/phpmyadmin/twig-i18n-extension/commit/3d8c24fd83fd62ba586cf45b98a8ca05781f26dc)
- [b71c9b81db - Exclude phpstan-baseline.neon from the vendor bundle](https://github.com/phpmyadmin/twig-i18n-extension/commit/b71c9b81dbb72b4da0b5366ec5677b6648518053)
- [5f46d36ea3 - Prepare for next release](https://github.com/phpmyadmin/twig-i18n-extension/commit/5f46d36ea3d5c7dfd36aa28301d2e01230a8e881)
- [bbd5204ace - Prepare for release 5.0.0](https://github.com/phpmyadmin/twig-i18n-extension/commit/bbd5204acea9e62feb79080ea90d647bd93f1933)
- [ebe4001166 - Add a CHANGELOG entry for #16 and #17](https://github.com/phpmyadmin/twig-i18n-extension/commit/ebe400116660da1dab1e5e7f05519568d3d8ad40)
- [4fae79a725 - Merge #18 - Fix deprecations from Twig](https://github.com/phpmyadmin/twig-i18n-extension/commit/4fae79a72563d28aa61e625ebcb83bee2ead14ea)
- [23db94dcfa - Drop PHP 8.1 because motranslator requires PHP 8.2](https://github.com/phpmyadmin/twig-i18n-extension/commit/23db94dcfa0401f067edc40f8290d63e9c503d6a)
- [cd2a03a682 - Fix #17 - Replace `Twig\Node\Expression\NameExpression` and `Twig\Node\Expression\TempNameExpression` are deprecated](https://github.com/phpmyadmin/twig-i18n-extension/commit/cd2a03a6828985ee6d0504fdeec5d66a840aebe9)
- [ddbf44a0b7 - Drop support for Twig < 3.17.0](https://github.com/phpmyadmin/twig-i18n-extension/commit/ddbf44a0b757beb8c9af83b85ee012ed1bec1c43)
- [cb9fd670be - Fix #16 - Direct use of Node is deprecated](https://github.com/phpmyadmin/twig-i18n-extension/commit/cb9fd670be54bf4e9eee965423003a9b602903bd)
- [c09a8aa5b3 - Update phpmyadmin to the latest commit](https://github.com/docker-library/official-images/commit/c09a8aa5b30f95aa717b62651bd24604977e164e)
- [9175b8a1d1 - Send twig-i18n-extension to unstable](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/9175b8a1d1a4eabd62a0fe10889332039fb9dd94)
- [bb797d58f1 - d/ch](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/bb797d58f17a0a51c931444bdf28ca773e97bd04)
- [59eeebdc4e - Add a simple test and require a lower PHPUnit version for the test](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/59eeebdc4eb817910cb48f9b21fba39ff3261878)
- [857d265c66 - fix d/install syntax](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/857d265c664f7f02815703bf53f2ab51eadabf7b)
- [c2185d106b - Require php-twig 3.17](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/c2185d106b4e22334694f48795c0912f02e21a80)
- [9353aca868 - d/ch](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/9353aca86821ff2bba1f54dc2b5ac37f8064fda7)
- [e08e8e2f46 - Add a patch to fix testing deprecations](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/e08e8e2f46749a42f4f22c3705bbb97780f3d8f2)
- [63397c3ba9 - d/ch](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/63397c3ba950ed94bf940b3f6761b5570b9542ca)
- [02bbcc81aa - Update upstream source from tag 'upstream/5.0.0'](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/02bbcc81aa8930a6bb0f7acf45cb9dfc4502fe08)
- [47afe5bf61 - New upstream version 5.0.0](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/47afe5bf61476bff3ac8c0d66295f7be1f3c1dd5)

## Third week (3)

I merged a lot of pull-requests on the main repository: INSERT IGNORE for non table imports, the query shown when a search returns no results, the query generator support for BETWEEN, the notification colors and the SQL editor height. On the Docker image I worked on the SSL test and on the permissions of the files, and I sent phpmyadmin and sql-parser 5.10.3 to Debian unstable.

- [38bbaff2af - Translated using Weblate (Finnish)](https://github.com/phpmyadmin/phpmyadmin/commit/38bbaff2af3009de6d94d5fa19858f200d8b643a)
- [0893fc9dc1 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/0893fc9dc104a56a2e782666e171d48ba36991db)
- [699760ca0a - Fixup the path for readthedocs config](https://github.com/phpmyadmin/phpmyadmin/commit/699760ca0ab3c6d41688673f5ae4fa30e9fcd6a8)
- [99f38f5d03 - Add a CHANGELOG entry for #19000](https://github.com/phpmyadmin/phpmyadmin/commit/99f38f5d03186c925281108073129a759349cb0f)
- [2d9c77333b - Fix #19000 - Disable autocomplete for the table/db name inputs](https://github.com/phpmyadmin/phpmyadmin/commit/2d9c77333b304136dc1cc414516e4e6c56a6eca8)
- [c4a13ff129 - Document more shortcuts](https://github.com/phpmyadmin/phpmyadmin/commit/c4a13ff129bceb21e19357633c9c0da9d2b1145c)
- [a6fbd19590 - Use Python 3.11 instead of 3.7](https://github.com/phpmyadmin/phpmyadmin/commit/a6fbd19590b0ca065ddf9a7f5a3df5082baf542b)
- [691afd31ab - Add a CHANGELOG entry for #19525](https://github.com/phpmyadmin/phpmyadmin/commit/691afd31abeb215ace53c5eae9d84bb1d61a6c9d)
- [d8f082cc06 - Merge #19525 - Add support for INSERT IGNORE into for non table imports](https://github.com/phpmyadmin/phpmyadmin/commit/d8f082cc06141cab2dab60cb0daaef75131f7aff)
- [b69d023e74 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/b69d023e7491c8f3f4d990f5f9338452e8188180)
- [95b4be7d61 - Add a CHANGELOG entry for #16936](https://github.com/phpmyadmin/phpmyadmin/commit/95b4be7d611e14e6651643e4c0ae21e49132e8a7)
- [ded87e3301 - Fix #16936 - Do not specify the collation when creating tables for imported data](https://github.com/phpmyadmin/phpmyadmin/commit/ded87e3301fac2294df9886c929f7d9c7fc296d8)
- [f44bb362e4 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/f44bb362e4fe7e9eefadef74000e6ab6332a27b9)
- [4d51855d67 - Fix #18129 - PHP warning while editting a view definition](https://github.com/phpmyadmin/phpmyadmin/commit/4d51855d677c29bcc5d3a1194e255ce5e864edfd)
- [efe22817d0 - Update the phpstan baseline](https://github.com/phpmyadmin/phpmyadmin/commit/efe22817d0eeeb734d64f4744b3c4b8d494d8e4f)
- [7274abc34e - Merge #19465 - documentation(setup.rst): Add all new ENV for the Docker image (mTLS) and added all missing ones](https://github.com/phpmyadmin/phpmyadmin/commit/7274abc34e72b847d1490533a9e979efeabdd855)
- [7656ed0f36 - Use Python 3.11 instead of 3.7](https://github.com/phpmyadmin/phpmyadmin/commit/7656ed0f3643bcc781a8660931968e264448669a)
- [adff627875 - Add support for INSERT IGNORE into for non table imports](https://github.com/phpmyadmin/phpmyadmin/commit/adff627875e4d2b3c249594c3392d9b1330381b3)
- [aad646a252 - Add a ChangeLog entry for #17480](https://github.com/phpmyadmin/phpmyadmin/commit/aad646a252d6d2c9e9476068e8b440530568b0ef)
- [fe25c103d7 - Merge #19514 - Fix badge text color](https://github.com/phpmyadmin/phpmyadmin/commit/fe25c103d7cf78895fdb98cdfa9f404ca5e9c4ee)
- [580a7b1adf - Add a CHANGELOG entry for #14542](https://github.com/phpmyadmin/phpmyadmin/commit/580a7b1adf1c12d42226ace7777499381a174695)
- [227a2f68c6 - Merge #19498 - Fix #14542 - Show query if no results found](https://github.com/phpmyadmin/phpmyadmin/commit/227a2f68c6c9652e62fc9b6026c01e7dd4ceddf2)
- [3274eca15b - Add a ChangeLog entry for 1bf55c4d6](https://github.com/phpmyadmin/phpmyadmin/commit/3274eca15b0c95a8e3db7a8adf576b6f0b904641)
- [1bf55c4d6a - Merge #19352 - [Query Generator] support for `BETWEEN` and `NOT BETWEEN`](https://github.com/phpmyadmin/phpmyadmin/commit/1bf55c4d6a9501fef5c7b8901835bd746dd7f134)
- [ab0696f5e2 - Add a CHANGELOG entry for #19242](https://github.com/phpmyadmin/phpmyadmin/commit/ab0696f5e2b6672d65761770d8666e546dc946dd)
- [aa73769b31 - Merge #19408 - Fix #19242 - Removing the popup with auto-saved query message](https://github.com/phpmyadmin/phpmyadmin/commit/aa73769b31347cd0da724faa8207df0851107896)
- [affacf901e - Add a CHANGELOG entry for #18852](https://github.com/phpmyadmin/phpmyadmin/commit/affacf901e8dd7a908d054f608a0fc66cac83949)
- [7633dc48bf - Merge #19510 - Fix #18852 - Fix notification color scheme](https://github.com/phpmyadmin/phpmyadmin/commit/7633dc48bfd46d6736db65c8c74663a70ff09d67)
- [7fc1457ddf - Add ChangeLog entries for the last pull-requests](https://github.com/phpmyadmin/phpmyadmin/commit/7fc1457ddf4d07677d603a88fd71e3d312c73cbd)
- [da7138bc7a - Merge #19512 - Fix sql editor height on multi-table query](https://github.com/phpmyadmin/phpmyadmin/commit/da7138bc7aedb1bef8c291878dfdd65737e95a7b)
- [5043535036 - Import some Docker Hub formatting for easier merges](https://github.com/phpmyadmin/docker/commit/5043535036cd122dbce41184b2794a9ac2ff0235)
- [22f2d4a373 - Generate test keys for the SSL connection (#441)](https://github.com/phpmyadmin/docker/commit/22f2d4a3736decc2807dc3e0b251294e470176cd)
- [ab37078704 - Test the SSL connection (#441)](https://github.com/phpmyadmin/docker/commit/ab3707870430cc1842f78718e35225ba753feae0)
- [9fca4e0022 - Fix the Makefile run-tests target](https://github.com/phpmyadmin/docker/commit/9fca4e0022584debc014fb6625bc5e169dda66d8)
- [240506356c - Skip SSL for tests](https://github.com/phpmyadmin/docker/commit/240506356cb6a005a5fb893d92b955ca0f2b388f)
- [04de4ca2ba - Use a sticky bit for tmp/](https://github.com/phpmyadmin/docker/commit/04de4ca2ba06220049eac53b15793fb9b481994a)
- [ea2d5dc8fd - Update testing to 3.21](https://github.com/phpmyadmin/docker/commit/ea2d5dc8fd5a8588ba7f00f6cececd83de0b24cb)
- [bb0fd043c3 - Make all files read only, except tmp](https://github.com/phpmyadmin/docker/commit/bb0fd043c341a4aaf76f1c04a9869c47283055f0)
- [812039a7de - Make containers contents run on www-data](https://github.com/phpmyadmin/docker/commit/812039a7de6a3dc8025ac8845c3e547bdbfcd74d)
- [577a94fda6 - Remove PMA_SSL and PMA_SSLS from _FILE support (#441)](https://github.com/phpmyadmin/docker/commit/577a94fda60fbd1bb13247531c1783db9c51a64b)
- [ab0d1735ae - Merge #606 - Simplify WithStatement::build()](https://github.com/phpmyadmin/sql-parser/commit/ab0d1735ae73cdc14c01b2299159a6c66f83e705)
- [d46ae489ce - Merge branch '5.11.x'](https://github.com/phpmyadmin/sql-parser/commit/d46ae489ceb8ea2c39f79238ac1476fbaee7cb45)
- [495d39abb8 - Merge branch '5.10.x' into 5.11.x](https://github.com/phpmyadmin/sql-parser/commit/495d39abb8a8b7e728bf4f9cef1e3417b90d628d)
- [f064c54add - Fix the year of 5.10.3](https://github.com/phpmyadmin/sql-parser/commit/f064c54add3ed3092669975f98232f158bd259d5)
- [8db6524338 - Merge branch '5.11.x'](https://github.com/phpmyadmin/sql-parser/commit/8db6524338b1ec81439fb1a74e794a2f02f8e06a)
- [21421410e1 - Merge branch '5.10.x' into 5.11.x](https://github.com/phpmyadmin/sql-parser/commit/21421410e1f4d380f27879cfa204354046607055)
- [439b54db0a - Add a ChangeLog entry for #605](https://github.com/phpmyadmin/sql-parser/commit/439b54db0a9c4b392cb820962596c7c04f52c84c)
- [44262050c0 - Fix #605 - Add "RECURSIVE" on build() for "WITH RECURSIVE" on the WithStatement class](https://github.com/phpmyadmin/sql-parser/commit/44262050c03e74f65d3a21079fef5491c89d4628)
- [9154b40d26 - Update phpMyAdmin with new ENVs and settings (#2527)](https://github.com/docker-library/docs/commit/9154b40d2603d9776b07f7b0d2a70806d1fbebea)
- [b76f6a8457 - Update phpMyAdmin to the latest commit](https://github.com/docker-library/official-images/commit/b76f6a84579c6bd4701859993269f730ffe67c18)
- [d89e9841f1 - Send 4:5.2.2-really5.2.2+20250114+dfsg-1 to unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d89e9841f1ce67e492f6125c4f6b62b897d84eb5)
- [da6ab16545 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/da6ab1654514160d522e89b5f0c5353b4af27465)
- [d46522030c - Add a missing PHP 8 group annotation](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d46522030cabd3d32ed25511fad720ba1a72e86b)
- [25a0373b0b - Fix exclude group for 32 bit incompatible](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/25a0373b0bba7e092a53540f8346cd0b6f5eb594)
- [bf4fd2f9c9 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/bf4fd2f9c9a0598a60f50307103e105274f887b5)
- [62d61493fc - Refresh patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/62d61493fcb55c4dcc9b9eeec9b6aa4ae9595eb1)
- [8e1bdd1847 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/8e1bdd18479348dc444bf89963e8894dd4858d7c)
- [cd7d1485a3 - Update upstream source from tag 'upstream/5.2.2-really5.2.2+20250114+dfsg'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/cd7d1485a388630d318eb82fd52cc001d8984a20)
- [82f414404a - New upstream version 5.2.2-really5.2.2+20250114+dfsg](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/82f414404a92f17cae98d8afe99b8329f6e4f5a8)
- [6b379710c2 - d/ch](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/6b379710c2bcfb7ff23abba3b38079754dcb2e85)
- [f5a5c6ff77 - Update upstream source from tag 'upstream/5.10.3'](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/f5a5c6ff7729f4c53d8830877fb1088708bc10b9)
- [a71ec4aa95 - New upstream version 5.10.3](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/a71ec4aa954bd016ed3660bf9e7719aba841c0fb)

## Fourth week (4)

On the Docker image I added MariaDB 11.4 and MySQL 8.4 to the tests, and on localized_docs I fixed the po files that were not updating anymore. I also sent phpmyadmin 5.2.2 to unstable, and it got updated in the official images and in Alpine.

- [45666372d8 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/45666372d83b37455a224c49ca3894088bcd14ca)
- [3fdccd9bab - Improve the documentation to avoid translation mistakes on values that have no translation](https://github.com/phpmyadmin/phpmyadmin/commit/3fdccd9babba3618de7f42a22f40465cac32242d)
- [1d03488a4d - Bump docs copyright to 2025](https://github.com/phpmyadmin/phpmyadmin/commit/1d03488a4d550a142b4a8710a7af10c927e15609)
- [6515c2bd9c - Add MariaDB 11.4 to testing and MySQL 8.4, and exclude MySQL from the SSL test](https://github.com/phpmyadmin/docker/commit/6515c2bd9c774f4d2065f21b83b6c023c4577a9f)
- [7d51494097 - Remove not needed audit plugin for SSL test](https://github.com/phpmyadmin/docker/commit/7d514940975e5357dbbb96d52e7066454deda646)
- [188a0e3542 - Do not remove manually marked dependencies of php extensions](https://github.com/phpmyadmin/docker/commit/188a0e35423fb615db47e6a0a8209fe7288eb2ed)
- [5d89c078f2 - Edit the CHANGELOG for 5.2.2, even if all the changes got to 5.2.1 updates](https://github.com/phpmyadmin/docker/commit/5d89c078f2af0561f627560e980736c6e280c196)
- [7cbc33a2f6 - Merge #187 - Fix badge](https://github.com/phpmyadmin/website/commit/7cbc33a2f600e97f2aeecd293258a2399cd13a70)
- [e2ac165c76 - Translated using Weblate (Russian)](https://github.com/phpmyadmin/localized_docs/commit/e2ac165c76b8f6afb99ba9d3c37dcff791ab031e)
- [ce088f357e - Translated using Weblate (Ukrainian)](https://github.com/phpmyadmin/localized_docs/commit/ce088f357e901749d1c84558073cd32b867a88af)
- [1b87f6908c - Translated using Weblate (German)](https://github.com/phpmyadmin/localized_docs/commit/1b87f6908c2e9c2bed73d9a1909e5c5bf8f9f96e)
- [8e0c403a81 - Translated using Weblate (Estonian)](https://github.com/phpmyadmin/localized_docs/commit/8e0c403a81032b9304c32a645c4b6294714ae7fe)
- [de20c1f8be - Translated using Weblate (Spanish)](https://github.com/phpmyadmin/localized_docs/commit/de20c1f8be8ee4011aaa3534299323d8878f778e)
- [11319aeb16 - Translated using Weblate (Arabic)](https://github.com/phpmyadmin/localized_docs/commit/11319aeb16e1be78c261496ae997c56231fec96b)
- [604b9f9a46 - Translated using Weblate (Chinese (Traditional Han script))](https://github.com/phpmyadmin/localized_docs/commit/604b9f9a462125c1f7f5def6cfcb0e1c3ce0f0c9)
- [30bd2358b1 - Translated using Weblate (Indonesian)](https://github.com/phpmyadmin/localized_docs/commit/30bd2358b12beb9ba11536dc9ef0cef0965e1955)
- [70ba3f3d1f - Translated using Weblate (German)](https://github.com/phpmyadmin/localized_docs/commit/70ba3f3d1f68a2d5f84a1d6bc68463288ed10b5f)
- [1b646f55b2 - Translated using Weblate (Spanish)](https://github.com/phpmyadmin/localized_docs/commit/1b646f55b255b6968bc41b32343df0c6f3eaa051)
- [ba8a499997 - Translated using Weblate (Japanese)](https://github.com/phpmyadmin/localized_docs/commit/ba8a4999972077b54af557e70ee03723aa88ef0d)
- [bb95752a88 - Translated using Weblate (Spanish)](https://github.com/phpmyadmin/localized_docs/commit/bb95752a88ad4fa863624a28f69946e3097e8ac9)
- [fcfc7d41b1 - Translated using Weblate (French)](https://github.com/phpmyadmin/localized_docs/commit/fcfc7d41b17dbc536e5ad4ed0a630731b6478985)
- [5f3237cbd9 - Fix po not updating since 4 years, add resources/ to the rule](https://github.com/phpmyadmin/localized_docs/commit/5f3237cbd9d334de2b677cbe0bea8dc37cee520c)
- [af6e1e4187 - Translated using Weblate (French)](https://github.com/phpmyadmin/localized_docs/commit/af6e1e4187ddc0b6f2fc4046ca313918377d51f6)
- [98051d3376 - Translated using Weblate (Dutch)](https://github.com/phpmyadmin/localized_docs/commit/98051d33761deac407f4096ea395f8fe0222be0a)
- [6365fb7400 - Translated using Weblate (Japanese)](https://github.com/phpmyadmin/localized_docs/commit/6365fb74008613301a3701755c457acd6970ba95)
- [d427010470 - Translated using Weblate (Turkish)](https://github.com/phpmyadmin/localized_docs/commit/d427010470c99a17b5a06bcc06f984cd8f9e8413)
- [70355b0914 - Translated using Weblate (Japanese)](https://github.com/phpmyadmin/localized_docs/commit/70355b0914a8a84aef1531f3171eebc8417df9d4)
- [0b224cdfda - Translated using Weblate (Polish)](https://github.com/phpmyadmin/localized_docs/commit/0b224cdfdaac0312e92afeacb8de9ea27c101314)
- [6269fb2332 - Translated using Weblate (French)](https://github.com/phpmyadmin/localized_docs/commit/6269fb233218616ac08a6ac337ead5d32e7c2c17)
- [6791e68635 - Translated using Weblate (Polish)](https://github.com/phpmyadmin/localized_docs/commit/6791e68635c2ad7503f1120c2db551803dc5ce64)
- [378f793942 - Merge #34 - Fix badge](https://github.com/phpmyadmin/localized_docs/commit/378f7939429248784b6473ccc5fefe6ba0a5b450)
- [64e5e76c88 - Drop stale.yml and update actions/checkout to v4](https://github.com/phpmyadmin/localized_docs/commit/64e5e76c8828be9698e083aa142cc5e993105ef2)
- [a5faf4a7e7 - Fix the phpMyAdmin Debian image](https://github.com/docker-library/official-images/commit/a5faf4a7e7a76469897357730026514354450e4b)
- [a51a77359f - Update phpMyAdmin to 5.2.2](https://github.com/docker-library/official-images/commit/a51a77359f93070e98d1768db98ec64b458369ea)
- [45d3d68000 - network/phpmyadmin: Updated for version 5.2.2.](https://github.com/SlackBuildsOrg/slackbuilds/commit/45d3d68000d4883f67595795f8c62c6504efdb06)
- [33867977cc - Fix my fix for DEP-8](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/33867977cc760a15188e4c48b7b69efd4c5849e6)
- [bb2446d748 - Fix tests skipping for DEP-8 tests](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/bb2446d7485ef71944cbeecae09661b71088c345)
- [599b935020 - Update upstream source from tag 'upstream/5.2.2-really5.2.2+20250121+dfsg'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/599b9350201be47517b00d3aa2a00589c3814328)
- [7758b60d13 - New upstream version 5.2.2-really5.2.2+20250121+dfsg](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/7758b60d13a42d3f5e4ae3fc57bc13003b391b05)
- [3fd7e5e42b - Send 4:5.2.2+dfsg-1 to unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/3fd7e5e42b735a5cb2e8ba21685c39b5fb71ad6a)
- [6f72aee000 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6f72aee000e523feba3708e98ab0fafddfd4e94d)
- [ae6e6141b0 - Refresh patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ae6e6141b033c21c54f29b676088d17e2dad93ea)
- [cd93406ddb - Merge branch 'upstream' into debian/latest](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/cd93406ddb7633330a9e75e51c27aeedf9788dbe)
- [367e9e97b4 - Edit repacksuffix](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/367e9e97b43351d627c1e655feab707510de9de2)
- [23a98da8e5 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/23a98da8e51d7b08346fcc42586612baf73a0206)
- [a638764ded - New upstream version 5.2.2+dfsg](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a638764ded97a9818929bd027c051ae1ab03ed8d)
- [c694d51ff3 - Send 5.10.3-1 to unstable](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/c694d51ff3b6befabbc6548111ca08a7c2501726)
- [db58e07493 - community/phpmyadmin: upgrade to 5.2.2](https://gitlab.alpinelinux.org/alpine/aports/-/commit/db58e0749376f567e2fdc300630b79419542f799)

## Fifth week (5)

phpMyAdmin 5.2.2 also got updated in the Termux packages.

- [b0e766096b - phpmyadmin: update to 5.2.2 (#23004)](https://github.com/termux/termux-packages/commit/b0e766096bfd3a80f9d87470ddae5ada7cec0709)

