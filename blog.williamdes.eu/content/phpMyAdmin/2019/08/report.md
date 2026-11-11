+++
title = "Report for August 2019"
date = 2019-08-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for August 2019.

<!-- more -->

In August 2019 I worked on the main repository, mostly on the designer and bug fixes, and merged the 4.9 fixes into the 5.0 branch every week.

## First week (32)

I fixed the FilterLanguages option, which did not work ([#15427](https://github.com/phpmyadmin/phpmyadmin/issues/15427)), and removed the HTML escaping in the insert column dropdown of the structure page.

- [7367753d0c - [structure] Remove html escaping in insert col after col <select>](https://github.com/phpmyadmin/phpmyadmin/commit/7367753d0c0f894a4a370a7a4e9af9f34b174d77)
- [a7357d225a - Merge branch 'QA_5_0' into 'master'](https://github.com/phpmyadmin/phpmyadmin/commit/a7357d225a55e536b62edd4bb89362ec06c090ca)
- [1999610316 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/1999610316ec595bbbd67ad3ac94255de0ef906e)
- [973c40609b - Add ChangeLog entry for #15427](https://github.com/phpmyadmin/phpmyadmin/commit/973c40609bb6442655bf5252050adeb8434e8170)
- [71a032de33 - Fix #15427 - "FilterLanguages" option does not work](https://github.com/phpmyadmin/phpmyadmin/commit/71a032de3331b5d073d2f5ca52782c28ec997f30)

## Second week (33)

I fixed the unexpected quotes added on text fields ([#15363](https://github.com/phpmyadmin/phpmyadmin/issues/15363)), the error triggered by "add column" from the left database overview ([#14950](https://github.com/phpmyadmin/phpmyadmin/issues/14950), [#15430](https://github.com/phpmyadmin/phpmyadmin/issues/15430)), a password that was not escaped correctly ([#15202](https://github.com/phpmyadmin/phpmyadmin/issues/15202)) and the white square in the floating menubar ([#15127](https://github.com/phpmyadmin/phpmyadmin/issues/15127)). I also fixed a PHP 7.4 deprecation when accessing an offset on null or a boolean.

- [689a25542a - Merge branch 'QA_5_0' into 'master'](https://github.com/phpmyadmin/phpmyadmin/commit/689a25542a742f591372a51d265e9d6380f070e2)
- [990323e8db - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/990323e8dbee6914ceeae6d1306babd7e933ce5d)
- [a0bf9b50d1 - Fix PHP 7.4 deprecation: accessing offset on null/bool](https://github.com/phpmyadmin/phpmyadmin/commit/a0bf9b50d1c4c69c05d1f5e4d7d299710e0dad8a)
- [b4d3b07476 - Fix #15363 - Remove unexpected quotes on text fields](https://github.com/phpmyadmin/phpmyadmin/commit/b4d3b07476fdcc4893cc41bf9f85dad2fdede090)
- [24fd209020 - Add ChangeLog entry for #14950](https://github.com/phpmyadmin/phpmyadmin/commit/24fd209020edf4ca2f94a0ba7d626a6c03c0f38a)
- [cfa1be5916 - Fix #14950 - Left database overview "add column" triggers error](https://github.com/phpmyadmin/phpmyadmin/commit/cfa1be5916965433c95b64d4a484e00364c96fa3)
- [27ead96225 - Add ChangeLog entry for #15202](https://github.com/phpmyadmin/phpmyadmin/commit/27ead962253cb73bfedf97eff4fe6a3766df8e1e)
- [6b9ccd675c - Fix #15202 - escaped correctly password ](https://github.com/phpmyadmin/phpmyadmin/commit/6b9ccd675c6a7584220f6e78242ba0eef9f080be)
- [0e07bd8ed9 - Merge branch 'QA_5_0' into 'master'](https://github.com/phpmyadmin/phpmyadmin/commit/0e07bd8ed9955b37b708e1f1b82d194394cdf05e)
- [f26d4c5029 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/f26d4c50290b29ebc59432d81560b01576789d5f)
- [61ea8b799a - Add ChangeLog entry for #15127](https://github.com/phpmyadmin/phpmyadmin/commit/61ea8b799a68bb30c61811e4205da4cb5d6a158f)
- [61691091e5 - Fix #15127 - fixed the white square in floating menubar](https://github.com/phpmyadmin/phpmyadmin/commit/61691091e51eddf8da239c1bb1bc685af56d467b)

## Third week (34)

This week was mostly designer fixes. I refactored the code that used globals into a DesignerTable object, which fixed the export, the split of the database and table names on the dot, saving a newly added table and deleting page items, and solved the bugs with strange table and database names ([#15446](https://github.com/phpmyadmin/phpmyadmin/issues/15446), [#13370](https://github.com/phpmyadmin/phpmyadmin/issues/13370), [#14945](https://github.com/phpmyadmin/phpmyadmin/issues/14945)). I also merged three contributions: adding tables to the designer works again ([#15448](https://github.com/phpmyadmin/phpmyadmin/pull/15448)), importing a table that is already imported shows an error ([#15452](https://github.com/phpmyadmin/phpmyadmin/pull/15452)), and the designer export no longer fails when a table name contains special characters ([#15451](https://github.com/phpmyadmin/phpmyadmin/pull/15451)). Outside the designer I fixed the NULL checkbox wrongly checked on field change, the incorrect linkage from one table's value to another ([#14291](https://github.com/phpmyadmin/phpmyadmin/issues/14291)), and allowed a rollback on an empty statement ([#15388](https://github.com/phpmyadmin/phpmyadmin/issues/15388)).

- [0594a3a493 - Add ChangeLog entries for #15446 and #14945](https://github.com/phpmyadmin/phpmyadmin/commit/0594a3a493d563933d6da036a09088e965e3c95a)
- [77a285ad57 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/77a285ad5772945ed916d63b3f3ab5e68e5fd07a)
- [803d07d868 - Merge branch 'QA_5_0' into 'master'](https://github.com/phpmyadmin/phpmyadmin/commit/803d07d86824e82ccfdaee110945d8a7d4532a7b)
- [b8527d90dd - Fix typo introduced by 1af61f88b3ad5bdec](https://github.com/phpmyadmin/phpmyadmin/commit/b8527d90ddb79d5573748362fd1c898f66346643)
- [564894ce46 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/564894ce46e37de05cfb24461caf32ad48c23954)
- [1af61f88b3 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/1af61f88b3ad5bdec54594e1744c6deb4b6368e3)
- [4f5a171826 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/4f5a17182642ebcdebc0812666e71b2e5b05657f)
- [8590357612 - Fix a bug introduced by a23f2ba51a93af0c5](https://github.com/phpmyadmin/phpmyadmin/commit/8590357612116753514f01c4b1c49b3bcd335ef8)
- [027f39057a - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/027f39057a18d91baf7f89081cb48a7ffc43bfda)
- [6d0f3083ca - Fix display field can return a boolean](https://github.com/phpmyadmin/phpmyadmin/commit/6d0f3083ca7f9d993c98a538e8b79b7a32462428)
- [9c5195d438 - Fix Unit tests broken by a23f2ba51a93af0c5e](https://github.com/phpmyadmin/phpmyadmin/commit/9c5195d438f85fab78c79f280276e3f184a0116a)
- [a23f2ba51a - Fix some bugs with strange table and database names](https://github.com/phpmyadmin/phpmyadmin/commit/a23f2ba51a93af0c5eedf91646aa9e04b9bc3a12)
- [5940d11e72 - Merge #15448 - Fix many bugs when adding new tables to designer](https://github.com/phpmyadmin/phpmyadmin/commit/5940d11e72c4a9fa5c4a3beb24d3c2db9d4b0277)
- [9518e0d053 - Merge #15452 - Display an error when trying to import in designer a table that's already imported](https://github.com/phpmyadmin/phpmyadmin/commit/9518e0d05304e7994dab70674f582dd86cfd4ab4)
- [4f832662c5 - Merge #15451 - Designer export fails when a table name contains special chars](https://github.com/phpmyadmin/phpmyadmin/commit/4f832662c5379cb61c932433623d48b68de9b91d)
- [3aa7a35dae - #15363 - substr can return false on tbl_definition_form](https://github.com/phpmyadmin/phpmyadmin/commit/3aa7a35daebd2b1f816ac97ffe3822af032bc0f2)
- [10745bb392 - #15363 - substr can return false](https://github.com/phpmyadmin/phpmyadmin/commit/10745bb39275a6f5ac7c62c063fa6433dfc8854b)
- [f8688c2774 - Merge branch 'QA_4_9' into 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/f8688c277437a20d889e71bae6d7ae690058a624)
- [3b116de260 - Fix tests for "NULL wrongly checked on field change"](https://github.com/phpmyadmin/phpmyadmin/commit/3b116de26008be8d56ebc5ceb86137192ed47f8c)
- [40ed155775 - Merge branch 'QA_5_0' into 'master'](https://github.com/phpmyadmin/phpmyadmin/commit/40ed1557758d36d64957b4f88cc745be26f63f55)
- [f428277bad - Merge branch 'QA_4_9' into 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/f428277bad851848d29973e94c05beb32ad9511d)
- [fff26ed939 - Add ChangeLog entries for #15363, bef259c5, #15388, #14291](https://github.com/phpmyadmin/phpmyadmin/commit/fff26ed9391fb69134d965e52bf493b88303c5d6)
- [62a17fea45 - Fix #14291 - Incorrect linkage from one table's value to another table](https://github.com/phpmyadmin/phpmyadmin/commit/62a17fea451eaf0c78c0e0fd850f9e2fc66407a4)
- [c4640c64b3 - Fix #15388 - Allow rollback if empty statement](https://github.com/phpmyadmin/phpmyadmin/commit/c4640c64b307b25f56e82e8e0ea66684c4b0d2ea)
- [bef259c510 - Fix NULL wrongly checked on field change](https://github.com/phpmyadmin/phpmyadmin/commit/bef259c5100b06ceb24caa49ff19d649c6cdf94f)
- [6f14206810 - Fix #15363 - Remove unexpected quotes on text fields](https://github.com/phpmyadmin/phpmyadmin/commit/6f14206810f9eee273a32051079f2ee2f9e196df)

## Fourth week (35)

I merged the fix for url.php, which was crashing because it did not load the DatabaseInterface service ([#15437](https://github.com/phpmyadmin/phpmyadmin/pull/15437)). I also fixed the advisor error ([#15380](https://github.com/phpmyadmin/phpmyadmin/issues/15380)) and the error when editing a column whose name contains a backslash ([#15425](https://github.com/phpmyadmin/phpmyadmin/issues/15425)), and merged a clarification of the documentation for `$cfg['SaveDir']` ([#15459](https://github.com/phpmyadmin/phpmyadmin/pull/15459)).

- [aabd93fc7b - Add ChangeLog entry for e844368b463ef9867](https://github.com/phpmyadmin/phpmyadmin/commit/aabd93fc7b01ede5ef400a0c0bbeb553a0e67f51)
- [e844368b46 - Merge #15437 - Fixed url.php crashing because it's not loading the DatabaseInterface service](https://github.com/phpmyadmin/phpmyadmin/commit/e844368b463ef98677665d88e51f37c5c179604e)
- [f3bdd3521d - Merge branch 'QA_5_0' into master](https://github.com/phpmyadmin/phpmyadmin/commit/f3bdd3521d398883d39e2fe8c181397e8b3e6ca6)
- [2f2c942282 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/2f2c942282c3c0153a41cb03bd432ded32a59cc0)
- [2345be5c37 - Add ChangeLog entries for #15425 and #15380](https://github.com/phpmyadmin/phpmyadmin/commit/2345be5c371b52f12aa1ab71e0bd23fecb0f912c)
- [d1bce912ab - Fix #15380 - Advisor error](https://github.com/phpmyadmin/phpmyadmin/commit/d1bce912ab35e24a7d905918c3c6628aa7bceeb0)
- [00b93de248 - Fix #15425 - Backslash in column name resulting an error in editing](https://github.com/phpmyadmin/phpmyadmin/commit/00b93de248c3adaa1d988cce4295365cfbe713e2)
- [ab06cda45a - Merge #15459 - configuration clarification for $cfg['SaveDir']](https://github.com/phpmyadmin/phpmyadmin/commit/ab06cda45aadab8b75504fe7a1c6b85b52bbe74d)

