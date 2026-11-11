+++
title = "Report for December 2022"
date = 2022-12-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for December 2022.

<!-- more -->

In December 2022 my focus was the Debian packaging, with a few fixes on phpmyadmin.

## First week (48)

Mostly Debian packaging: I sent shapefile 2.1-7 to unstable and 3.0.1-1 to experimental, and prepared sql-parser 5.5.0-1. On tcpdf I made the tests depend on php-cli and moved the autoload test to a superficial DEP-8 test.

- [28d8fdc584 - Bump GitHub actions versions and fix deprecated syntax for variables](https://github.com/phpmyadmin/phpmyadmin/commit/28d8fdc584ac5427821967bb7ccc16b44e2ec2e4)
- [2280755505 - Bump GitHub actions](https://github.com/phpmyadmin/shapefile/commit/2280755505eb6442dcd2dcb87bd19c37b3a12752)
- [68b0d94e0a - Update d/ch for 5.5.0-1 release](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/68b0d94e0ae1864e22d23246c56912360da8058a)
- [b6f94d8cd1 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/b6f94d8cd17de803d642b7df870d50b445136287)
- [0714fba3e5 - Fix spelling-error-in-copyright](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/0714fba3e5d4194773ac406e8d473f751c718486)
- [0cf5484bb2 - Send 3.0.1-1 to experimental](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/0cf5484bb24d1b3ccece24a5f014116bb0058a9a)
- [e0c018ce48 - Merge branch 'debian/latest' into debian/experimental](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/e0c018ce48144882b0b0d16f7c1f59755eba00f5)
- [2e154afcee - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/2e154afceea06cd5e31d7cb659269e87120c9886)
- [eec50c65df - Add new test data files to dh/clean](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/eec50c65dff4787ca0ca74ed2b989425b5ff004f)
- [98608ca26d - Send 2.1-7 to unstable](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/98608ca26d986b2943804ba6dac737be2cb1f265)
- [26fe82c20c - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/26fe82c20cc69a045e453871b69596eed94e218d)
- [13703baccd - Revert "Add a lintian override for data files"](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/13703baccd53b0dc4e8758ba8e51361151f41d60)
- [f8def7a711 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/f8def7a7115f48c7311c55b7e84fa8c03806a47e)
- [1bc89fa0f5 - Add new test data files to dh/clean](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/1bc89fa0f50f83db02062f667ca56faac4c9c9c4)
- [baf6c56c8a - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/baf6c56c8a8ee5905bae6f739fd08a188abb7b90)
- [3d037ecc64 - Refresh patch for examples/* and drop an applied upstream patch](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/3d037ecc641779140076ad00889b24f03e67ed2d)
- [69dd0f2dda - Drop old PSR-1 patch](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/69dd0f2dda5016dbd42fb07e739c9bb731c7a587)
- [46ab7c94ad - Switch branch to debian/experimental](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/46ab7c94ad696d853c173ac1e007bac70ba0e5ab)
- [47ee58377e - Merge branch 'upstream' into debian/experimental](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/47ee58377e185e51297f0cdedd69ce486a4fa364)
- [2b38e0173f - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/2b38e0173f285fc447ec78b74262b1a168775623)
- [ccffd15393 - Add a lintian override for data files](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/ccffd1539313b999407eefcccf826ac52ceed8fb)
- [30b5ba90d6 - New upstream version 3.0.1](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/30b5ba90d6233ae848e78f6848fe039426c2b6dc)
- [14315d6e58 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/14315d6e58acc56b38c36471dd3b11bacc383e27)
- [4d041b245c - Fix the package description (#1025367)](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/4d041b245cb62e970b71913f6bc54449ef5425be)
- [da53af9797 - Mark some DEP-8 tests as "Restrictions: superficial"](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/da53af9797d54a8d846c2ea73c68f1c8eabfe2a4)
- [77ecc4ac8a - Make tests depend on php-cli and not php](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/77ecc4ac8ab366ec0cf569013d030651a2757118)
- [2359e5ebb4 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/2359e5ebb42fce0a2b57eed97382b13ce14544d3)
- [25a25d79ff - Move the autoload test to a superficial DEP-8 test](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/25a25d79ff6e3f72052886f2e97a33b9757d40a2)

## Second week (49)

I did a small change on the release script to pass --no-interaction and --dev to the PHPUnit sandbox. On the Debian side I worked on twig-i18n-extension, mariadb-mysql-kbs 1.2.14 and tcpdf 6.6.0+dfsg1-1.

- [90b30946d4 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/90b30946d4eaf72b4fef3d9d69244b0193044d9b)
- [a08f2567b5 - Add --no-interaction and --dev on create_phpunit_sandbox function to create a release](https://github.com/phpmyadmin/phpmyadmin/commit/a08f2567b5c295945183bd019464e82e41490e5b)
- [1d10ca24ad - Mark 3.0.0-3 for release to experimental](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/1d10ca24ad40dde35e8863f6214ed4ecd160361c)
- [32f04f61a0 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/32f04f61a06066a8b91266448e085c615fed350a)
- [96c96d8ee5 - Add test/autoload.php to d/clean](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/96c96d8ee5439140781b0c007b3bd6e817126495)
- [f153072de1 - Add a dependency on phpab and php-phpmyadmin-motranslator](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/f153072de129693f0e30c209e27ef07b01fbe0f7)
- [dcbafad71a - Make build depends on php-phpmyadmin-motranslator](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/dcbafad71a63d2f37555fb7614e5a4b95711afcf)
- [96c00dfcb7 - Update d/copyright](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/96c00dfcb7aaa062fab7452370a6cc5c9b66941e)
- [e5191046d7 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/e5191046d7741962d9c2e2882589df682001dd91)
- [4928809818 - Update upstream source from tag 'upstream/4.0.1'](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/4928809818892d33f37a5339d684d9e09c4c6eb3)
- [f99bc58d80 - New upstream version 4.0.1](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/f99bc58d80e6b336951f81439fec845cceeab09f)
- [bd502c4127 - Send 1.2.14 to unstable](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/bd502c41270674493976c81a9b4a2743356f55d0)
- [6905caa3ff - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/6905caa3ff74b5a24ef3c091b41ab947c413952f)
- [633331d2da - Update upstream source from tag 'upstream/1.2.14'](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/633331d2da17d050d48dc26d48eb8a3c7053c05c)
- [4c2e5670f4 - New upstream version 1.2.14](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/4c2e5670f4762926e1768de7bea7514dc24c6cd5)
- [2a437e07db - Send 6.6.0+dfsg1-1 to unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/2a437e07dbdca51c6ca647038eef0bd37b0a52a4)
- [f3679d0c6f - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/f3679d0c6fcb38bdfbe5e7c7133aebd741f053ba)
- [a210b8fe5e - Merge tag 'upstream/6.6.0+dfsg1' into debian/latest](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/a210b8fe5e7a98d9596f7b73213eac7fe43cd160)
- [1d619034aa - New upstream version 6.6.0+dfsg1](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/1d619034aa328fd6e84c759df0bf8ce4a9d629ec)
- [4de9bfc955 - Use a relative path from root](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/4de9bfc955858996089fcbe5c55439671646ceef)

## Third week (50)

I fixed [#16988](https://github.com/phpmyadmin/phpmyadmin/issues/16988) and [#17944](https://github.com/phpmyadmin/phpmyadmin/issues/17944): the exports when no database is selected, and the creation of a view from the tree view button. I also merged [#393](https://github.com/phpmyadmin/phpmyadmin/pull/393), [#399](https://github.com/phpmyadmin/phpmyadmin/pull/399) and [#400](https://github.com/phpmyadmin/phpmyadmin/pull/400) on sql-parser, and marked phpmyadmin 4:5.1.4+dfsg1-2 for unstable.

- [9c4a90137d - Fix #16988 - export as CSV/JSON/SQL/... no database selected](https://github.com/phpmyadmin/phpmyadmin/commit/9c4a90137d8019286c1761804c6973e67d49f746)
- [d258e4ed14 - Fix mistake in pull-request #15121 to fix #15064 - do not display the SQL, execute it !](https://github.com/phpmyadmin/phpmyadmin/commit/d258e4ed142ca69efd0f68e9018529cb11f9d2f9)
- [12fe46b2df - Fix a typo in export files](https://github.com/phpmyadmin/phpmyadmin/commit/12fe46b2df9b508626037c8052f1945724f8f105)
- [aa0ca0a989 - Allow phpstan analyse to fail](https://github.com/phpmyadmin/phpmyadmin/commit/aa0ca0a98974476d468c7453dfb826d4a328c5a0)
- [6ab275e12b - Update phpstan baseline](https://github.com/phpmyadmin/phpmyadmin/commit/6ab275e12baa510c2bba16b3716d6ece3e102ef1)
- [ba23175d6a - Allow composer validate to fail](https://github.com/phpmyadmin/phpmyadmin/commit/ba23175d6a8abdb6c89e128b726ad57342ec38b8)
- [67f3901b74 - Add a ChangeLog entry for #17927](https://github.com/phpmyadmin/phpmyadmin/commit/67f3901b74eff70355d0dabce467d36115ab4991)
- [800b36b445 - Update sql-parser to fix #17422](https://github.com/phpmyadmin/phpmyadmin/commit/800b36b445fdb142b76dd7f083cefff6278c7b97)
- [49933b7fc4 - Add a ChangeLog entry for #17944](https://github.com/phpmyadmin/phpmyadmin/commit/49933b7fc4279807b389afb6d92d02695ecffcd8)
- [556aacbc0f - Fix #17944 - unable to create a view from tree view button](https://github.com/phpmyadmin/phpmyadmin/commit/556aacbc0f4da79b2bd73f4f2e7671ece48310e1)
- [ff440a0891 - Merge branch 'master' into 6.0.x](https://github.com/phpmyadmin/sql-parser/commit/ff440a08916c9bf8cf0822f420a23a2ae2a37a37)
- [a6da770b9d - Update out files](https://github.com/phpmyadmin/sql-parser/commit/a6da770b9d5b52b63262412dd76c0cef467abd23)
- [0b186b17ec - Merge #399 - Improving the Expression component's allowed keywords](https://github.com/phpmyadmin/sql-parser/commit/0b186b17eca3c257c85cd640c905aec620730e28)
- [6d873dbd96 - Merge #400 - Fixing tests on php 8.3 - making getMergedOptions protected](https://github.com/phpmyadmin/sql-parser/commit/6d873dbd96da44c67574ace39ad4c024cf0490dd)
- [e8120cb419 - Merge branch 'master' into 6.0.x](https://github.com/phpmyadmin/sql-parser/commit/e8120cb4198b72cf1e0fdae19bec96fee87a940d)
- [e29ed1e1b9 - Merge #393 - Fix #326 - Updated contexts to contain multipoint and multipolygon data types](https://github.com/phpmyadmin/sql-parser/commit/e29ed1e1b957d54d6e31bafd07a3f3fa371c92ab)
- [6b60b4984b - Bump codecov action to v3](https://github.com/phpmyadmin/sql-parser/commit/6b60b4984b6f4dbcbaa40c1f707be3b5d32b3466)
- [a3770778db - Do not add a final new line for context files](https://github.com/phpmyadmin/sql-parser/commit/a3770778db205fa42d34432ac1bfc32870a85e6b)
- [c22e73ea8a - Mark 4:5.1.4+dfsg1-2 for unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c22e73ea8a7f9aa54f32c3972107065b51967329)
- [bb4de101ba - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/bb4de101ba0acb7ca3261ca05056156215a7b605)
- [6c30d0dee2 - Update 2FA patch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6c30d0dee2e6da1902e4b528f20551503140fe56)
- [5c636bcf6c - Make build requirements force the versions in unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/5c636bcf6cd12faefbca1612b261dfc89b307730)
- [e9e4f219e0 - Widen a lintian override](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e9e4f219e0d5aef2b4bbc47bdb8b2385e7b31634)
- [557b22a657 - Add php-code-lts-u2f-php-server and php-curl to tests](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/557b22a65700971e8100592365147a8665e112dd)
- [baf21165ee - Add a patch to suggest ext-sodium](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/baf21165eec238e4ae4904ed754e2d8f929d013b)
- [fbf39b3dde - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/fbf39b3ddee911ee9c0616c4f0bba9288d247471)
- [d6b95661b6 - Add a patch to update documentation for 2FA packages](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d6b95661b6881d3ae3fb615667dd32d0a41b4f3c)
- [860cefb992 - Add autoload for php-code-lts-u2f-php-server](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/860cefb992d96702f0759cda477dd77ddda58d5e)
- [3bb1403f17 - Add the PHP PEAR team as Uploaders](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/3bb1403f175f6679d72ceadd1a4385d0fceff50e)
- [4e98f04ea1 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/4e98f04ea1ea1d1eef27268d820187f3d34e5f00)
- [0762ffc985 - Add an override to pkg-php-tools autoloaders](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/0762ffc9854c50158e11d343b348d45bfa3b3ca2)
- [c063282e3a - testing/horust: new aport](https://gitlab.alpinelinux.org/alpine/aports/-/commit/c063282e3a4a5a9281fa3e2dac12b1887fc221ca)

## Fourth week (51)

I merged [#17975](https://github.com/phpmyadmin/phpmyadmin/pull/17975) to add support for more PSR-7 packages, with tests for all the supported implementations. On the website I marked 5.2 as current. On the Debian side I sent sql-parser 5.5.0-2, tcpdf 6.6.2+dfsg1-1 and google-recaptcha 1.2.4-5 to unstable.

- [9c85aa6dc1 - Improve tests for all supported PSR-7 implementations](https://github.com/phpmyadmin/phpmyadmin/commit/9c85aa6dc1d2f4d7f574159e4765b79f7e356f45)
- [f023638693 - Add tests for PSR-7 libs to the CI](https://github.com/phpmyadmin/phpmyadmin/commit/f0236386939b7181e0ae5dfa8f567605b4cfc25d)
- [389f7ffb19 - Add tests for all supported PSR-7 implementation](https://github.com/phpmyadmin/phpmyadmin/commit/389f7ffb192ef952aec6adba57a4f23448f55772)
- [8ee2afba7e - Merge #17975 - Add support for more PSR-7 packages](https://github.com/phpmyadmin/phpmyadmin/commit/8ee2afba7e9e8966ff450877488db7c609dca8ac)
- [cfd52a02b9 - Mark 5.2 as current](https://github.com/phpmyadmin/website/commit/cfd52a02b9926d14ab56ebe6a9ba093bd1228910)
- [f7dceda52c - Bump codecov/codecov-action to v3](https://github.com/phpmyadmin/website/commit/f7dceda52c3dd0693b35da9b758d860590f16eb6)
- [d17d593126 - Merge #402 - Ref #401 - Add search keywords in the composer.json](https://github.com/phpmyadmin/sql-parser/commit/d17d5931265cf34a347414a19ee211a4e735cc9a)
- [19a07f012a - Add a CHANGELOG entry for #400](https://github.com/phpmyadmin/sql-parser/commit/19a07f012a41a034886f6937356878edf9d4e7dc)
- [a9c4119090 - Send 5.5.0-2 to unstable](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/a9c41190903365442da459b7b2935b3b8f865673)
- [29617ea2cd - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/29617ea2cdd63838a9362999b337e19ea3859d11)
- [e88a356350 - Added a patch for PHP 8.2 dynamic properties (Closes: #1026250)](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/e88a356350b67cb79749f1d90d32ae9830840112)
- [b77eb1f2ca - Bump Standards-Version to 4.6.2](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/b77eb1f2cafb41b83092b24944c4e88218f684a5)
- [0eb0dfd6df - Send 6.6.2+dfsg1-1 to unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/0eb0dfd6df12453abbe6509fabf966c572714f8c)
- [1f5b71dd32 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/1f5b71dd3265517d32813b3adb1e57c2059acac5)
- [80754a0049 - Update Standards-Version: to 4.6.2](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/80754a00493fa23b850eac3b996a07931027114a)
- [cb9e085225 - Refresh the example patch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/cb9e08522578461679a1c283ddc64484b88eef33)
- [0d4337389d - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/0d4337389db28c3db72e3e83c0ccd7d79d838c99)
- [c54a84ba26 - Update upstream source from tag 'upstream/6.6.2+dfsg1'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/c54a84ba26ffa8f0e91e248cf7397cc1aac9943c)
- [8820e3dc77 - New upstream version 6.6.2+dfsg1](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/8820e3dc7780c482d0b49d7d754a85a9e2c69141)
- [6369c5e8bf - Send 1.2.4-5 to unstable](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/6369c5e8bfb54dbcd7d5d70574ccad63941f192a)
- [376a16102a - Update d/changelog](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/376a16102abb30faab6c49030f9bd1595d4ce876)
- [bac2cd6ec5 - Bump Standards-Version to 4.6.2](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/bac2cd6ec562a78ba6fb05869316798cd74dabcd)
- [df87326ff4 - Move this package to php-team/pear](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/df87326ff49cb141268a7cd33b377987b730d9d2)
- [f0a92558fa - Set PHP PEAR as Maintainer of google-recaptcha](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/f0a92558faadf225e7e8d81d7e060b8c5a775cda)
- [adeddefc2d - testing/horust: upgrade to 0.1.6](https://gitlab.alpinelinux.org/alpine/aports/-/commit/adeddefc2d510bda3fc2116b0890b5dace4aeb3b)

## Fifth week (52)

I removed the modals from the login page ([#17999](https://github.com/phpmyadmin/phpmyadmin/issues/17999)). On twig-i18n-extension I dropped PHP 7.1, added testing on PHP 8.1 and 8.2 and added XSS test examples.

- [19c4657f39 - #17999 - Remove modals from the login page](https://github.com/phpmyadmin/phpmyadmin/commit/19c4657f3931c65c2884a4870d297134568a9f2e)
- [26fac73178 - Ref #9 - Add XSS test examples](https://github.com/phpmyadmin/twig-i18n-extension/commit/26fac73178882cd796e2385750a383e67768da11)
- [7f5d2ff230 - Drop PHP 7.1](https://github.com/phpmyadmin/twig-i18n-extension/commit/7f5d2ff230cff7e085acfe7183c11490ec9a4988)
- [c034171a46 - Upgrade phpstan](https://github.com/phpmyadmin/twig-i18n-extension/commit/c034171a462fc0697177ff7e25fcd7b18a100edc)
- [5cb09019e6 - Add composer config allow-plugins](https://github.com/phpmyadmin/twig-i18n-extension/commit/5cb09019e62c7a6cdd54366e033ba3435359e438)
- [d8b606a59e - Add testing on PHP 8.1 and 8.2 and add php nightly](https://github.com/phpmyadmin/twig-i18n-extension/commit/d8b606a59e7879819ee6d003458dd9e3f03550a7)
- [bb3d581041 - Bump GitHub actions](https://github.com/phpmyadmin/twig-i18n-extension/commit/bb3d581041ddb7ed72968d891a52bccec5854347)

