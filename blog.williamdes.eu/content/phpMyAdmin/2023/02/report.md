+++
title = "Report for February 2023"
date = 2023-02-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for February 2023.

<!-- more -->

In February 2023 my focus was bug fixing on phpmyadmin and sql-parser, and the Debian package of 5.2.1.

## First week (5)

I merged [#420](https://github.com/phpmyadmin/phpmyadmin/pull/420) on sql-parser, a new unit test and a fix for ALTER EVENT RENAME TO using an expression. On the Debian package of phpmyadmin I installed the ChangeLog using dh_installchangelogs.

- [e1b21e1e87 - Update .out data](https://github.com/phpmyadmin/sql-parser/commit/e1b21e1e87d626787580bf1f1aacab7e1d67a269)
- [6d490cad92 - Add a CHANGELOG entry for #420](https://github.com/phpmyadmin/sql-parser/commit/6d490cad924f102d92ccb1b75990da9f8c06f96d)
- [8e48df31bf - Merge #420 - Provide new unit test + fix with ALTER EVENT RENAME TO using expression](https://github.com/phpmyadmin/sql-parser/commit/8e48df31bf24dfdaad987a28fa6a2635880d60b4)
- [59b1088719 - Install ChangeLog using dh_installchangelogs](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/59b1088719fc8683440df71eed7ba5a87f4b0fe1)

## Second week (6)

I merged [#17923](https://github.com/phpmyadmin/phpmyadmin/pull/17923) to allow opening the copy and edit row actions in a new tab ([#17766](https://github.com/phpmyadmin/phpmyadmin/issues/17766)), and [#17851](https://github.com/phpmyadmin/phpmyadmin/pull/17851) to re-build the query count management ([#17028](https://github.com/phpmyadmin/phpmyadmin/issues/17028) and [#17683](https://github.com/phpmyadmin/phpmyadmin/issues/17683)). On the website I officially declared support for PHP 8.1 and 8.2 on the 5.2 and 5.3 series, and on the Debian side I sent 4:5.2.1+dfsg-1 to unstable.

- [e48fec0abf - Add ChangeLog entries for #17028, #17683, #17766](https://github.com/phpmyadmin/phpmyadmin/commit/e48fec0abfd7121732bc8848fda15f9b54d7ae23)
- [9d92dafdcb - Merge #17923 - Fix #17766 - Allow to open in a new tab copy and edit row actions](https://github.com/phpmyadmin/phpmyadmin/commit/9d92dafdcbc1b32478ff5a0ca61d0b53775b263c)
- [2443570ce6 - Merge #17851 - Fix #17028, #17683 - Re build query count management](https://github.com/phpmyadmin/phpmyadmin/commit/2443570ce6fef9d68b6f582f53afaaacd9a7e01d)
- [84aee1b13b - Add TEST_PATH for out of source tests](https://github.com/phpmyadmin/phpmyadmin/commit/84aee1b13b7db73d85d8f42390bcdcc3f6abcd95)
- [87f1577039 - Officially support PHP 8.1 and 8.2 for 5.2 and 5.3 series](https://github.com/phpmyadmin/website/commit/87f1577039a7153feb8450a3252a27093cc566b0)
- [fac35a0551 - Send 4:5.2.1+dfsg-1 to unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/fac35a05512a59fceca7c7244dcabb9c581bc04c)
- [9fca48760a - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9fca48760ad19cecf3e01c760147402a66ce2909)
- [39ae3ede33 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/39ae3ede333d8dd8dc4e31951be1f41b98117624)
- [20d60bfe1a - Improve d/u/metadata, add CPE and Webservice](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/20d60bfe1a8e811bb31498a0c1f0ad40484e8c79)
- [2b365689d1 - Adjust lintian-overrides](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2b365689d17b9cb2fba5515916fd0d876b34d9ce)
- [3ac240d58e - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/3ac240d58eee834dbfd27128967324f73e3eae83)
- [8fafbcb808 - Add a patch for out of source test data](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/8fafbcb8088a01e6dc186b44df8034fc8b5ffdca)
- [6697e92b65 - Fixup typo](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6697e92b656ca101098fe5bd555a93d784094012)
- [6234df0cec - Adjust lintian overrides](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6234df0ceca688c5bdf0f563c4abd7d6d9911405)
- [2f0f427e5e - Update copyright span for jquery.validate](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2f0f427e5ee0bd82bcad9b3c76727db157a7ffe0)
- [ccbbb6ea0c - Add a patch to Skip part of RoutingTest::testGetDispatcher as it writes the tree](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ccbbb6ea0cf4a8b215b2578f6ed9d84786964f64)
- [c6caad5b6d - Update d/copyright and lintian overrides for two jquery libs](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c6caad5b6dcf72cf858d15d068ab2c037303c4a2)
- [4e60bf0a51 - Re build jquery.validate.min.js](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/4e60bf0a514e8a39b926e5a8f7d4d675e7f6da9e)
- [25ee824a74 - Re build jquery-migrate.min.js](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/25ee824a74f2346c842d2da8bf6ce90628087a9f)
- [e2ecba4fad - Fix phpunit group name to exclude](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e2ecba4fad5c260cd15c45353b7a0b25e495fef0)
- [1267d93f51 - Update patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/1267d93f511ac148a8be19e72a31aa80a9390d3f)
- [aa19a9f444 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/aa19a9f444b656219d876e31a960eaa773d746f1)
- [b7cdbc1275 - Update upstream source from tag 'upstream/5.2.1+dfsg'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b7cdbc1275f77bfc3d693e755d85d40211107d2c)
- [d901c6a06b - New upstream version 5.2.1+dfsg](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d901c6a06ba261be38bea24042cbbcef3ba21986)
- [0c34251941 - Move vendor symlink at test time and not build time](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/0c3425194173123e0740fe22221b0bd6ad193fe1)
- [6eb2e0a683 - Revert "Drop Build-Depends on php-phpmyadmin-motranslator"](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/6eb2e0a6831657673decb041c0d81dfc6c236679)

## Third week (7)

I worked on create-release.sh: the folder management, the kits building, the copy action and the snapshot version generation ([#18109](https://github.com/phpmyadmin/phpmyadmin/issues/18109)). I also added an autocomplete attribute to the password inputs used to change the password.

- [a2e2ef9501 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/a2e2ef9501167c771593c413c017875720d044c3)
- [45c4152c4a - Output the version of sphinx-build in create-release.sh](https://github.com/phpmyadmin/phpmyadmin/commit/45c4152c4acba3daaeaf3abe740b397c17a3db30)
- [3ca687a35c - Fix folder management and building kits in create-release.sh](https://github.com/phpmyadmin/phpmyadmin/commit/3ca687a35c7baad14cbb28c90854fa416e91c0d6)
- [de35195d3c - Improve testGetTempDir and testGetUploadTempDir tests](https://github.com/phpmyadmin/phpmyadmin/commit/de35195d3c3cbda9c00d816f4ead96e57803d5e3)
- [67e18b7354 - Fix copy action in create-release.sh](https://github.com/phpmyadmin/phpmyadmin/commit/67e18b73547f92c1172ad270bca322fa6716531b)
- [c914900c05 - Fix the snapshot version generation](https://github.com/phpmyadmin/phpmyadmin/commit/c914900c051ca5f6bbfab2197c195f2e15f7ec8c)
- [f503b10dc3 - Fix #18109 - release script for CI versions](https://github.com/phpmyadmin/phpmyadmin/commit/f503b10dc3ab2c8eb80dba990b3914e67ea726a4)
- [d525a722b1 - Add autocomplete attribute to password inputs to change password](https://github.com/phpmyadmin/phpmyadmin/commit/d525a722b1a01e1a2bcaf887a78a133d0d43c790)
- [88f6d787d0 - Update CHANGELOG.md](https://github.com/phpmyadmin/docker/commit/88f6d787d06c81de6a7cecdd59c1f788dd7c1217)

## Fourth week (8)

I fixed [#18112](https://github.com/phpmyadmin/phpmyadmin/issues/18112), the open base dir warning on the git version class, and [#16851](https://github.com/phpmyadmin/phpmyadmin/issues/16851), the default column order that had no effect since phpMyAdmin 4.2.0. On sql-parser I merged [#417](https://github.com/phpmyadmin/phpmyadmin/pull/417) for the GROUP BY WITH ROLLUP export, [#418](https://github.com/phpmyadmin/phpmyadmin/pull/418) for the ALTER EVENT with a DEFINER and [#422](https://github.com/phpmyadmin/phpmyadmin/pull/422) for the order of operations when parsing table names.

- [f3aa3639b3 - Remove chdir from GitTest after fixing #18112](https://github.com/phpmyadmin/phpmyadmin/commit/f3aa3639b3aeed364d000be5c2ca0699bcfb1a47)
- [d411e3de86 - Add a ChangeLog entry for #18112](https://github.com/phpmyadmin/phpmyadmin/commit/d411e3de8612a81239da461df39af772389530e3)
- [d9a6f82bc1 - Fix #18112 - open base dir warning on git version class](https://github.com/phpmyadmin/phpmyadmin/commit/d9a6f82bc1645610fa65969edac6768808d1252f)
- [b1e76dbc85 - Update sql-parser to phpmyadmin/sql-parser@d906b5906100a6a4bc3c180900b50cbf1ff8ae0a](https://github.com/phpmyadmin/phpmyadmin/commit/b1e76dbc8530f6c400fec914d8cf7f17f4a6cdae)
- [52199f787d - Translated using Weblate (Italian)](https://github.com/phpmyadmin/phpmyadmin/commit/52199f787df378ee8a1a44a0f76dde81a7b3ce18)
- [496bd0f3d0 - Remove non used code of explain button (Generator::generateRowQueryOutput)](https://github.com/phpmyadmin/phpmyadmin/commit/496bd0f3d0bbc2601d4dcc9aedb03694b50001a4)
- [24ac923632 - Fix Internal error in ./libraries/classes/Controllers/HomeController.php#314](https://github.com/phpmyadmin/phpmyadmin/commit/24ac923632e351e6d86949b391f3069030541d19)
- [06733a8733 - Translated using Weblate (Italian)](https://github.com/phpmyadmin/phpmyadmin/commit/06733a8733e284480c8819436451084a9482716a)
- [a174a41f5d - Add a ChangeLog entry for #16851](https://github.com/phpmyadmin/phpmyadmin/commit/a174a41f5d21c6b7da5f7df001b3a9b3e5388feb)
- [9743c82ba3 - Write tests for #16851](https://github.com/phpmyadmin/phpmyadmin/commit/9743c82ba303a81e1f431137ac57eb0b36072258)
- [7d4eafd188 - Fix #16851 - Default column order doesn't have have any effect (`$cfg['Order']`) since phpMyAdmin 4.2.0](https://github.com/phpmyadmin/phpmyadmin/commit/7d4eafd188030307dd8666ed32cf26510466d1bc)
- [f3bd71d937 - Fix a coding-standard issue](https://github.com/phpmyadmin/phpmyadmin/commit/f3bd71d937ba71909fed7b0e4ca1c4bc5c6249d0)
- [4ce69f3a3d - Nicely exit in case of an early PHP type crash](https://github.com/phpmyadmin/phpmyadmin/commit/4ce69f3a3def418673fa0ebffb24953a4d00c300)
- [941241342f - Update baselines](https://github.com/phpmyadmin/sql-parser/commit/941241342f1d433d10df135ee780d4b45b72b59c)
- [d906b59061 - Update translations](https://github.com/phpmyadmin/sql-parser/commit/d906b5906100a6a4bc3c180900b50cbf1ff8ae0a)
- [f485888331 - Merge #416 - Fix error message "Lock" to "LOCK"](https://github.com/phpmyadmin/sql-parser/commit/f485888331cb5f46b06fc466f499057d0cf9fcda)
- [573f79435e - Update .out files](https://github.com/phpmyadmin/sql-parser/commit/573f79435e27697cb32eb75fd17bb40b436e2863)
- [916e5df992 - Add a CHANGELOG entry for #415](https://github.com/phpmyadmin/sql-parser/commit/916e5df9921de151b53a2b0315cd081ec4d0220d)
- [0a3df6035b - Merge #417 - Fix #415 - GROUP BY modifier WITH ROLLUP is treated as a syntax error and prevents export of SQL query results](https://github.com/phpmyadmin/sql-parser/commit/0a3df6035ba138057b793e16c5b50def85fcae73)
- [b17b2162b5 - Add a CHANGELOG entry for #418](https://github.com/phpmyadmin/sql-parser/commit/b17b2162b5d08b27414985ccc301e68aa40942b0)
- [3f3debdade - Merge #421 - Fix #418 - ALTER EVENT statement with DEFINER=user modifier fails to be parsed](https://github.com/phpmyadmin/sql-parser/commit/3f3debdade85586035bf8e74fecda1a8f160f0f0)
- [4d09f0e7eb - Add a CHANGELOG entry for #422](https://github.com/phpmyadmin/sql-parser/commit/4d09f0e7ebbadf09fab0e27b295dba6cf316a10a)
- [f022373ccc - Merge #422 - Incorrect order of operations to parse table/db called ``](https://github.com/phpmyadmin/sql-parser/commit/f022373ccc22c417c50f3349046be5df8d98a41c)
- [19ce4bdda0 - Add a test for #422](https://github.com/phpmyadmin/sql-parser/commit/19ce4bdda01a4aafa46a40a2b103fecdc6862f6e)
- [dddb7ae37c - Fix CHANGELOG entry to use issue number (#419)](https://github.com/phpmyadmin/sql-parser/commit/dddb7ae37c58720dcc830ae86b05e009dffe30d9)

## Fifth week (9)

A week on the documentation: I fixed the .rst doc links, documented back some query window and display configuration options, and fixed the "Original length undefined" message on binary hex columns.

- [b8849f5690 - Fix .rst doc links](https://github.com/phpmyadmin/phpmyadmin/commit/b8849f56908549cea9f3c28c01019f2599da80ad)
- [f57012dcff - Fix weird website on .info, they seem to now use .com at dongleauth](https://github.com/phpmyadmin/phpmyadmin/commit/f57012dcff4aca3a0f3284e108c5e2c37bc38183)
- [ba059251fa - Document back `$cfg['EditInWindow']`, `$cfg['QueryWindowWidth']`, `$cfg['QueryWindowHeight']`, `$cfg['QueryWindowDefTab']`](https://github.com/phpmyadmin/phpmyadmin/commit/ba059251fabe84cdbe2713dacd509c4a9afe3ed2)
- [b3c35c2045 - Do not show "Original length undefined" on binary hex columns](https://github.com/phpmyadmin/phpmyadmin/commit/b3c35c2045159829d64a29cc8dc352d928e5988f)
- [86e6d1270b - Add back documentation for DisplayBinaryAsHex](https://github.com/phpmyadmin/phpmyadmin/commit/86e6d1270b0da81488a5a5f03c2477f120f289f2)
- [af84b002ac - Add documentation for version added of config `$cfg['LintEnable']`](https://github.com/phpmyadmin/phpmyadmin/commit/af84b002acc072751792c20a264164fd2722fd3a)

