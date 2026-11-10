# Consulting Services for phpMyAdmin

## Report - June 2021

## Overview

Over the month of June 2021 I improved code and scripts.
Wrote tests and made some packaging at Debian and Ubuntu.
Searched about reported issues and fixed issues.

## Weeks (18, 19, 20) of May

On this weeks I did some light issue and pull request triage.

## Week (21) of May

At the end of the week I did the setup of Sentry to manage our error reports.
And finished the forwarding of the reports to Sentry.
I also worked on building unique anonymous identifiers for the error reports we send to Sentry.

### First week (week number 22)

To start the week I worked on adding more tags to our Sentry forwarding code.
I did some research about issues, wrote tests and fixes issues.
At the end of the week after the release I started working on packaging the version in Debian.
Also did infrastructure work, reclaiming space and fixing scripts. I improved our test suite.

### Second week (week number 23)

This week started with script fixing and improving on the release script.
I made fixes and pull-request reviews. Improved the Designer code.
Also removed the need to rely on `cwd`.
Worked on the openlayers re-build PR.
And then worked on Debian for the packaging of `5.1.1`.
I also did triage and research on the error reporting Sentry instance.

### Third week (week number 24)

This week I worked on the packaging of `5.1.1` into our Ubuntu PPA. Made some improvements to the documentation.
Made code refactoring, wrote tests and implemented a `Cache` class. I also worked on script improvements and fixes.
Also made sure we distribute clean release bundles and removed non needed files.
I did some code research. With issue and pull-request triage.

### Fourth week (week number 25)

This week I was not always on the project. But I wrote tests, improved code.
Made pull-request and issue triage. I also worked on the Mroonga support PR.
Merged PRs and improved jsdoc blocks.

## Handled issues

