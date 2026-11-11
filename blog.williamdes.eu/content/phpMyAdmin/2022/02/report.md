+++
title = "Report for February 2022"
date = 2022-02-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for February 2022.

<!-- more -->

In February 2022 my focus was bug fixing and the Debian package of 5.1.3.

## First week (5)

I fixed the ODS import issues [#17298](https://github.com/phpmyadmin/phpmyadmin/issues/17298) and [#17344](https://github.com/phpmyadmin/phpmyadmin/issues/17344), and the "First day of calendar" setting that had no effect. I also fixed the PHP type error in Results.php ([#17315](https://github.com/phpmyadmin/phpmyadmin/issues/17315)) and the MariaDB case about disabled_storage_engines ([#17331](https://github.com/phpmyadmin/phpmyadmin/issues/17331)).

- [a7b222db8a - Merge branch 'origin/QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/a7b222db8a88a0bc017ad85d41c831e484292315)
- [65c9f49c1e - Merge branch 'QA_5_1' into QA_5_2](https://github.com/phpmyadmin/phpmyadmin/commit/65c9f49c1e994a7465207636da11485cbc853b19)
- [f9528f01fa - Add a ChangeLog entry for #17239](https://github.com/phpmyadmin/phpmyadmin/commit/f9528f01fa372ac9bb75d5c3adb1dbca877fdb70)
- [03bb85f05e - Add ChangeLog entries for #17298 and #17344](https://github.com/phpmyadmin/phpmyadmin/commit/03bb85f05eaa56e727b23994a207fdfd8fd60061)
- [a944c04530 - Ref #17298, #17344 - update the phpstan and psalm baselines](https://github.com/phpmyadmin/phpmyadmin/commit/a944c045308eaa75838f5cfe896f65843a0d1666)
- [4e68f548f9 - Ref #17298, #17344 - fix ODS import tests](https://github.com/phpmyadmin/phpmyadmin/commit/4e68f548f91027a3f141bbfd07f4279bf1962232)
- [cba530070f - Fix #17298 - Import of email-addresses from ods results in empty contents](https://github.com/phpmyadmin/phpmyadmin/commit/cba530070f7d81521e7ec34c93ee9e3aeb4ee172)
- [838ac24897 - Fix #17344 - type error with values that are not strings in ODS sheets](https://github.com/phpmyadmin/phpmyadmin/commit/838ac2489764e7e82ce9b31afb06c9897999f60a)
- [82ed483c29 - Ref #17298, #17344 - Update the test data to include more cases](https://github.com/phpmyadmin/phpmyadmin/commit/82ed483c2945fc4d9d73b3dbb56ec73ba2eeac89)
- [fa546b120c - Ref #17298 - pretty format the test file before changing it](https://github.com/phpmyadmin/phpmyadmin/commit/fa546b120c8f33ff264a02a17b98a105d2f680a4)
- [fbe257db4f - Ref #17342 - Mark sql format as non processing on request error](https://github.com/phpmyadmin/phpmyadmin/commit/fbe257db4fffbb56a0f2c66c9e853186b8405f92)
- [d0bdc0d0cf - Ref #17239 - remove the bug from the psalm and phpstan baselines](https://github.com/phpmyadmin/phpmyadmin/commit/d0bdc0d0cfca8d85ad4548b7d11601e312b1b035)
- [16d53e6106 - Add ChangeLog entries for #17239](https://github.com/phpmyadmin/phpmyadmin/commit/16d53e6106a60cc765e4004feafe74a7ad8d004b)
- [eeefce018a - Add ChangeLog entries for #17288](https://github.com/phpmyadmin/phpmyadmin/commit/eeefce018a460bc4155cd3ed6152f5fa4fea7313)
- [c5dba46ca4 - fix a coding standard unsolvable case](https://github.com/phpmyadmin/phpmyadmin/commit/c5dba46ca4ba6d373da88284b87a31b203bdf9af)
- [29ff729981 - Fix #17288 - "First day of calendar" has no effect](https://github.com/phpmyadmin/phpmyadmin/commit/29ff729981fa074f06b3df87dd0e0bba4001d64f)
- [1262c30084 - Ref #17288 - fix importing settings that are saved in the browser](https://github.com/phpmyadmin/phpmyadmin/commit/1262c3008427a9ecd67ab452fb220957705b7843)
- [68b4e19f34 - Ref #17287 - Update the bug report template](https://github.com/phpmyadmin/phpmyadmin/commit/68b4e19f34256c3691d24d28e2c6b918f9956ca3)
- [db2f6e636d - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/db2f6e636d061904a360d45b4aab015c6680992a)
- [98187ba3a7 - Merge weblate 5.2 into QA_5_2](https://github.com/phpmyadmin/phpmyadmin/commit/98187ba3a70a18d45192c256cedac5811fd0377d)
- [cc81008317 - Merge branch 'QA_5_1' into QA_5_2](https://github.com/phpmyadmin/phpmyadmin/commit/cc81008317250b3edda44b7dbe32739dc3c92279)
- [c0668f94aa - Ref #17315 - Update the psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/c0668f94aa84816f02f3f401c7b390f9c6881608)
- [4bea65e29a - Merge branch 'QA_5_1' into QA_5_2](https://github.com/phpmyadmin/phpmyadmin/commit/4bea65e29aba184bacb15bceed48f6ec0b94df18)
- [bc32e25cff - Add ChangeLog entries for #17331 and #17315](https://github.com/phpmyadmin/phpmyadmin/commit/bc32e25cff3fd729338431ed697fae9a5380c696)
- [3bd3ee074c - Fix #17315 - Unsupported operand types in Results.php](https://github.com/phpmyadmin/phpmyadmin/commit/3bd3ee074c9c1af8ba3b8c20880f20b7875ac97c)
- [8504b67ee0 - Upgrade phpstan and psalm](https://github.com/phpmyadmin/phpmyadmin/commit/8504b67ee0810d24995c62202657e22e2a62bb9f)
- [fdf5fb6271 - Fix #17331 - MariaDB has no support for "disabled_storage_engines"](https://github.com/phpmyadmin/phpmyadmin/commit/fdf5fb62712e749115db3d09b0dda99860f4a7f0)

## Second week (6)

I fixed [#17287](https://github.com/phpmyadmin/phpmyadmin/issues/17287), a PHP type error when sorting the database list, and added a test for it. I improved the documentation, including an example on how to connect to an Amazon RDS Aurora MySQL with SSL. On the Debian side I marked 4:5.1.3+dfsg1-1 for unstable.

- [ac8a8311d3 - Document back an old configuration for hardware auth (feebee/swekey) that was removed](https://github.com/phpmyadmin/phpmyadmin/commit/ac8a8311d31884185d4f1168e597e3e818cd6f79)
- [4a3c9f3891 - Add a ChangeLog entry for #17287](https://github.com/phpmyadmin/phpmyadmin/commit/4a3c9f3891a7dee6957c1ae2be05c1fe0447a6d0)
- [c26c153a11 - Improve DbiDummy::addResult phpdoc](https://github.com/phpmyadmin/phpmyadmin/commit/c26c153a11e12207c5fe1ab85fedbd9eb98c7c63)
- [895b089e96 - Ref #17287 - Add a test for getDatabasesFull and data sorting](https://github.com/phpmyadmin/phpmyadmin/commit/895b089e9645ef3f8bffe7bc461ddc65376bd330)
- [0c890adb60 - Fix #17287 - Sorting Database List on "Data" Column creates a PHP type error](https://github.com/phpmyadmin/phpmyadmin/commit/0c890adb608458a096a11020d12472d8ed7b4613)
- [a97d6852e2 - Improve config.rst documentation blocks](https://github.com/phpmyadmin/phpmyadmin/commit/a97d6852e2e1264ab076ec626bee7a4920cca953)
- [25004bb7d0 - Add an example on how to connect to an Amazon RDS Aurora MySQL with SSL](https://github.com/phpmyadmin/phpmyadmin/commit/25004bb7d0097c2ccefa2492d9ac0f32ab9f5b9c)
- [4027810799 - Mark 4:5.1.3+dfsg1-1 for unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/4027810799282c4babd5c1a372fe65915623c419)
- [439ce9f2cb - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/439ce9f2cbe395bf29fba772adef55d883106849)
- [13cc1b79b7 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/13cc1b79b724757995e16a9b564afb3ec8c7460e)
- [32700f62f3 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/32700f62f32db6bcdba286456feaa4d149dc0cc5)
- [4dd9b16a9a - Revert "Do not allow-stderr on d/tests"](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/4dd9b16a9a2a9672f4194e9708ff7e0f802b340f)
- [a7789c650f - Drop deprecated config option `$cfg['Servers'][$i]['extension']` from config.inc.php](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a7789c650f32a8d971f2b5fbc9a4f91f2a5cf64e)
- [aa4640331d - Drop deprecated config option `$cfg['Servers'][$i]['auth_swekey_config']` from config.inc.php](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/aa4640331d6a35257f494e709e2bb4ed8df17433)
- [474e34d40a - Improve check_file_access function from config.inc.php](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/474e34d40ac5ad8b8443ef20ee0f02ddc55dd9ac)
- [e7c0e07181 - Adjust d/lintian-overrides](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e7c0e07181a92e3d9e78f601f08a296313546690)
- [911af356e7 - Mark s390x as non 32 bit compatible even if it is 32 bit compatible but not from a test suite point of view (shapefile tests)](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/911af356e7cea2ca0e733e795a9cc9570023ef84)
- [d3f9e3e394 - Remove non needed depends on Symfony/Polyfill/Mbstring for Debian](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d3f9e3e394d8666f5be9790444f92d0e06d2407c)
- [5d0200dd60 - Fix d/control syntax](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/5d0200dd607d7d65c4749b6b906c614f052aa84d)
- [4ab2b0315a - Adjust d/lintian-overrides](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/4ab2b0315a041beff2e9deaf270568c73a23c371)
- [3af81f94b9 - Update the main autoload template by using phpabtpl and fixing the package names manually](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/3af81f94b93d0bf17258aaada185aea47dea6903)
- [cb53ae2716 - Use dh-sequence-{phpcomposer,sphinxdoc} packages](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/cb53ae27162dd9d82170770f4a08bf317575a3db)
- [d1ed870268 - Do not allow-stderr on d/tests](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d1ed870268b0aa2acc8a3f4dc9f5cb07ce3f0923)
- [03225e2345 - Update d/copyright](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/03225e2345ac9444aeee3aff7d93b9d06227ae55)
- [6659c4018c - Update d/lintian-overrides](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6659c4018c26cc3b439bcdaeaa935eac5cd6526c)
- [ac486d190f - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ac486d190f01891700e04662c6fc766a1f79e192)
- [d9ba710488 - Refresh d/patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d9ba710488a57a3735d1630f7b4a0cb79000f014)
- [72b7bf6021 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/72b7bf6021eb54cd045de67b128e49770519d17d)
- [90c60f9d00 - Update upstream source from tag 'upstream/5.1.3+dfsg1'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/90c60f9d001cfcd23d16f9572ec4860ee48eaad4)
- [80fb04dd3e - New upstream version 5.1.3+dfsg1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/80fb04dd3e48cb35d03bd72e519a5f43fd894942)

## Third week (7)

A quiet week, only French translation updates on phpmyadmin, sql-parser and localized_docs.

- [441e905636 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/441e905636f997f0ee7ed347966de84344da720c)
- [fc81c86a8e - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/fc81c86a8e2cf7351c9dc473f148859c3eda1cac)
- [94652f2b54 - Translated using Weblate (French)](https://github.com/phpmyadmin/sql-parser/commit/94652f2b5478ae154673926018e422f58e4dab17)
- [c4e76301f6 - Translated using Weblate (French)](https://github.com/phpmyadmin/sql-parser/commit/c4e76301f606fcb503bd9b498fd8b03b8049ea72)
- [5b7e50a95d - Translated using Weblate (French)](https://github.com/phpmyadmin/localized_docs/commit/5b7e50a95d1980cf11fb283c1141dce456fd63bb)

## Fourth week (8)

On motranslator I merged #41 to add support for Symfony 6, and improved the test matrix to mark PHP 8.1 as a normal tested version. I also worked on Loader::getInstance.

- [7eacfca78c - Improve the test matrix and mark 8.1 as a normal tested version](https://github.com/phpmyadmin/motranslator/commit/7eacfca78c46beafcf342c363ea1e35222e9e83a)
- [580131215c - Add a link to the CVE.org website on the README](https://github.com/phpmyadmin/motranslator/commit/580131215c19b531b23ad28501392c59b9344f6d)
- [a7624fb9f9 - Improve Loader::getInstance](https://github.com/phpmyadmin/motranslator/commit/a7624fb9f93cd16a7214b75c57a213c40f673003)
- [fdc27441ee - Upgrade phpstan to ^1.4.6](https://github.com/phpmyadmin/motranslator/commit/fdc27441ee73c7f85fa611385c04ee14345a74f3)
- [2000a0026a - Add a CHANGELOG entry for pull-request #41](https://github.com/phpmyadmin/motranslator/commit/2000a0026ad36c94ab0bdf740df9fe796f0eaad4)
- [aebcb46915 - Merge #41 - Add support for Symfony 6](https://github.com/phpmyadmin/motranslator/commit/aebcb4691577198b8f051384fe0550776a3da281)

## Fifth week (9)

I merged [#371](https://github.com/phpmyadmin/phpmyadmin/pull/371) on sql-parser, a fix for the additional body tokens issue when creating a view statement.

- [03e90a1b96 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/03e90a1b96e2468f5aba0a2bbbb90f6b65920542)
- [c57157919c - Merge branch 'master' into 6.0.x](https://github.com/phpmyadmin/sql-parser/commit/c57157919c410791603cd36e844e7671e5ccd554)
- [ff593ee11f - Add a CHANGELOG entry for #371](https://github.com/phpmyadmin/sql-parser/commit/ff593ee11f006e31cf939b74634cbcde8b6f3140)
- [e5cb8a16da - Merge #371 - Fixing the additional body tokens issue when create view statements](https://github.com/phpmyadmin/sql-parser/commit/e5cb8a16dae3330af8461ecf3d05c2147d3f3ca3)

