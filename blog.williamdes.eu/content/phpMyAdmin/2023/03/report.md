+++
title = "Report for March 2023"
date = 2023-03-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for March 2023.

<!-- more -->

In March 2023 my focus was bug fixing on phpmyadmin and sql-parser.

## First week (10)

I fixed [#16199](https://github.com/phpmyadmin/phpmyadmin/issues/16199), the dragging of tables in the designer, and [#17654](https://github.com/phpmyadmin/phpmyadmin/issues/17654) for the password change of an unprivileged user on MySQL 5.7.37 and newer. On docker I merged [#394](https://github.com/phpmyadmin/phpmyadmin/pull/394) to add a TZ environment variable for the PHP date.timezone, and on sql-parser I merged [#424](https://github.com/phpmyadmin/phpmyadmin/pull/424) and [#428](https://github.com/phpmyadmin/phpmyadmin/pull/428).

- [af4852b228 - Fix #17654 - Unprivileged user cannot change password on MySQL >= 5.7.37](https://github.com/phpmyadmin/phpmyadmin/commit/af4852b2283123a5cf499b8190211008e2f1511b)
- [00a4480d3a - Adjust phpunit config: display details for warnings, notices, errors](https://github.com/phpmyadmin/phpmyadmin/commit/00a4480d3a324c330ace7708bbb53f38d74ed979)
- [cef74da856 - Add a ChangeLog entry for e8b1437fff4](https://github.com/phpmyadmin/phpmyadmin/commit/cef74da856b00e5db5caffe45a096fe570b61729)
- [e8b1437fff - Merge #18225 - Make database and web server info separately configurable on `$cfg['ShowServerInfo']`](https://github.com/phpmyadmin/phpmyadmin/commit/e8b1437fff4f29362e48be0094d238512ade73cf)
- [3a40a3069a - Remove argument to DesignerMove.mouseUp since the function has no parameters](https://github.com/phpmyadmin/phpmyadmin/commit/3a40a3069a3e31e5ced8a17bb5e309a07069e808)
- [ab5fc856ad - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/ab5fc856adc5be559dc26b79ed67e0a2ffad0a42)
- [b55c951503 - Fix #16199 - Dragging of tables in designer, adjust registerTeardown](https://github.com/phpmyadmin/phpmyadmin/commit/b55c9515031ae995ea3098399ae62d454c233521)
- [35db930fc8 - Fix #16199 - Dragging of tables in designer, adjust .off()](https://github.com/phpmyadmin/phpmyadmin/commit/35db930fc8a5027d160fb4ba4ca772989088ef4d)
- [62ce5a7aea - Add a ChangeLog entry for #16199](https://github.com/phpmyadmin/phpmyadmin/commit/62ce5a7aeab53a2ed15c16b6e72a6e6cfdc94956)
- [05914b9f10 - Merge #18155 - Fix #16199 - Dragging of tables in designer](https://github.com/phpmyadmin/phpmyadmin/commit/05914b9f10e58d59dd8c53b497333aaf6ee4e12c)
- [ce1d0bf34c - Add a ChangeLog entry for ae355d99b1](https://github.com/phpmyadmin/phpmyadmin/commit/ce1d0bf34caa54d512a9973ec0aead58ad61b6e1)
- [ae355d99b1 - Merge #18177 - Fix "IS NULL" is shown for non-nullable columns on search page](https://github.com/phpmyadmin/phpmyadmin/commit/ae355d99b1485f0a1f3c477ae081237caadb0aec)
- [531e8798f2 - Add a ChangeLog entry for #16451](https://github.com/phpmyadmin/phpmyadmin/commit/531e8798f29ef5265732e6df29d8260ee02ec9c1)
- [a8bfc4ceea - Merge #18123 - Ref #16451 - Increase password characters limit to 2000 during login](https://github.com/phpmyadmin/phpmyadmin/commit/a8bfc4ceeae0edee317e19cb195f1150c487a658)
- [05230492aa - Add ChangeLog entries for b3c35c2045, 80d7f0dfa3, #18196, #18093](https://github.com/phpmyadmin/phpmyadmin/commit/05230492aa0f91a440140e28e132b50219187792)
- [33f9b57e18 - Add examples for Google reCapatcha](https://github.com/phpmyadmin/phpmyadmin/commit/33f9b57e184b16b8d2ccf6adb94982930d9b9f4d)
- [0006406e35 - Add a CHANGELOG entry for #133](https://github.com/phpmyadmin/docker/commit/0006406e352ddd5addd5122de53fe354307b2460)
- [7f5a48b7c3 - Merge #394 - Fix #133 - Add TZ env var to change PHP date.timezone](https://github.com/phpmyadmin/docker/commit/7f5a48b7c3ac2b820be1c0d4808f7277640a70b8)
- [bb70a46858 - Add back a /sessions volume for sessions persistence](https://github.com/phpmyadmin/docker/commit/bb70a4685815832a6663cd00e8fb042a26aa5459)
- [7c26e5c602 - Fixup scrutinizer config](https://github.com/phpmyadmin/sql-parser/commit/7c26e5c6023ae3ecb4e60b45c5a259b4aec767f3)
- [b80f32b998 - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/b80f32b9983724fc7f8868c2f77ac794ee8b2d11)
- [1ac927f30a - Improve type handing of Formatter::isClause](https://github.com/phpmyadmin/sql-parser/commit/1ac927f30a3419ad5481abd14e5c43f6b83d39fa)
- [16d2f0f724 - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/16d2f0f724ac85445707cc7b74becb7d526597d8)
- [95858fb3e8 - Add exclude to phpunit config to exclude data folders in ./tests/Tools](https://github.com/phpmyadmin/sql-parser/commit/95858fb3e8646944cab9ba7900c37344fe5532dc)
- [0f0d385bcf - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/0f0d385bcffd75277834ccfe2ff39d23e39e22b7)
- [57fc73f943 - Rename ContextTest to TestContext for phpunit 10 to be happy](https://github.com/phpmyadmin/sql-parser/commit/57fc73f943604258e7bff3fe87be9b774ce1484f)
- [c32fd1cb37 - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/c32fd1cb37e573d3b1965c065170f2266b0bf6ef)
- [dd51bda04b - Add a CHANGELOG entry for #226](https://github.com/phpmyadmin/sql-parser/commit/dd51bda04b84e9bebdb5aa3f88fc7643cbd6fffc)
- [76b8ae1a01 - Merge #424 - Fix #226 - Ignore end of comment string at the end of queries with MySQL-specific commands](https://github.com/phpmyadmin/sql-parser/commit/76b8ae1a01d179870b361b6bb49492700e701398)
- [d27969ac84 - Remove branch restriction for PRs](https://github.com/phpmyadmin/sql-parser/commit/d27969ac844a23efaa495d1938eb924d321287c8)
- [3569ec1e14 - Improve the testParsephpMyAdminDump to re-build all the file](https://github.com/phpmyadmin/sql-parser/commit/3569ec1e14be9b856bf348d94239b5a332941bf8)
- [9d475027d8 - Add a CHANGELOG entry for 7f8469460c](https://github.com/phpmyadmin/sql-parser/commit/9d475027d88d0e5afc363890495a3f21108dd972)
- [7f8469460c - Fix `TransactionStatement::build()` "Call to a member function build() on null"](https://github.com/phpmyadmin/sql-parser/commit/7f8469460c20b276ff04ea987c3f1eaebfac80a7)
- [049ed2d804 - Add test cases for parsing MySQL special comments](https://github.com/phpmyadmin/sql-parser/commit/049ed2d8048d6e5f862b18bedd7504b2e685251e)
- [6677c78cad - Make GitHub workflows run for PRs to this branch too](https://github.com/phpmyadmin/sql-parser/commit/6677c78cad7d3c729566df48fe75a195e7cb6046)
- [62533e808a - Also exclude asciiMap from .out files](https://github.com/phpmyadmin/sql-parser/commit/62533e808aaa59465511ed8a1fa0388c69bf918e)
- [a6efc9b387 - Fix coding standard issues after #428](https://github.com/phpmyadmin/sql-parser/commit/a6efc9b38742812cd064b4a6993f4f7d4402e188)
- [e2c0e89bff - Add a CHANGELOG entry for #428](https://github.com/phpmyadmin/sql-parser/commit/e2c0e89bff71ab0829e3547514dac1fc9aec5478)
- [b5c995a928 - Merge #428 - Fix TokensList::getPrevious which was not able to reach very first token](https://github.com/phpmyadmin/sql-parser/commit/b5c995a92818dbaf85b90e88d58aba2b9734a2e3)
- [a5b5b37465 - Remove static properties from data files](https://github.com/phpmyadmin/sql-parser/commit/a5b5b374653ff0d5c7d5eeea4a00df41750fe39e)
- [b395fcf74b - Implement a custom JSON serializer on top of the existing one to remove static properties from data files](https://github.com/phpmyadmin/sql-parser/commit/b395fcf74b42ef9d0ffd400ed165ceaa758dd601)
- [27c7201e7c - Add a test case for ALTER TABLE with an INDEX expression](https://github.com/phpmyadmin/sql-parser/commit/27c7201e7c7177c322f77ee66f951598920d5650)
- [cee3e67c2e - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/cee3e67c2eba82e83b3e9472e3ff30d7fd5f329a)
- [9adabf4638 - Add a new CREATE VIEW test case](https://github.com/phpmyadmin/sql-parser/commit/9adabf4638c35516e22f529099b410ef3f591e98)
- [007653a0a5 - Add new SELECT test case](https://github.com/phpmyadmin/sql-parser/commit/007653a0a5d260c05647cf944ef36f8a987c00d3)

## Second week (11)

A week of translation updates. On the website I switched the tests to Python 3, and on sql-parser I merged [#423](https://github.com/phpmyadmin/phpmyadmin/pull/423) for the PARTITION syntax errors ([#377](https://github.com/phpmyadmin/phpmyadmin/pull/377)) and [#432](https://github.com/phpmyadmin/phpmyadmin/pull/432) for ALTER TABLE RENAME COLUMN ([#430](https://github.com/phpmyadmin/phpmyadmin/pull/430)).

- [c77ddecc3c - Translated using Weblate (Chinese (Simplified))](https://github.com/phpmyadmin/phpmyadmin/commit/c77ddecc3c0670eecb278eff6c16faf1557f419c)
- [35427182d9 - Translated using Weblate (German)](https://github.com/phpmyadmin/phpmyadmin/commit/35427182d9b3471d573b012a479c94bcc32cce02)
- [4429b9894c - Translated using Weblate (Slovenian)](https://github.com/phpmyadmin/phpmyadmin/commit/4429b9894cf7e22838484b70d81e94d584a90634)
- [80588ef51a - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/80588ef51a9e07be106a5570b20287026a19b79f)
- [e2e29a371c - Translated using Weblate (Dutch)](https://github.com/phpmyadmin/phpmyadmin/commit/e2e29a371c4ae4bc72125f7d144720387bf1a74f)
- [1096b1ef0b - Translated using Weblate (Estonian)](https://github.com/phpmyadmin/phpmyadmin/commit/1096b1ef0b1fe7bf6e20abb70a28c87dd916fffe)
- [8cd95fb2c5 - Translated using Weblate (Italian)](https://github.com/phpmyadmin/phpmyadmin/commit/8cd95fb2c508e28ce5a9f68f7ce24cdc7b2daf1a)
- [75c4f17a54 - Translated using Weblate (Spanish)](https://github.com/phpmyadmin/phpmyadmin/commit/75c4f17a54d5a407b4791adca0d40bc66ffb2a3a)
- [84380a4d36 - Translated using Weblate (Romanian)](https://github.com/phpmyadmin/phpmyadmin/commit/84380a4d363d8b6b79c6be3536c064ef769e133e)
- [163ec255a4 - Translated using Weblate (Polish)](https://github.com/phpmyadmin/phpmyadmin/commit/163ec255a4ead50b955c30d6eb909908d8c3a1f5)
- [5ea2ba77e8 - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/phpmyadmin/commit/5ea2ba77e859a2d78c53bb84b763d00ff5e84812)
- [fa8783703e - Translated using Weblate (Portuguese)](https://github.com/phpmyadmin/phpmyadmin/commit/fa8783703e862273634e3778220ae9b53dd7aed4)
- [1fa86aa0f6 - Translated using Weblate (Chinese (Traditional))](https://github.com/phpmyadmin/phpmyadmin/commit/1fa86aa0f606ce9f66f7ff2d2e9e162477fe357c)
- [2bc19475b5 - Translated using Weblate (Portuguese (Brazil))](https://github.com/phpmyadmin/phpmyadmin/commit/2bc19475b58811a49ce92859d6e254bd2321d73c)
- [6645c8305f - Translated using Weblate (Japanese)](https://github.com/phpmyadmin/phpmyadmin/commit/6645c8305fdf7edc328eba531419c0bc4ebb5bba)
- [e8889f4fc7 - Translated using Weblate (Turkish)](https://github.com/phpmyadmin/phpmyadmin/commit/e8889f4fc7f6630253e9cb790368129f667cce26)
- [154ad2fde9 - Translated using Weblate (Czech)](https://github.com/phpmyadmin/phpmyadmin/commit/154ad2fde91b77f05a09739fb8d7b5f9e1adaf15)
- [8895ea8209 - Translated using Weblate (Ukrainian)](https://github.com/phpmyadmin/phpmyadmin/commit/8895ea8209f2038e5247f59473651ef4b4a49ce2)
- [11abd923a4 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/11abd923a4c5181d2d93387eafe0d7a1538eb896)
- [69f3660177 - Switch tests to Python 3.x](https://github.com/phpmyadmin/website/commit/69f3660177c60f94f691658d6f4e6a794ad86419)
- [2f0566dfe5 - Fix a coding standard mistake](https://github.com/phpmyadmin/sql-parser/commit/2f0566dfe56b0a95a3c23b39fdea949a7b6310e1)
- [e6b8c5f03c - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/e6b8c5f03cd489056e86aba262443c6c7344de9b)
- [dca8142ec3 - Add a CHANGELOG entry for #377](https://github.com/phpmyadmin/sql-parser/commit/dca8142ec364e5f72ee4e3d7a549cab4c276aaa0)
- [f24aa16776 - Merge #423 - Fix #377 - `PARTITION` syntax errors](https://github.com/phpmyadmin/sql-parser/commit/f24aa167769dc492487f2240dec23e5c393cd888)
- [72c52dc16e - Adjust data after fixes for #377](https://github.com/phpmyadmin/sql-parser/commit/72c52dc16e7bad5a73789f116e6dffc410fc416e)
- [0ae405f73a - Use a string for the SQL text](https://github.com/phpmyadmin/sql-parser/commit/0ae405f73abb9bfc51044ffa6da11c77c3b1aeac)
- [84caccb2e5 - Add more queries to test #377](https://github.com/phpmyadmin/sql-parser/commit/84caccb2e5e80b97253e7322469b5b1ed97ac16b)
- [a7aaeba9d9 - Add a CHANGELOG entry for #430](https://github.com/phpmyadmin/sql-parser/commit/a7aaeba9d919ada19a3b4e1ab7205e53baa86a55)
- [8399efa3da - Merge #432 - Fix #430 - `ALTER TABLE … RENAME COLUMN … TO …` is not understood by the parser/linter](https://github.com/phpmyadmin/sql-parser/commit/8399efa3dabfb8ecba700342a59312f2b2bbaa6b)

## Third week (12)

I archived the 2019 and 2020 ChangeLog entries, and merged [#18280](https://github.com/phpmyadmin/phpmyadmin/pull/18280) to not parse the SQL when no tracking is in progress.

- [24d843cbdd - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/24d843cbddf108a88607fc97d7f0db90baf8dc42)
- [2208f98ed0 - Archive 2019 and 2020 ChangeLog entries](https://github.com/phpmyadmin/phpmyadmin/commit/2208f98ed01c54878b741d28944cfa3d7b469e19)
- [dca52a4357 - Merge branch 'QA_5_1' into QA_5_2](https://github.com/phpmyadmin/phpmyadmin/commit/dca52a435783e6032961f4c4c952224d7e98ed58)
- [a90c797014 - Merge branch 'QA_5_0' into QA_5_1](https://github.com/phpmyadmin/phpmyadmin/commit/a90c7970140c65d775e92974582d2f0b4fa9b8f8)
- [5f12e75bfd - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/5f12e75bfd014b537442574e4147bd177911ecc4)
- [472c4442b4 - Merge branch 'QA_5_1' into QA_5_2](https://github.com/phpmyadmin/phpmyadmin/commit/472c4442b4ec3632b0e6f84a613fc4f04d36f84c)
- [1fa01593db - Merge branch 'QA_5_0' into QA_5_1](https://github.com/phpmyadmin/phpmyadmin/commit/1fa01593dba2cccb03a3b3796913e085226a42b9)
- [ac52485973 - Merge #18280 - Ref #18249 - Don't parse SQL if no tracking is in progress](https://github.com/phpmyadmin/phpmyadmin/commit/ac52485973dd52274a7df327c2cc46b21188715c)
- [212ee22bef - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/212ee22bef97747b3b2139cc2e13c9679a21d5db)
- [55be476f65 - Merge #437 - run_generators.sh: use project root as base dir](https://github.com/phpmyadmin/sql-parser/commit/55be476f6516f0a80cd1ad45f9d2b706a012b3c2)

## Fourth week (13)

On sql-parser I merged [#436](https://github.com/phpmyadmin/phpmyadmin/pull/436) to fix the management of ALTER USER with the IDENTIFIED WITH/VIA/BY option ([#431](https://github.com/phpmyadmin/phpmyadmin/pull/431)). I also cleaned the .out files by removing the project root path and applying JSON_UNESCAPED_SLASHES.

- [e423ef1681 - Update the psalm baseline](https://github.com/phpmyadmin/sql-parser/commit/e423ef16815147abd3b4ab3c30fb62ebad1cc74d)
- [c54108108a - Fix new property names on 6.0 for the custom serializer](https://github.com/phpmyadmin/sql-parser/commit/c54108108a23b82efd47d7665c78431a0634daa6)
- [15313589da - Merge branch 'master' into 6.0.x](https://github.com/phpmyadmin/sql-parser/commit/15313589da1463556b216d36fcdca7a3faa7e292)
- [6c3f09b4ac - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/6c3f09b4acf50ef04b41b361a926efbb48fb33ec)
- [c1cf0ba6d5 - Apply JSON_UNESCAPED_SLASHES on .out files](https://github.com/phpmyadmin/sql-parser/commit/c1cf0ba6d5af36c910a48f944032900b98e50c1e)
- [9dbfffa7c8 - Remove the project root path from .out files](https://github.com/phpmyadmin/sql-parser/commit/9dbfffa7c892a1f6ec244c6367add3c23f93925f)
- [3a6d2658a3 - Remove not needed anymore ascii workaround](https://github.com/phpmyadmin/sql-parser/commit/3a6d2658a3afc951f94e48e12a3e0fd5e365c7b3)
- [d896f577d6 - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/d896f577d6c225f93a86740c7151ce4bc8e62067)
- [3cf7606ad3 - Ref #360 - load the default context to avoid side effects](https://github.com/phpmyadmin/sql-parser/commit/3cf7606ad351abc687f6aed0c227536846cb5065)
- [ff8d4f322c - Add a CHANGELOG entry for #431](https://github.com/phpmyadmin/sql-parser/commit/ff8d4f322cb0731ad0fe2e2dcba66eb1548a5df5)
- [2b92a492aa - Update .out files after #436](https://github.com/phpmyadmin/sql-parser/commit/2b92a492aa885667736d340252d4442b0152cee4)
- [d1158902c0 - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/d1158902c06d01fd16bd044435270e8cd1553691)
- [cb7524518a - Add more test cases for user `IDENTIFIED WITH/VIA/BY`](https://github.com/phpmyadmin/sql-parser/commit/cb7524518a1f546b4ef4192d4a4de0aa894a5b19)
- [39e9ec4e9f - Merge #436 - Fix #431 - management of ALTER USER when used with IDENTIFIED WITH/VIA/BY option](https://github.com/phpmyadmin/sql-parser/commit/39e9ec4e9fb4eca3aeeb8af5e0255ca2ca43cd7e)

