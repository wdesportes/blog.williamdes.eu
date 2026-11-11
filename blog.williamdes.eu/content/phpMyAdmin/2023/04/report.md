+++
title = "Report for April 2023"
date = 2023-04-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for April 2023.

<!-- more -->

In April 2023 my focus was sql-parser, with a few fixes on phpmyadmin.

## First week (14)

I fixed [#18060](https://github.com/phpmyadmin/phpmyadmin/issues/18060), the console height "Not a non-negative number" error, and stopped the pmadb database detection when all the features are disabled. I also fixed the widths of the routines, triggers and events modals and the /lint request.

- [2a7cf790d6 - Add a ChangeLog entry for 4cec0f1163](https://github.com/phpmyadmin/phpmyadmin/commit/2a7cf790d6e652b41222de753a2d8d6168925a80)
- [de724d623e - Update psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/de724d623e808ee1d7534b2c1ad96283f639e088)
- [4cec0f1163 - Stop pmadb database detection when all features are disabled](https://github.com/phpmyadmin/phpmyadmin/commit/4cec0f1163fda71fb8013b510cd448161aee8def)
- [068fc4df74 - Fix failing testGetLatestVersion in random order](https://github.com/phpmyadmin/phpmyadmin/commit/068fc4df7458d8715f5c65958cbfc7f21372e1d3)
- [b3138ff282 - Fix tests for relation](https://github.com/phpmyadmin/phpmyadmin/commit/b3138ff28222d1c544138f1c79e8d04cdde6ceb5)
- [182bf4333f - Add a ChangeLog entry for 4b90c55337](https://github.com/phpmyadmin/phpmyadmin/commit/182bf4333f5ad653642e8ab03fb6956ae74ba77f)
- [4b90c55337 - Fix width/height of create routines modal(dialog) and width of routines/triggers/events modals(dialogs)](https://github.com/phpmyadmin/phpmyadmin/commit/4b90c55337d18e38b23f1700412ef619faa95b04)
- [e5826048d8 - Fix /lint request, request as ajax_request=true](https://github.com/phpmyadmin/phpmyadmin/commit/e5826048d8e97ce166bf138af6e2e9891b0fec36)
- [2adb45e345 - Add a ChangeLog entry for #18060](https://github.com/phpmyadmin/phpmyadmin/commit/2adb45e345062352baf7a154771f2394db97558d)
- [e64b59dbf8 - Merge #18072 - Fix #18060 - Console height "Not a non-negative number" error](https://github.com/phpmyadmin/phpmyadmin/commit/e64b59dbf8ee83dc69d7fa8ee038091d184aad3f)
- [cdc48b36d1 - Add ChangeLog entries for ee9c9a0300, #18235 and #18249](https://github.com/phpmyadmin/phpmyadmin/commit/cdc48b36d16390c67bd05d9d167190750e2e34b2)
- [cf78e7ef33 - Add a ChangeLog entry for #18266](https://github.com/phpmyadmin/phpmyadmin/commit/cf78e7ef336b9c4a70adaa17e14039c699f4d11e)
- [83a5f352cb - Add a ChangeLog entry for 5a0ecbf346](https://github.com/phpmyadmin/phpmyadmin/commit/83a5f352cbffb277d307130be190c2072ced29e5)
- [5a0ecbf346 - Merge #18324 - [UI] Remove float-end class on tracking versions table](https://github.com/phpmyadmin/phpmyadmin/commit/5a0ecbf3462d61100ec36015d45cc49b27db50a6)
- [e0dc515638 - Add tests for #18266 - unable to disable a feature](https://github.com/phpmyadmin/phpmyadmin/commit/e0dc51563870273a5ab3dcf97a39d9098f0f6603)

## Second week (15)

On sql-parser I merged [#438](https://github.com/phpmyadmin/phpmyadmin/pull/438) for the way the end of functions, procedures and triggers bodies is identified, [#440](https://github.com/phpmyadmin/phpmyadmin/pull/440) to support the ALGORITHM and LOCK options in ALTER TABLE ([#319](https://github.com/phpmyadmin/phpmyadmin/pull/319)) and [#439](https://github.com/phpmyadmin/phpmyadmin/pull/439) to manage COALESCE PARTITION ([#323](https://github.com/phpmyadmin/phpmyadmin/pull/323)).

- [d647f45e82 - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/d647f45e82ce50ca972eafbcc2dd7cfeed169ccb)
- [8c5fbf39b1 - Add a CHANGELOG entry for #438](https://github.com/phpmyadmin/sql-parser/commit/8c5fbf39b189fe3e77b5a4c0ebe74e08c59f24be)
- [9ff553f06c - Merge #438 - Fix way end of functions, procedures and triggers' bodies is identified](https://github.com/phpmyadmin/sql-parser/commit/9ff553f06c5521b457efd65a4251ab213d92f8d0)
- [599c597776 - Update out data](https://github.com/phpmyadmin/sql-parser/commit/599c5977769d30abd2b7e52d6fe5fa4b1f807921)
- [b8681a3c51 - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/b8681a3c5177094494cae93f0f5e63ecfc20dd4a)
- [d57633493a - Add a CHANGELOG entry for #319](https://github.com/phpmyadmin/sql-parser/commit/d57633493ae55f73fd0925e4940c398d6a1531aa)
- [696d0367e7 - Ref #440 - Ref #319 - Update out files](https://github.com/phpmyadmin/sql-parser/commit/696d0367e7242356ff227cd97b6ec31b899d3f32)
- [daae9fcdc9 - Merge #440 - Fix #319 - Support ALGORITHM and LOCK options in ALTER TABLE statements](https://github.com/phpmyadmin/sql-parser/commit/daae9fcdc9ccb524f30136b360f69d8872843700)
- [348ddac48e - Update the phpstan baseline](https://github.com/phpmyadmin/sql-parser/commit/348ddac48e0a7873ece5a802576fe04127c721d2)
- [6bdb41dbbf - Add new tests for #319](https://github.com/phpmyadmin/sql-parser/commit/6bdb41dbbf744203e38bcb3b0b6ac0048c543d2f)
- [2a997ce6c6 - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/2a997ce6c6e7f3dffc2f61132edea560e8ba1440)
- [c209636350 - Add a CHANGELOG entry for #323](https://github.com/phpmyadmin/sql-parser/commit/c209636350d7ea3d6ad980527bd2255013e97c44)
- [e489414970 - Merge #439 - Fix #323 - Manage COALESCE PARTITION in ALTER TABLE, rather than COALESCE](https://github.com/phpmyadmin/sql-parser/commit/e489414970cb4b1561f5dd93b6ae3376e27f6810)

## Third week (16)

I fixed the lint route and the truncated contents of the functions and routines modals. On sql-parser I merged [#441](https://github.com/phpmyadmin/phpmyadmin/pull/441) to add KEY to CreateDefinition ([#330](https://github.com/phpmyadmin/phpmyadmin/pull/330)), implemented the LEFT JOIN, JOIN and INNER JOIN support on UpdateStatement ([#260](https://github.com/phpmyadmin/phpmyadmin/pull/260)) and re-implemented the parsing of CALL statements ([#372](https://github.com/phpmyadmin/phpmyadmin/pull/372)).

- [99881debb5 - Fix lint route not working correctly](https://github.com/phpmyadmin/phpmyadmin/commit/99881debb52ed89b907583a2b32d999290a14ce2)
- [a88c9a3dc0 - Fix functions/routines modal contents truncated](https://github.com/phpmyadmin/phpmyadmin/commit/a88c9a3dc03f7fce0cb0f8370e6b9048a440ca52)
- [a3a699d5c2 - Add test cases for complex procedures and functions](https://github.com/phpmyadmin/sql-parser/commit/a3a699d5c2a5b9e41a0de4eaccf46fe2310f9d57)
- [52608cb84b - Add a test case for `INDEX` on `CREATE TABLE`](https://github.com/phpmyadmin/sql-parser/commit/52608cb84bffefd81f74da6ed9c332e2eef45975)
- [cf5bf6f27d - Add a CHANGELOG entry for #330](https://github.com/phpmyadmin/sql-parser/commit/cf5bf6f27d7b77df03239617a291fe80688b247f)
- [1c35fdc367 - Merge #441 - Fix #330 - Add `KEY` to `CreateDefinition`](https://github.com/phpmyadmin/sql-parser/commit/1c35fdc36746a41c788e6065540de1712f741f18)
- [204d34abea - Fix #260 - implement support for `LEFT JOIN`, `JOIN`,`INNER JOIN` on `UpdateStatement`](https://github.com/phpmyadmin/sql-parser/commit/204d34abeae3d8b4d9f59814e95d4d112eaa4c32)
- [4ad634b288 - Fix #260 - Update test data](https://github.com/phpmyadmin/sql-parser/commit/4ad634b288e0aaf820fc85e32892671b26959497)
- [32e10ad522 - Add a test case for #256](https://github.com/phpmyadmin/sql-parser/commit/32e10ad522e4769d89178d3d5cbf69e7731ca6c1)
- [201822cdcb - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/201822cdcb96a3482a6728a1f32a35c4f57b6bcb)
- [c2a3579bf3 - Update psalm baseline](https://github.com/phpmyadmin/sql-parser/commit/c2a3579bf3fe0955c7230446880de544864b1f98)
- [e6933f725c - Update test data](https://github.com/phpmyadmin/sql-parser/commit/e6933f725c87d141fe5aeec4e089dd349cad9b05)
- [f5123d81e1 - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/f5123d81e1eff84299b46e64f8b41ddb2ae72924)
- [e144b3a7ef - Add a CHANGELOG entry for #236](https://github.com/phpmyadmin/sql-parser/commit/e144b3a7efb8811ee1685275f3d408c26fd3de29)
- [7c11d3f1a0 - Fix #236 - "enclosed by" is not recognized by the parser](https://github.com/phpmyadmin/sql-parser/commit/7c11d3f1a0a27777cb6ad6f00699648b04497738)
- [44a4aec5ce - Add a test case for #236](https://github.com/phpmyadmin/sql-parser/commit/44a4aec5ce79669d42f4a1600b79acb7034d4cd0)
- [e8c053313a - Add test data for #322](https://github.com/phpmyadmin/sql-parser/commit/e8c053313a61dc4e74af656d1e2593e3ab770408)
- [887750d16a - Add more test cases for #260](https://github.com/phpmyadmin/sql-parser/commit/887750d16ac4002aa75d23538dd0f0f1be4b0430)
- [4a270a2c4e - Fix a typo](https://github.com/phpmyadmin/sql-parser/commit/4a270a2c4ef15902ed0dfadeab89f0808599be6d)
- [41ad592c18 - Update baselines](https://github.com/phpmyadmin/sql-parser/commit/41ad592c18bb9a8ca4c937ccf8b423249b8bc831)
- [c123f0887b - Fix #372 - re-implement CALL statements parsing](https://github.com/phpmyadmin/sql-parser/commit/c123f0887b99b9c3f75ab5e8ba632cef7dc6b54f)
- [ebb63a6061 - Re-implement #224 in a cleaner way](https://github.com/phpmyadmin/sql-parser/commit/ebb63a6061698218251a60f063c3e81b69f35048)
- [18874bd941 - Revert "Remove failing db names because of #372"](https://github.com/phpmyadmin/sql-parser/commit/18874bd9416d0dded7c8d79694d5cbf03f5b8944)
- [74aea33ad9 - Remove failing db names because of #372](https://github.com/phpmyadmin/sql-parser/commit/74aea33ad9cbe4a0696889609366cbafc5f460a6)
- [8bfd1927da - Add test cases for #372](https://github.com/phpmyadmin/sql-parser/commit/8bfd1927da40c9c78a84f4f1ec8084eb534ebaa2)
- [68250ef7a1 - Add more test cases for #223](https://github.com/phpmyadmin/sql-parser/commit/68250ef7a1c31ce9474defab2ecc16902dc4dd14)
- [e7a1f01e6e - Add a test case for #308, fixed in #350, duplicate of #296](https://github.com/phpmyadmin/sql-parser/commit/e7a1f01e6e6a8cc5366880d5bd18dc043447d9d8)
- [0d37022c4e - Fix #330 - Update test data](https://github.com/phpmyadmin/sql-parser/commit/0d37022c4e0ef3d2af51a50cb0dbefc419d6b3f5)
- [6bae8bf951 - Fix #330 - Add `KEY` to CreateDefinition](https://github.com/phpmyadmin/sql-parser/commit/6bae8bf9512ea435b1d271418ead09fd6d1b7f1d)
- [87f1dfa610 - Add test cases for #330](https://github.com/phpmyadmin/sql-parser/commit/87f1dfa6101ab8d20a3a33e40375a06baea34cbb)
- [cbfce2bc08 - Add GitHub linguist overrides](https://github.com/phpmyadmin/sql-parser/commit/cbfce2bc0809a13a36adbcc2f071057a3d1082dc)