* [#16945 Add suport to the Mroonga engine](https://github.com/phpmyadmin/phpmyadmin/pull/16945)
* [#16978 Replace zxcvbn by zxcvbn-ts](https://github.com/phpmyadmin/phpmyadmin/pull/16978)
* [#16982 \[Designer\] removing a relation tries to remove the internal relation regardless of if the configuration storage is enabled](https://github.com/phpmyadmin/phpmyadmin/issues/16982)
* [#16974 Switch to zxcvbn-ts](https://github.com/phpmyadmin/phpmyadmin/issues/16974)
* [#16980 SQL format option does not appear when exporting a table](https://github.com/phpmyadmin/phpmyadmin/issues/16980)
* [#16977 Enum Or Set value save which contian & character](https://github.com/phpmyadmin/phpmyadmin/issues/16977)
* [#16896 Distinct URLs are broken on nullable text fields](https://github.com/phpmyadmin/phpmyadmin/issues/16896)
* [#16935 The char/varchar textarea minimum height is incorrectly fixed to 7 rows](https://github.com/phpmyadmin/phpmyadmin/issues/16935)
* [#16949 Fix #16935 Remove hardcoded row length](https://github.com/phpmyadmin/phpmyadmin/pull/16949)
* [#16969 How can I change scheme for Metro theme?](https://github.com/phpmyadmin/phpmyadmin/issues/16969)
* [#16539 Signon method unclear; how to implement](https://github.com/phpmyadmin/phpmyadmin/issues/16539)
* [#16812 Error when exporting database (moodle) in phpmyadmin 5.1](https://github.com/phpmyadmin/phpmyadmin/issues/16812)
* [#16907 Bug when importing a csv file](https://github.com/phpmyadmin/phpmyadmin/issues/16907)
* [#16967 Fix code using relative paths for themes and lib imports](https://github.com/phpmyadmin/phpmyadmin/pull/16967)
* [#16796 PPA not up-to-date?](https://github.com/phpmyadmin/phpmyadmin/issues/16796)
* [#16964 PHP 7.2.5 or newer (OR) PHP 7.1.0 or newer](https://github.com/phpmyadmin/phpmyadmin/issues/16964)
* [#16959 Build OpenLayers js dependency](https://github.com/phpmyadmin/phpmyadmin/pull/16959)
* [#16960 JS error on Designer visual builder](https://github.com/phpmyadmin/phpmyadmin/issues/16960)
* [#16946 Change link from group-by-functions to aggregate-functions](https://github.com/phpmyadmin/phpmyadmin/pull/16946)
* [#16951 Daily build failing](https://github.com/phpmyadmin/phpmyadmin/issues/16951)
* [#16956 Snapshot generation broken](https://github.com/phpmyadmin/phpmyadmin/issues/16956)
* [#16855 Replace secure.php.net with www.php.net and remove Polish and Persian](https://github.com/phpmyadmin/phpmyadmin/pull/16855)
* [#16676 composer install fails for 5.1](https://github.com/phpmyadmin/phpmyadmin/issues/16676)
* [#16753 Phpmyadmin 5.1.0 blank screen - requires missing javascript files](https://github.com/phpmyadmin/phpmyadmin/issues/16753)
* [#16504 Create view dialog is too big and won't scroll](https://github.com/phpmyadmin/phpmyadmin/issues/16504)
* [#16931 Undefined index: utf8mb3](https://github.com/phpmyadmin/phpmyadmin/issues/16931)
* [#16914 Add multi arch tests support](https://github.com/phpmyadmin/phpmyadmin/pull/16914)
* [#16930 Fix #16504 - Create view dialog is too big and won't scroll](https://github.com/phpmyadmin/phpmyadmin/pull/16930)
* [#16920 \[ODS Import\] Uncaught TypeError: PhpMyAdmin\\Import::detectType(): Argument #2 ($cell) must be of type ?string, float given](https://github.com/phpmyadmin/phpmyadmin/issues/16920)
* [#16929 #16504 Create view dialog is too big and won't scroll](https://github.com/phpmyadmin/phpmyadmin/pull/16929)
* [#16902 Fix #16734 - SQL group by count results are not accurate](https://github.com/phpmyadmin/phpmyadmin/pull/16902)
* [#16734 Out of memory](https://github.com/phpmyadmin/phpmyadmin/issues/16734)
* [#16911 \[PHP 8.1\] Method mysqli::get_client_info() is deprecated](https://github.com/phpmyadmin/phpmyadmin/issues/16911)
* [#16919 Fix Uncaught TypeError: array_fill(): Argument #2 ($count) must be of type int, string](https://github.com/phpmyadmin/phpmyadmin/pull/16919)
* [#14070 unable to re-import corrected data (import from file)](https://github.com/phpmyadmin/phpmyadmin/issues/14070)
* [#16244 drop files feature to import .sql file doesn't works when I drop files from VSCode.](https://github.com/phpmyadmin/phpmyadmin/issues/16244)
* [#16876 js dist older empty from composer install](https://github.com/phpmyadmin/phpmyadmin/issues/16876)
* [#16898 Table filter sets wrong cookie, user gets logged out](https://github.com/phpmyadmin/phpmyadmin/issues/16898)
* [#16888 Cannot read property 'style' of null](https://github.com/phpmyadmin/phpmyadmin/issues/16888)
* [#16893 Fix #16888 - JS error on renaming tables in saved Designer page](https://github.com/phpmyadmin/phpmyadmin/pull/16893)
* [#16926 Warning in ./libraries/classes/Plugins/Import/ImportOds.php#377  Undefined array key "ods_empty_rows"](https://github.com/phpmyadmin/phpmyadmin/issues/16926)
* [#16496 5.0.4 Failed to set session cookie. Maybe you are using HTTP instead of HTTPS.](https://github.com/phpmyadmin/phpmyadmin/issues/16496)
* [#16921 PHP8: Type error on naviagtion on tree](https://github.com/phpmyadmin/phpmyadmin/issues/16921)
* [#16923 open_basedir restrictions in Export page](https://github.com/phpmyadmin/phpmyadmin/issues/16923)
* [#16915 \[PHP 8\] Login loop when using PHP \> 7.4](https://github.com/phpmyadmin/phpmyadmin/issues/16915)
* [#16913 Skip testImportOsm and testDoImport on 32-bit/s390x arch](https://github.com/phpmyadmin/phpmyadmin/pull/16913)
* [#16912 latest version link](https://github.com/phpmyadmin/phpmyadmin/issues/16912)
* [#16908 Storage of language preferences](https://github.com/phpmyadmin/phpmyadmin/issues/16908)
* [#16271 FOREIGN_KEY_CHECKS overwrite at import by phpMyAdmin option](https://github.com/phpmyadmin/phpmyadmin/issues/16271)
* [#16778 Error in processing request phpMyAdmin 5.1.0](https://github.com/phpmyadmin/phpmyadmin/issues/16778)
* [#16900 Exporting queries does not include SQL as an option in the Format dropdown (AGAIN)](https://github.com/phpmyadmin/phpmyadmin/issues/16900)
* [#16872 mysqli_real_connect(): (HY000/2002): No such file or directory - phpmyadmin 4:4.9.5+dfsg1-2, Ubuntu 20.04, MySQL 8](https://github.com/phpmyadmin/phpmyadmin/issues/16872)
* [#16882 Deleting a table resets the count to 0](https://github.com/phpmyadmin/phpmyadmin/issues/16882)
* [#16895 Wrong table count on space separated numbers](https://github.com/phpmyadmin/phpmyadmin/issues/16895)
* [#16894 Fix #16882 - Table delete resets count to 0](https://github.com/phpmyadmin/phpmyadmin/pull/16894)
* [#16890 Version : Debian Bullseye-RC1 and 5.0.4deb2 - 2FA missing composer](https://github.com/phpmyadmin/phpmyadmin/issues/16890)
* [#16887 Text (text, longtext,...) are exported as hex on JSON export](https://github.com/phpmyadmin/phpmyadmin/issues/16887)
* [#16886 Row Export - missing "SQL" format option in select](https://github.com/phpmyadmin/phpmyadmin/issues/16886)
* [#333 phpmyadmin/phpmyadmin:5.1.1-fpm docker image is not configured properly](https://github.com/phpmyadmin/docker/issues/333)
* [#334 Subdirectory Nginx Proxy_pass](https://github.com/phpmyadmin/docker/issues/334)
* [#327 fpm-alpine + haproxy](https://github.com/phpmyadmin/docker/issues/327)
* [#330 Error TemDir in 5.1 image](https://github.com/phpmyadmin/docker/issues/330)
* [#165 WITH keyword](https://github.com/phpmyadmin/sql-parser/issues/165)
* [#331 Add support for WITH clause (enhancement for syntax highlighter)](https://github.com/phpmyadmin/sql-parser/issues/331)
* [#334 Add WITH support](https://github.com/phpmyadmin/sql-parser/pull/334)
* [#43 Add Sentry setup](https://github.com/phpmyadmin/scripts/pull/43)

# Commit list

## phpmyadmin-team/phpmyadmin (GitLab)

- [831adc6857 - update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/831adc68579a5e0ccf57cca777ee47343339fd54)
- [75ce285172 - Fix php 8 patch format](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/75ce285172ffa93ad9b86b01c8a55d1f21f0b1f0)
- [c6f1571e7b - Allow PHP 8 to work by allowing symfony v5](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c6f1571e7bac9a44b643fb17f05852b8937cc19b)
- [bb4719119b - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/bb4719119b24be951c82aeb81f66ab3a5e5cb902)
- [524771f121 - Refresh 32-bit and PHP 8.0 patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/524771f121bc503f0980f38e646eddf7522a3d4e)
- [af8d8222d2 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/af8d8222d287e90be19186db5928cc846a6b069d)
- [ba0a99b3da - Add more metadata for 32bit patch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ba0a99b3dae5f2eb5de3e950254c37049dfee80d)

### Week 22

- [cdd0ebface - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/cdd0ebfaceb368b1c9494dde4c0879f3ff85b7d7)
- [e1ee6a2949 - Fix failing ErrorTest::testSetFile and FileListingTest](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e1ee6a294930d75a86339a36e5e44e04ee969fb4)
- [190346dd3a - Fix failing test OptionsTest](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/190346dd3a4615108e4918c8ecb2b64e21fd835a)
- [df31a28180 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/df31a28180bede3dbcd9a32a52131622f9c976a6)
- [3f602eb317 - Add back Public Domain license](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/3f602eb317fd6abad065d836cbde51bafaf83743)
- [a10960382e - Adjust phpunit autopkgtests for 32-bit tests](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a10960382e0cb4b254516c3dd1bab90bee11fa65)
- [d2463d1156 - Ignore very-long-line-length-in-source-file from js/dist](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d2463d1156d1c43853cf19e33066e47d25240371)
- [8f9ad18742 - Remove unused d/licenses](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/8f9ad187427c1b117056863cb687329b11200365)
- [130938604c - Ignore source-contains-prebuilt-javascript-object for js/src](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/130938604c32755a29ce83589510bff511648a1e)
- [d45ca99e6a - Update d/copyright for openlayers](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d45ca99e6a520d917cf5e08ebe7f61d212c4433e)
- [c27af281cb - Fix typo in changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c27af281cb4599b2ca1ed2ee30e77151403fb7d3)
- [b3d0e5252e - Update d/changelog for experimental](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b3d0e5252edf2ebbd9b78298b89a8f7ee1c7fa73)
- [5e078186f7 - Add a rule to make the symlink into a folder](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/5e078186f71630a13c9a00c8629743096af87c17)
- [a07e01ff46 - Run "wrap-and-sort"](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a07e01ff460ae3cb7c1d73dd3343f5abd64354ab)
- [f097e129bb - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f097e129bbe296acb76a0574df5033c3f6ed527f)
- [4ae92ed30a - Add a patch to fix test failure with mbstring](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/4ae92ed30afccfd046aca22db466c1dd0931b598)
- [154e6572a5 - Remove not usefull anymore delete of metro theme fonts](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/154e6572a5dbf4d7fa1a215c498976611158d81b)
- [c32f61c123 - Do not delete openlayers js vendor folder](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c32f61c1239c4abbb488da797b4d08a105430c08)
- [72f546191f - Build depends on php-cli for Makefile php commands to always work](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/72f546191fd621e2825cf609417a712a8ac5cb78)
- [9583dc2098 - Adjust rules to set the Debian version suffix](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9583dc2098d21038574efbb8f3cb5a72b4370334)
- [73459fa823 - Remove Symfony/Component/Yaml from autoload](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/73459fa823d25c6dd8bfec2a5a1ca7c6a0954e32)
- [6a473063cf - Only skip 32-bit tests on 32-bit platforms](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6a473063cf7a81f9f11150878e27eb4f60a0d8ad)
- [99cb5fac4c - Add FastRoute vendor to autoload](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/99cb5fac4cbc248f92958354afe8d6f2a57391a0)
- [35758e936a - Update bootstrap patch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/35758e936a367d161bf9d4b4b700310b9215f0c4)
- [b90c4e4eee - Refresh patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b90c4e4eeec6b3635c4af6e8d83a572b035da71d)
- [18fb8c96cd - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/18fb8c96cdaffd467195d8f57f25ddafaaa3fd04)
- [0f86e06ea0 - Drop depends on libjs-openlayers](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/0f86e06ea0b0a8d9bb0eac051b43aeafa9804fcd)
- [d8c071ecf0 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d8c071ecf0f872f115569e14d85acc33c40e2a02)
- [c255b61ef2 - Merge branch 'upstream' into debian/experimental](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c255b61ef238d5d604818c4167765cfd803ad387)
- [634760f05f - New upstream version 5.1.1+dfsg1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/634760f05f74313323322a1b120a6b60f26d3be6)
- [44cc419c56 - Remove not needed patches on 5.1.1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/44cc419c5666cfc21260c57537f2c34466a0f061)
- [1409a52287 - Merge branch 'debian/latest' into debian/experimental](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/1409a52287ac8f96121744317c67d61cf4d08d1e)
- [7e8747cfb8 - Remove jquery.event.drag-2.2.js removed in 5.1.1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/7e8747cfb8a300b9c6b5271ced315253a154264a)

### Week 23

- [e78a70089d - Add lintian source-contains-prebuilt-javascript-object on d/m-s/ol/*](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e78a70089dd33a3d161b46b3e822f4d21fb63534)
- [940d451dc0 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/940d451dc0fe5d8d7ef45c2e0597ab3b1495b263)
- [ea95952e25 - Add lintian override for source-is-missing on d/missing-sources/ol](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ea95952e2523cfdf36b6c785ff1893973ebb1319)
- [18f8d788ee - Add d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/18f8d788ee3d6a66f584e87a7192b7f42eb675fd)
- [2f14680cc5 - Update d/clean after openlayers build](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2f14680cc576c29a8a92860cb62dfff79ddc7239)
- [fc0b215db6 - Use webpack to build openlayers](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/fc0b215db68df3e3ac3ce1f638e3aee9331ba781)
- [a2be15034a - Update copyright for openlayers, quickselect and rBush](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a2be15034a945803162b761d12944bdd9ead7da8)
- [4e1c0aa40c - Add rBush and quickselect dependencies](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/4e1c0aa40c5b284ec0459b8fd9eceaa4c88999e9)
- [95cf9f8637 - Disable MapboxVector in openlayers sources](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/95cf9f86372906b6e407512133c003bda53fe503)
- [0ad857c61a - Add openlayers source files from 5.1.1 source tarball](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/0ad857c61a1f5fb4e27f63fe0f9882c65c568b15)
- [3d1a73ca9f - Change node_modules config dir for openlayers to build from d/missing-sources](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/3d1a73ca9f865dc431ca4daa3bac90839c7ae3f2)
- [de7454ad84 - Add openlayers build from source patch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/de7454ad84729e4a6ac1f0bdaf3c93c5dfe93709)

### Week 24

- [55787dc90f - Set version -3 to experimental for release](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/55787dc90fd83c40b836ba0fda6a6e7221ed5568)
- [f7557559a5 - update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f7557559a593ae8fe2bde54eb22ef825cba7125a)
- [6a57adf0f8 - Merge branch 'debian/latest' into debian/experimental](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6a57adf0f829aa40839ee5f1a7afa9f5324224eb)
- [55748a54ed - Add d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/55748a54edb006eed5e1cdfa91ab88d6efc2a531)
- [06967dedb0 - Set Debian Salsa CI to experimental](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/06967dedb0d0c6350aa2651469fc9928787bf834)
- [1ed34bf95e - Update d/gbp.conf and d/control to experimental branch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/1ed34bf95e280b1964d6ca28cac26916761d1f97)
- [b151735f1c - Allow PHP 8 to work by allowing symfony v5](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b151735f1c444bb7b7e544b5d215755f3b7e2704)
- [d2eb718130 - Set version -2 to experimental for release](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d2eb718130b68aab25dd3e01a6f9cd94e0ce5f49)

## phpmyadmin-team/sql-parser (GitLab)

- [c23928d0bd - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/c23928d0bd334338e2e226fb72141fadfdcb45bd)
- [46a7ca4fc4 - Merge branch 'upstream' into debian/latest](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/46a7ca4fc453049bcdfd1cb1595027c584d14999)
- [ce321fe217 - New upstream version 5.4.2](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/ce321fe217300359589d450cdd8ad6172441b20e)

## phpmyadmin/phpmyadmin (GitHub)

- [d221eed5d9 - Fix failing tests, seed: 1624814216](https://github.com/phpmyadmin/phpmyadmin/commit/d221eed5d9b2c4e33cf087e784f3b3a3e146f59a)
- [3d6ecab8dd - Force LC_ALL to C.UTF8 to avoid user locale related issues, seed: 1624813981](https://github.com/phpmyadmin/phpmyadmin/commit/3d6ecab8dd50ca02c744e5e89f2ab22f4e77b866)
- [9f5d7dadd3 - Add a ChangeLog entry for #16974](https://github.com/phpmyadmin/phpmyadmin/commit/9f5d7dadd36263ae12428c919cf6f83871ae6483)
- [53cc1f9daf - Update @var jsdoc on some js files](https://github.com/phpmyadmin/phpmyadmin/commit/53cc1f9daf37c9891c1a7d9637a0047888ca0481)
- [b0fa54a2f3 - Update @var jsdoc on makegrid.js](https://github.com/phpmyadmin/phpmyadmin/commit/b0fa54a2f3315c5e13f21edf0775867e7b7c2158)
- [ee6220db46 - Merge #16978 - Fix #16974 - Replace zxcvbn by zxcvbn-ts](https://github.com/phpmyadmin/phpmyadmin/commit/ee6220db46ece7597a5b822ba9d26d06b6bb8d8b)
- [6996e8dd28 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/6996e8dd28bcaaff080fb32c9d048a804715d118)
- [f3e9a4cd68 - Add a ChangeLog entry for 535b374163](https://github.com/phpmyadmin/phpmyadmin/commit/f3e9a4cd68263e6b5eb000c210f3462ae21502a1)
- [535b374163 - Fix "Undefined index: clause_is_unique" on replace value in cell](https://github.com/phpmyadmin/phpmyadmin/commit/535b374163748a74d675603ccf8143a63fcd107c)
- [d26739ec64 - Ref #16982 - Add a test for removeRelation drop FK](https://github.com/phpmyadmin/phpmyadmin/commit/d26739ec64bcc30e0c95d4820029df23f42ee65a)
- [962d33a4aa - Ref #16982 - Add tests for removeRelation](https://github.com/phpmyadmin/phpmyadmin/commit/962d33a4aa6a4cf356a5da31d13a70e30def9c2c)
- [abdcc4a18f - Add ChangeLog entries for #16982](https://github.com/phpmyadmin/phpmyadmin/commit/abdcc4a18fef4ecbb92713cd33dbf3317b779e14)
- [17af848212 - Add a ChangeLog entry for ab6fedbd5c](https://github.com/phpmyadmin/phpmyadmin/commit/17af848212d1c779e09508b3b2d777f7fd756f84)
- [3eaf6b84c0 - Fix #16982 - Show feedback messages to the user on Designer add and remove operations](https://github.com/phpmyadmin/phpmyadmin/commit/3eaf6b84c01cf31fd0c275786cbe3a7d16089776)
- [6a7230cb8c - Fix #16982 - do not try to delete internal relations if they are not configured](https://github.com/phpmyadmin/phpmyadmin/commit/6a7230cb8c7e935401182f987b9f3987e0c0a215)
- [ab6fedbd5c - Backquote phpMyAdmin table name on internal relation delete query](https://github.com/phpmyadmin/phpmyadmin/commit/ab6fedbd5c17bf713669bc09737754432dce6d2f)
- [33b332d5eb - Add a ChangeLog entry for 6529d81b71](https://github.com/phpmyadmin/phpmyadmin/commit/33b332d5ebedf9ba3496e580b91bbc7fc899d916)
- [4b7c40b056 - Add a test for searchColumnInForeigners to cover 6529d81b71](https://github.com/phpmyadmin/phpmyadmin/commit/4b7c40b056754f7a378d50ef9f51b7ac51aef095)
- [6529d81b71 - Fix "Notice: Undefined index: foreign_keys_data"](https://github.com/phpmyadmin/phpmyadmin/commit/6529d81b714b68bdc1edb40354566506bd084b4a)
- [12b62acdc7 - Add ChangeLog entries for 5c19230a66 and a49ea14515](https://github.com/phpmyadmin/phpmyadmin/commit/12b62acdc7f86145d963a35ee3cdf1ecc663cf08)
- [a49ea14515 - Fix "Undefined array key "ods_recognize_currency" on ImportOds](https://github.com/phpmyadmin/phpmyadmin/commit/a49ea145150face44e5dd7be146f2b5b8d9792fe)
- [5c19230a66 - Fix warning "Undefined index: ods_recognize_percentages" on ImportOds](https://github.com/phpmyadmin/phpmyadmin/commit/5c19230a6653bb67022f92183b2f6bde20df3a1d)
- [6c644fec28 - Add a ChangeLog entry for 590a450a47](https://github.com/phpmyadmin/phpmyadmin/commit/6c644fec280cbd3f24f829549048d5903dd8808e)
- [590a450a47 - Fix possible "Undefined index: output_format" on export](https://github.com/phpmyadmin/phpmyadmin/commit/590a450a4798d21d211a6f046d2ec9fabced0d15)
- [0fbfa7b0e0 - Remove two symfony dev deps](https://github.com/phpmyadmin/phpmyadmin/commit/0fbfa7b0e0c1254ddf4f7d0bb95a1ca29fd2c982)
- [0a1f083990 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/0a1f083990cab760557b95ee258c3e2e7da0d630)
- [b04fe5cb8a - Add a ChangeLog entry for 8e148afc9e](https://github.com/phpmyadmin/phpmyadmin/commit/b04fe5cb8ac00aaaa5d95b0aa2736a05cfac407c)
- [a91fbfb3a0 - Add ChangeLog entries for 1bd76fc474, #16977 and #16896](https://github.com/phpmyadmin/phpmyadmin/commit/a91fbfb3a0ac14b376925ef5c9f46775d80906d2)
- [c3e0555e8b - Add security tests for #16977](https://github.com/phpmyadmin/phpmyadmin/commit/c3e0555e8b686c005e00587b9d30f1db647b3783)
- [b801a7e8cb - Ref #16871 - Fix - Invert expected and actual on NormalizationControllerTest and add assert response success](https://github.com/phpmyadmin/phpmyadmin/commit/b801a7e8cb37b87582b59e264358196500324c27)
- [1bd76fc474 - Ref #16977 - Fix selected value for enum get values route](https://github.com/phpmyadmin/phpmyadmin/commit/1bd76fc47413a5bc3d37bcfdb4b2971584b5df1e)
- [15dfab25ee - Fix #16977 - do not escape escaped content for enum and set responses templates](https://github.com/phpmyadmin/phpmyadmin/commit/15dfab25eefaced4ebcfb6ec14511f7897618536)
- [87a186a1b6 - Add tests for #16977](https://github.com/phpmyadmin/phpmyadmin/commit/87a186a1b637d4fd5af60f09c51ec88a43052ff1)
- [897f07d50d - Implement error management for #16977](https://github.com/phpmyadmin/phpmyadmin/commit/897f07d50d9df8156134554b72bb01d841de7eaa)
- [fc45a83431 - Update phpstan baseline](https://github.com/phpmyadmin/phpmyadmin/commit/fc45a834314938a0d87c761b07d173e34476f167)
- [5e557397b5 - Fix tests after #16896](https://github.com/phpmyadmin/phpmyadmin/commit/5e557397b58e5fe7c04ac52bb97149b84e474b85)
- [38448a1ad6 - Fix missing "use function" for apc and uploadprogress extensions](https://github.com/phpmyadmin/phpmyadmin/commit/38448a1ad6bea0fcc20229be824445e11cf31da4)
- [8e148afc9e - Fix two possible PHP errors with int data](https://github.com/phpmyadmin/phpmyadmin/commit/8e148afc9ec4edc7da5992a87888d85d1025b576)
- [6549c11361 - Fix #16896 - Distinct URLs are broken on nullable text fields](https://github.com/phpmyadmin/phpmyadmin/commit/6549c113619c3984bb360af580e5d887f8e1df0b)
- [7ae7a83935 - Add a ChangeLog entry for #16935](https://github.com/phpmyadmin/phpmyadmin/commit/7ae7a83935e2bfff3378056704ab9fd4de68198f)
- [0c904d6990 - #14379 - Document the change of default value from 2 to 7 for CharTextareaRows](https://github.com/phpmyadmin/phpmyadmin/commit/0c904d6990336a704a2bab97a3d5ea18f20a2264)
- [6e5432d2d1 - Merge #16949 - Fix #16935 - Remove hardcoded row length](https://github.com/phpmyadmin/phpmyadmin/commit/6e5432d2d1f1d76495e7202a6ecf0ecc08653c82)
- [97a7d88db6 - Ignore psalm UnresolvableInclude for routing cache](https://github.com/phpmyadmin/phpmyadmin/commit/97a7d88db6b97a712d3b286e7ad032f4657b979a)
- [88de1ff165 - Update psalm to 4.8.0](https://github.com/phpmyadmin/phpmyadmin/commit/88de1ff165bfa9de7f07cf28ac26a54f658ef5c0)
- [a93b3dcdfa - Update check script and release script to remove new vendor files](https://github.com/phpmyadmin/phpmyadmin/commit/a93b3dcdfa7db6bee8599f5b7a3cd9c4538441db)
- [04e5701600 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/04e5701600370f1177973ccd20aa41cc9cd0b104)
- [ec6b3985e4 - Exclude more files from the final bundle](https://github.com/phpmyadmin/phpmyadmin/commit/ec6b3985e46aa52518da51c71b33429b1d798e7b)
- [b2bb13f86e - Make the release check script way more strict and check all extensions by folders](https://github.com/phpmyadmin/phpmyadmin/commit/b2bb13f86efeea893bef09da78c3ff528418e49a)
- [ff148be32a - Translated using Weblate (Indonesian)](https://github.com/phpmyadmin/phpmyadmin/commit/ff148be32a19abe36e0666c0c337f98b0dae529b)
- [76b49238a9 - Translated using Weblate (Albanian)](https://github.com/phpmyadmin/phpmyadmin/commit/76b49238a9bcde06a1dd9a49e8414a8bf212b172)
- [33e3b5974e - Translated using Weblate (Albanian)](https://github.com/phpmyadmin/phpmyadmin/commit/33e3b5974e233aab3db6a0cf045c6df6b8f04e7b)
- [a9bcac3f3b - Translated using Weblate (Indonesian)](https://github.com/phpmyadmin/phpmyadmin/commit/a9bcac3f3b854f1751db4b933e33124ccde9e1ef)
- [575abb7b08 - Adjust tests and failing tests for a specific seed](https://github.com/phpmyadmin/phpmyadmin/commit/575abb7b08ed88dddf522aeb38757fddea6a8e05)
- [a5bb275708 - Remove a static variable from Bookmark function and use Cache class](https://github.com/phpmyadmin/phpmyadmin/commit/a5bb275708715b7a9f8c5c9e5d958c5c535bbff2)
- [57ec599d52 - Create a simple Cache class](https://github.com/phpmyadmin/phpmyadmin/commit/57ec599d52a952c9bf73834ee0d505167733838a)
- [c7ee30a3fe - Document more static vars](https://github.com/phpmyadmin/phpmyadmin/commit/c7ee30a3fe771e177a3a2ad1cdc26784531af2b6)
- [7c36051fe2 - Fix Bookmark class cache on getParams](https://github.com/phpmyadmin/phpmyadmin/commit/7c36051fe2ed3ab5819108f097744e027805fa65)
- [3112321d26 - Remove static from SearchControllerTest::testGetDataRowAction](https://github.com/phpmyadmin/phpmyadmin/commit/3112321d26d36ee3ef288d1a91575087c9ba0b3a)
- [e7c2557f02 - Fix Theme::load after #16967](https://github.com/phpmyadmin/phpmyadmin/commit/e7c2557f0245a9a618a4263115924ad22c2cf501)
- [ddc5338a74 - Fix Theme check after #16967](https://github.com/phpmyadmin/phpmyadmin/commit/ddc5338a7487fc532a82b26e08394fda71749f44)
- [66d0fecb90 - Merge branch 'origin/QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/66d0fecb90d8b3ccf666f29f2287a9cdeb216ada)
- [4443570e46 - Remove useless dir sep from #16967](https://github.com/phpmyadmin/phpmyadmin/commit/4443570e462cd2e68a2f9c8874c32f2fe2788ec3)
- [1ca6be3f92 - Fix wrong separator on getThemesDir for Windows on fallback mode](https://github.com/phpmyadmin/phpmyadmin/commit/1ca6be3f921fa2627d74b74bb7e5a52748ca6ae8)
- [de142e56ea - Remove useless "static" keyword in Types class](https://github.com/phpmyadmin/phpmyadmin/commit/de142e56ea71c25fb7dd242c8657e06724582ee0)
- [300e835edb - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/300e835edb2e9dd791089a76a753d836b4a2f6f0)
- [e0842506a2 - Add a ChangeLog entry for 2232818da9](https://github.com/phpmyadmin/phpmyadmin/commit/e0842506a26b96133ee47b0471546814a3b311bb)
- [2232818da9 - Merge #16967 - Fix code using relative paths for themes and lib imports](https://github.com/phpmyadmin/phpmyadmin/commit/2232818da90a91f656be66bb32620c046cbdf6c3)
- [f09ead5e07 - Fix code using relative path](https://github.com/phpmyadmin/phpmyadmin/commit/f09ead5e075175d23d370f9ad28cd3203a9cbd05)
- [4747955500 - Add missing "use function uploadprogress_get_info;" on UploadProgress class](https://github.com/phpmyadmin/phpmyadmin/commit/4747955500405f88109a1c6287f9a9ba65fb69c4)
- [a6d39d39be - Improve non standard doc blocks](https://github.com/phpmyadmin/phpmyadmin/commit/a6d39d39be61c5163c37e47929e2bfe6afe2849f)
- [2e472a3b89 - #15586 - Improve designer move.js by de-duplicating some logic code + micro perf improvement](https://github.com/phpmyadmin/phpmyadmin/commit/2e472a3b896bf3ef20efe4af4e98d36158621e8e)
- [ce2f6edec6 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/ce2f6edec60ecd392d82490f57f85afd1fce5665)
- [7edfe934bf - Add a ChangeLog entry for 03ca33e7f4](https://github.com/phpmyadmin/phpmyadmin/commit/7edfe934bff94ec094d45b4649b6808f00686859)
- [03ca33e7f4 - Merge #16959 - Build OpenLayers js dependency from the sync script](https://github.com/phpmyadmin/phpmyadmin/commit/03ca33e7f4f95c14c49b1eef39b169418b01d12e)
- [4799b75d9f - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/4799b75d9f1f5fd1941d461f7437184a77ef21c4)
- [ad4aa3f237 - Add ChangeLog entries for 00215e9d6b and #16960](https://github.com/phpmyadmin/phpmyadmin/commit/ad4aa3f237c569ef97d1ea86efadf9babb5a93dd)
- [0c6b48a454 - Fix #16960 - JS error on Designer visual builder](https://github.com/phpmyadmin/phpmyadmin/commit/0c6b48a45471a36db0f52f28f572840efcac9aef)
- [8ca580ba4b - #15586 - Improve designer history.js code and type docs](https://github.com/phpmyadmin/phpmyadmin/commit/8ca580ba4b38faa2d8935134df96345052f9374f)
- [bf9531cbad - #15586 - Improve designer database.js code and type docs](https://github.com/phpmyadmin/phpmyadmin/commit/bf9531cbadfe6db6113660aaaf063bb8202e3ecd)
- [5b0641e885 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/5b0641e88554213365911a087545a67bd404d49e)
- [00215e9d6b - Merge #16946 - Change link from group-by-functions to aggregate-functions](https://github.com/phpmyadmin/phpmyadmin/commit/00215e9d6b147f987048010d0da74e1ccd2f113e)
- [e6982c3de5 - Fix #16951 - Daily build failing because autoload is not loaded on some phpunit setups](https://github.com/phpmyadmin/phpmyadmin/commit/e6982c3de519a1f57429d3bfef2dcd660bcf24ef)
- [c12b6f05f8 - Set back CI composer version to v2](https://github.com/phpmyadmin/phpmyadmin/commit/c12b6f05f86db16c8bd32323897a0831bc118ada)
- [3bf695b627 - Add message to require composer v2.1.2 on release script](https://github.com/phpmyadmin/phpmyadmin/commit/3bf695b627641a23ce31a319297f8d7b5f0151d9)
- [9c497b2c81 - Print composer version on the release output](https://github.com/phpmyadmin/phpmyadmin/commit/9c497b2c81b897df895d70fdc67392111f204fec)
- [1397588a17 - Fix autoload on release test suite](https://github.com/phpmyadmin/phpmyadmin/commit/1397588a17da297fea8cfd001db76fdecb4f07e3)
- [cbe13a75e8 - Move code from bootstrap-dist into AbstractTestCase setUp](https://github.com/phpmyadmin/phpmyadmin/commit/cbe13a75e831404c9488e954948edd851481d7e8)
- [796aa9f5b2 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/796aa9f5b28d52bb56e5f4ac1f2717e4c7bf6098)
- [cd5727ba65 - Fix selenium test testSearchRecords after migration to bootstrap cards](https://github.com/phpmyadmin/phpmyadmin/commit/cd5727ba6547c92faf8c5422466bcd67c7744cd5)
- [3765aeb221 - Improve the code of RecentFavoriteTable class](https://github.com/phpmyadmin/phpmyadmin/commit/3765aeb2212b5563f1b212867cba40e24274ff83)
- [f7ce696a82 - Add git on multi arch tests setup](https://github.com/phpmyadmin/phpmyadmin/commit/f7ce696a829565bba663740284c0441f296edede)
- [7ad73a7d6c - Remove mocking from DatabaseInterfaceTest](https://github.com/phpmyadmin/phpmyadmin/commit/7ad73a7d6cf3dc787eed562a479fc1d2b0a113bc)
- [a29af90d95 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/a29af90d95df98467022ade0e3c752cc66759613)
- [6b169b9fdf - Make sure tests use the queries they added to the pile](https://github.com/phpmyadmin/phpmyadmin/commit/6b169b9fdff0854aca9ffaa130ffe1a4995d5179)
- [919ce3975f - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/919ce3975f1cf3e9fbdb11de2defd7c4f03f9d23)
- [d75345cc5c - Add a ChangeLog entry for #16931](https://github.com/phpmyadmin/phpmyadmin/commit/d75345cc5cfc0b9a6ce16b7ffa2e4901deb8f735)
- [10a10a98db - Refresh apt cache before install on selenium CI](https://github.com/phpmyadmin/phpmyadmin/commit/10a10a98dba558f04cfd19618e97422726dadb45)
- [febc302cdb - Improve tests for #16931](https://github.com/phpmyadmin/phpmyadmin/commit/febc302cdb22ee7803ff9db747167caf85639765)
- [815ee5c7f9 - Improve DB testing capabilities by replacing the actual system by a filo system](https://github.com/phpmyadmin/phpmyadmin/commit/815ee5c7f9d81191e69e072b6197d6a4026614dc)
- [f69ad50e27 - Add tests for #16931](https://github.com/phpmyadmin/phpmyadmin/commit/f69ad50e27ebeb65c944328dd5505ad853b8d0c6)

### Week 24

- [5ecc6ed979 - Translated using Weblate (Albanian)](https://github.com/phpmyadmin/phpmyadmin/commit/5ecc6ed97997a51d86e6991b2e25735f0135a6f9)
- [3bfec68fd2 - Translated using Weblate (Indonesian)](https://github.com/phpmyadmin/phpmyadmin/commit/3bfec68fd2e6c9ba1f3827d1f35b55877bc8d5d5)
- [962d3ceaac - Translated using Weblate (Albanian)](https://github.com/phpmyadmin/phpmyadmin/commit/962d3ceaac24a61a452f0090d3b5e5c7abc1f47f)
- [e95adb040f - Translated using Weblate (Indonesian)](https://github.com/phpmyadmin/phpmyadmin/commit/e95adb040fb1706cd782ef6474603098dcaa4b75)

### Week 26

- [b68d858989 - Merge #16972 - Remove two symfony dev deps](https://github.com/phpmyadmin/phpmyadmin/commit/b68d858989f356abad85d4f3bbab509cdf10f60f)

## phpmyadmin/sql-parser (GitHub)

- [51ba37c199 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/51ba37c199c238a62de2e1075fd97afb8d19470c)
- [998338c49a - Add more test cases for #168](https://github.com/phpmyadmin/sql-parser/commit/998338c49a6d625cf1e2b18ab6ce8965102a49bb)
- [9f16b246ba - Use zumba/json-serializer for tests data output](https://github.com/phpmyadmin/sql-parser/commit/9f16b246ba0752b0cbf568e469cb2559cb3ace4a)
- [34d5dd83d1 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/34d5dd83d1f7014882b7de74255be213ad223611)
- [ded1fea049 - Add tests for #168](https://github.com/phpmyadmin/sql-parser/commit/ded1fea0494bafb2c1454264283d2e5222ce4da7)
- [ff76ee6c09 - Add a CHANGELOG entry for #165, #331](https://github.com/phpmyadmin/sql-parser/commit/ff76ee6c09a2b0c2eb3dff468f643e344e2ccae2)
- [1b330caf9d - Merge #334 - Fix #165, Fix: #331 - Add WITH support](https://github.com/phpmyadmin/sql-parser/commit/1b330caf9d0f164193bc2230309d6de2bee9ff11)
- [8d8336d5cb - Upgrade phpstan to ^0.12.87](https://github.com/phpmyadmin/sql-parser/commit/8d8336d5cb9a0a0bfe97ba8ae7027ec81d11aeb6)
- [9e009d307e - Update phpstan and phpstan baseline](https://github.com/phpmyadmin/sql-parser/commit/9e009d307ebbdc67de856f886c42b5209831bdd9)

## phpmyadmin/shapefile (GitHub)

- [63e314c7f6 - Exclude more files from the vendor bundle](https://github.com/phpmyadmin/shapefile/commit/63e314c7f651267d37e2bf5a14975219f8aa7414)
- [0d1c05b09a - Add PHP 8.1 to CI](https://github.com/phpmyadmin/shapefile/commit/0d1c05b09a73522421f158ffb32d35c49935dbf7)

## phpmyadmin/error-reporting-server (GitHub)

- [5f7ebbf457 - Fix version parsing for fedora version suffix](https://github.com/phpmyadmin/error-reporting-server/commit/5f7ebbf457d0d944d14beda0d35f794b83e4ec2a)
- [fd58a912f1 - Add back a security salt on CI config to fix migrations](https://github.com/phpmyadmin/error-reporting-server/commit/fd58a912f166a5934ea99ab39f806ba1f28e6548)
- [22b4b8b872 - Implement version_major and version_series tags](https://github.com/phpmyadmin/error-reporting-server/commit/22b4b8b8724057e7a20af66f2f4a79f107c59782)
- [3454b13871 - Better handle feedback request response and error logging and make report email comply with 75 chars limit](https://github.com/phpmyadmin/error-reporting-server/commit/3454b138719510d20e21477f6b5b20b656d2bd52)
- [9a0f5d4515 - Fix PHP warning on incident submit JS report](https://github.com/phpmyadmin/error-reporting-server/commit/9a0f5d4515b2f9740183faa41530d2403d48b51c)
- [ab54bee1c4 - Add unique user Id to feedback report email](https://github.com/phpmyadmin/error-reporting-server/commit/ab54bee1c467c95484f92a98a2701654d80a9121)
- [b13c481cb3 - Add a unique Id for each user based on hashed contents and a security salt](https://github.com/phpmyadmin/error-reporting-server/commit/b13c481cb35d5b70a1b434307b851126bfc53c4c)
- [2b14754c63 - Replace the security salt with a more example like value](https://github.com/phpmyadmin/error-reporting-server/commit/2b14754c63139a4ac6da7509c52be3c9a5e0282c)
- [c9be109151 - Better manage releases versions, added support for dist, transaction, environment](https://github.com/phpmyadmin/error-reporting-server/commit/c9be1091514fdde3094bf95cc24299801c965769)
- [40a49e63f5 - Allow some properties to be missing on PHP reports](https://github.com/phpmyadmin/error-reporting-server/commit/40a49e63f54d33df0440b4bca33c82c379019cfa)
- [920c75d5c5 - Add Sentry report forwarding](https://github.com/phpmyadmin/error-reporting-server/commit/920c75d5c567a90638c5f89f33c0e7470181e5ea)

## phpmyadmin/twig-i18n-extension (GitHub)

- [39ee186035 - Add PHP 8.1 support for tests](https://github.com/phpmyadmin/twig-i18n-extension/commit/39ee18603598bf4299cb93c349b21bb6efdb1e63)
