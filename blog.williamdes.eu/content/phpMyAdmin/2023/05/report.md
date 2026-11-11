+++
title = "Report for May 2023"
date = 2023-05-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for May 2023.

<!-- more -->

In May 2023 my focus was sql-parser and a batch of dependency updates on phpmyadmin.

## First week (18)

I merged [#18223](https://github.com/phpmyadmin/phpmyadmin/pull/18223) to add the $cfg['AllowSharedBookmarks'] configuration option, and [#18252](https://github.com/phpmyadmin/phpmyadmin/pull/18252) for [#17654](https://github.com/phpmyadmin/phpmyadmin/issues/17654). I also fixed the colspan of the actions column on the database table list and the query builder not replacing a table name by its alias in the WHERE block ([#18212](https://github.com/phpmyadmin/phpmyadmin/issues/18212)).

- [3156c39492 - Add a ChangeLog entry for 25bd2ac711](https://github.com/phpmyadmin/phpmyadmin/commit/3156c39492c7d29d789d2e883b94b03ccfd76dda)
- [25bd2ac711 - Merge #18223 - Add a configuration option to allow shared bookmarks: `$cfg['AllowSharedBookmarks']`](https://github.com/phpmyadmin/phpmyadmin/commit/25bd2ac7118253d8f5bdddb51000ad9b24a01116)
- [b12b3f2827 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/b12b3f28273cdc229476aafb84918e258a5acdf3)
- [3b4b4e287a - Fix tests workflow for PSR7 libraries](https://github.com/phpmyadmin/phpmyadmin/commit/3b4b4e287abac0abc7713eda7598485b4bbfd932)
- [37bd7d981e - Add a ChangeLog entry for dca9657432](https://github.com/phpmyadmin/phpmyadmin/commit/37bd7d981e698399db688e71e0b49547296c8d7c)
- [ecc6c7f3da - Merge #18363 - Fix colspan number for actions column on database table list](https://github.com/phpmyadmin/phpmyadmin/commit/ecc6c7f3da6a868a9d239e103836faf0f4968c1b)
- [1a146fa114 - Add a ChangeLog entry for 3e023ca0e3](https://github.com/phpmyadmin/phpmyadmin/commit/1a146fa1145c18278e3751ca6d87b206f715c04c)
- [3e023ca0e3 - Merge #18221 - Keep the criteria box collapsed by the user when un-checking the criteria checkbox](https://github.com/phpmyadmin/phpmyadmin/commit/3e023ca0e3e4846525c0122695289578bd293432)
- [b5899c2d53 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/b5899c2d53ac8e778c5a6af77dbffce0a429e9b3)
- [f17ba4badf - Add a ChangeLog entry for #18212](https://github.com/phpmyadmin/phpmyadmin/commit/f17ba4badfe516202ff0e81c2b3cfa56c2dfa9ae)
- [61374f4696 - Merge #18233 - Fix #18212 - Query Builder doesn't replace a table name with it's alias in the `WHERE` block](https://github.com/phpmyadmin/phpmyadmin/commit/61374f4696a23ec6e8334fe4e0cbe3496163cb1d)
- [ae115946b3 - Merge #18360 - Remove space and align right](https://github.com/phpmyadmin/phpmyadmin/commit/ae115946b365201f6927178816f942aa3e0bb90d)
- [8a6a0227c1 - Add a ChangeLog entry for #18330](https://github.com/phpmyadmin/phpmyadmin/commit/8a6a0227c143ab7f13c62fa49b69b0b1c909e160)
- [6c0d580c22 - Merge #18378 - Fix #18330 - Solved TypeError when no-datetime field is modified](https://github.com/phpmyadmin/phpmyadmin/commit/6c0d580c22fb546b5b41e3254a8119c368a0f07c)
- [942d969bd1 - Update baselines](https://github.com/phpmyadmin/phpmyadmin/commit/942d969bd1d089f0f8c283887859f652131006bc)
- [2b5f294db3 - Add a ChangeLog entry for 049de52390](https://github.com/phpmyadmin/phpmyadmin/commit/2b5f294db39f1cb205119fabf47df7bd9d05e394)
- [049de52390 - Merge #18385 - Add CVE MITRE link to allowed domains and use cve.org](https://github.com/phpmyadmin/phpmyadmin/commit/049de52390353fb07ed379d3e0a3fd307c49ebff)
- [5f918c2797 - Update the phpstan baseline](https://github.com/phpmyadmin/phpmyadmin/commit/5f918c2797d0dee43e3e91e971379ac47fc6e3b3)
- [8027a84d66 - Use quoteString intead of escapeString](https://github.com/phpmyadmin/phpmyadmin/commit/8027a84d66301ba20551b6cb53afeea6c72f3e68)
- [801a2ec7f5 - Update psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/801a2ec7f57794f263320a2b0bee1fe0528a2c0a)
- [5775005692 - Fix LintControllerTest](https://github.com/phpmyadmin/phpmyadmin/commit/577500569265a17709bf3c5b23ca70d456be5f76)
- [66f607c608 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/66f607c6088292e9cc6c1706284d4732279319cc)
- [75a83d09a2 - Add ChangeLog entries for 4a965c6d15 and #17654](https://github.com/phpmyadmin/phpmyadmin/commit/75a83d09a20831b716a38ea52ff5736bfb008a33)
- [4a5180c901 - Merge #18252 - Fix #17654 - Unprivileged user cannot change password on MySQL >= 5.7.37](https://github.com/phpmyadmin/phpmyadmin/commit/4a5180c9010ae25a3e72546db4ae7aaf420d4638)
- [4a965c6d15 - Replace slim/psr7 by nyholm/psr7](https://github.com/phpmyadmin/phpmyadmin/commit/4a965c6d151b6dc48a821e45fe995c1535ddb523)

## Second week (19)

On sql-parser I merged [#446](https://github.com/phpmyadmin/phpmyadmin/pull/446) to re-design part of DESCRIBE ([#445](https://github.com/phpmyadmin/phpmyadmin/pull/445)). I also merged [#443](https://github.com/phpmyadmin/phpmyadmin/pull/443) for the LEFT JOIN, JOIN and INNER JOIN support on UpdateStatement ([#260](https://github.com/phpmyadmin/phpmyadmin/pull/260)) and [#442](https://github.com/phpmyadmin/phpmyadmin/pull/442) to re-implement the CALL statements parsing ([#372](https://github.com/phpmyadmin/phpmyadmin/pull/372)).

- [1420af7552 - Fix #445 - re-design DESCRIBE](https://github.com/phpmyadmin/sql-parser/commit/1420af7552673f5f9131e78d51f0a1ddf395e5a4)
- [8415a289e6 - Ref #445 - Add more test cases for DESCRIBE builder](https://github.com/phpmyadmin/sql-parser/commit/8415a289e6b4f58c24ccaec6e47f843e6e71ed5a)
- [be57b5c433 - Add a CHANGELOG entry for a900cde492](https://github.com/phpmyadmin/sql-parser/commit/be57b5c4333bfc1d6cab12f8b5fe44ce90478feb)
- [a900cde492 - Implement support for `TABLE` and `REPLACE` statements on DESCRIBE](https://github.com/phpmyadmin/sql-parser/commit/a900cde4925dcba2da5f4cc6a68bdd0c189945bc)
- [fbb763e947 - Document context files and the way they work](https://github.com/phpmyadmin/sql-parser/commit/fbb763e947040f4849befe0189a9dbd1c83aee2f)
- [cddd0f1659 - Ref #447 - Add test cases for `TABLE` statements](https://github.com/phpmyadmin/sql-parser/commit/cddd0f1659e1d1dddc9850ca3e250e3c6e39043a)
- [876af83bf3 - Add a create table test case](https://github.com/phpmyadmin/sql-parser/commit/876af83bf30e975fd51436b6f7c40ec9dd04b7d3)
- [794c74c5c2 - Ref #445 - Add more test cases for DESCRIBE](https://github.com/phpmyadmin/sql-parser/commit/794c74c5c2cbe7f7b85ad7174e573aae08fa3b92)
- [6a8e2dfc6b - Ref #445 - Rename test files](https://github.com/phpmyadmin/sql-parser/commit/6a8e2dfc6b86f4bc212deb203a5e4251af9b46f1)
- [7ca3bfee27 - Ref #445 - Add more test cases for DESCRIBE](https://github.com/phpmyadmin/sql-parser/commit/7ca3bfee274c052f541f2354ef2edb4c3f232736)
- [2778f9345a - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/2778f9345a8cc3f2c793b9a83fcc513d40796951)
- [c40f718f14 - Add a CHANGELOG entry for #260](https://github.com/phpmyadmin/sql-parser/commit/c40f718f1478f0caed3c9261ee84d6108944cc74)
- [72a170acb3 - Merge #443 - Fix #260 - implement support for `LEFT JOIN`, `JOIN`,`INNER JOIN` on `UpdateStatement`](https://github.com/phpmyadmin/sql-parser/commit/72a170acb3be4ced4cef718db5473dd732c26c24)
- [7b1f1e5c22 - Add a CHANGELOG entry for #372](https://github.com/phpmyadmin/sql-parser/commit/7b1f1e5c22d3226c7dbb10d4910a2064d75f77e9)
- [051584677e - Merge #442 - Fix #372 - re-implement CALL statements parsing](https://github.com/phpmyadmin/sql-parser/commit/051584677e60cf9382fed3606e990b3181073fe6)
- [b0fe7a6f7e - Ref #444 - Update test data for 5.8](https://github.com/phpmyadmin/sql-parser/commit/b0fe7a6f7eef3c089ee3926e8bca768b48ccc588)
- [d47024b9d9 - Merge #444 - Update OptionsArray phpdoc & add tests for `SET GLOBAL`](https://github.com/phpmyadmin/sql-parser/commit/d47024b9d9cb38d345655dd75fd8c18e59efc472)
- [f1b2b1302e - testing/horust: upgrade to 0.1.7](https://gitlab.alpinelinux.org/alpine/aports/-/commit/f1b2b1302ea98267887856e85e747e599fcb3f81)

## Third week (22)

I bumped a batch of dependencies, including google/recaptcha 1.3.0 for PHP 8 support, and required slim/psr7 1.4.1 for CVE-2023-30536. I also merged [#18452](https://github.com/phpmyadmin/phpmyadmin/pull/18452) to prefill the field_default_value on Central Columns and worked on create-release.sh.

- [23c1b01b38 - Bump web-auth/webauthn-lib](https://github.com/phpmyadmin/phpmyadmin/commit/23c1b01b389a689a554f9ec4a27fe19e4537eac5)
- [9fff97df36 - Bump phpstan and psalm](https://github.com/phpmyadmin/phpmyadmin/commit/9fff97df368e05cb076814425bc6342372104af5)
- [1d2464e38f - Bump google/recaptcha to 1.3.0 for PHP 8 support](https://github.com/phpmyadmin/phpmyadmin/commit/1d2464e38f21fc5f3ac4159a652db58915c4eb03)
- [675f49c725 - Use latest slim/psr7](https://github.com/phpmyadmin/phpmyadmin/commit/675f49c725b675716e6acce1aa94e4f56bc59f51)
- [2fc35516ff - Adjust vendor excludes for ramsey/collection](https://github.com/phpmyadmin/phpmyadmin/commit/2fc35516ff1dfe0806476776ced7b45a269fe082)
- [4d16355fba - Adjust check release excludes script for public/ folder](https://github.com/phpmyadmin/phpmyadmin/commit/4d16355fbaa016e215033704337ea36b8408b3cf)
- [44ba9a5d22 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/44ba9a5d22e2a963023c4df9089fc25094199d65)
- [c4c0c8c834 - Bump laminas/laminas-diactoros CI PHP requirement to PHP 8.0](https://github.com/phpmyadmin/phpmyadmin/commit/c4c0c8c834614a74f475e524bac488a03cf8af3a)
- [21cf996096 - Merge #18462 - Code improvement: NullableCompareToNullRector](https://github.com/phpmyadmin/phpmyadmin/commit/21cf996096f406efaa1806be36b1a4149eefefd6)
- [62a44a78bb - Merge #18465 - Use array shape for getPaths](https://github.com/phpmyadmin/phpmyadmin/commit/62a44a78bb35938bb45375e9790b5011c80fe424)
- [3e644647e8 - Fix mock value bug in phpunit, bump phpunit 8.5](https://github.com/phpmyadmin/phpmyadmin/commit/3e644647e854354a9652a6e07891697bbdd1759f)
- [2db38cbe03 - Bump `phpmyadmin/twig-i18n-extension` for PHP 8 support](https://github.com/phpmyadmin/phpmyadmin/commit/2db38cbe03aba4ba3ffe564cc11f975890d57881)
- [18f5ab26fa - Bump the version of web-auth/webauthn-lib](https://github.com/phpmyadmin/phpmyadmin/commit/18f5ab26faf764b201889feb758adb3aaef7d1f5)
- [4504fe0866 - Fix a testing warning](https://github.com/phpmyadmin/phpmyadmin/commit/4504fe0866c4021f463b101b19693aafab912afe)
- [eec0f60b84 - Update baselines](https://github.com/phpmyadmin/phpmyadmin/commit/eec0f60b844a6c7db5e340b9c5083b5ccd4ddd82)
- [30274190f8 - Fix test-php-psr7-implementations CI](https://github.com/phpmyadmin/phpmyadmin/commit/30274190f816e5866f0653e065343a77bd867e4a)
- [34922bace5 - Update create-release.sh](https://github.com/phpmyadmin/phpmyadmin/commit/34922bace5d37c312a156e2beb240af28622de22)
- [98cd2ab1de - Fix the workflow for PSR-7 libraries](https://github.com/phpmyadmin/phpmyadmin/commit/98cd2ab1de9b2dd3878934fce56781003bcf84ca)
- [9a68412f4d - Update ChangeLog for 54471c7cd8](https://github.com/phpmyadmin/phpmyadmin/commit/9a68412f4d2bb1d5f722c46acb688c9dd8b530ba)
- [54471c7cd8 - Require slim/psr7 1.4.1 for CVE-2023-30536 - GHSA-q2qj-628g-vhfw](https://github.com/phpmyadmin/phpmyadmin/commit/54471c7cd8435683923c5e97c2b862b00dbd6ba8)
- [a9cd68b87d - Revert "Replace slim/psr7 by nyholm/psr7"](https://github.com/phpmyadmin/phpmyadmin/commit/a9cd68b87dea1f9e0af69709a61bad0120c05043)
- [95866856f9 - Merge #18452 - Prefill the field field_default_value on Central Columns](https://github.com/phpmyadmin/phpmyadmin/commit/95866856f96d42c29af30297c351e5995852ff7b)
- [9e99de5dc3 - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/9e99de5dc3ea3173223d0de35c8617a6625b6f79)
- [a7a57cd000 - Merge #452 - Fix incorrect return type](https://github.com/phpmyadmin/sql-parser/commit/a7a57cd0000539330e0713b32b97cefe54227336)
- [963cfb0393 - Add a CHANGELOG entry for #445](https://github.com/phpmyadmin/sql-parser/commit/963cfb039334f0974cfb06c49a1270e2499e4fc9)
- [59a8c8b84a - Merge #446 - Fix #445 - re-design part of `DESCRIBE`](https://github.com/phpmyadmin/sql-parser/commit/59a8c8b84a88a18cd7cb631d7bfa437b9f6bd307)

