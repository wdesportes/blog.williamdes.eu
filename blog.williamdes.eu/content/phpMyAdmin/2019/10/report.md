+++
title = "Report for October 2019"
date = 2019-10-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for October 2019.

<!-- more -->

In October 2019 I worked on the main repository, the Debian tcpdf packaging, sql-parser and docker. On the website I updated the relationship attribute of the sponsored links ([#95](https://github.com/phpmyadmin/website/pull/95)).

## First week (40)

One commit only this week: a patch for the phpunit tests on the Debian packaging of sql-parser, for upstream commit cc9406f4a0ed122.

- [6478b431dd - Add patch for phpunit tests upstream:cc9406f4a0ed122](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/6478b431ddd6a072e912bfab166264bcb998a20b)

## Second week (42)

I fixed the privileges check that answered "You do not have privileges to manipulate with the users!" to a root superadmin ([#14433](https://github.com/phpmyadmin/phpmyadmin/issues/14433)), the referential integrity check that showed the table content ([#14598](https://github.com/phpmyadmin/phpmyadmin/issues/14598)), and the export of users that deleted all the selected users after a delete ([#15511](https://github.com/phpmyadmin/phpmyadmin/issues/15511)). I also fixed a text area overflowing its parent element (#15161), the bottom table of the left pane blocked by the horizontal scroll bar ([#14898](https://github.com/phpmyadmin/phpmyadmin/issues/14898)), the plus sign in a table or database name when configuring foreign keys ([#15482](https://github.com/phpmyadmin/phpmyadmin/issues/15482)) and a deprecated unparenthesized ternary ([#15499](https://github.com/phpmyadmin/phpmyadmin/issues/15499)). On the test side I added a Travis CI config, group annotations and fixed several deprecated phpunit methods. On the Debian packaging of tcpdf I packaged 6.3.2, fixed the watch file, the reprotest and the VCS URLs, and added a default block for gbp.conf.

- [af344bb4c1 - Fix #14433 - return an array with an empty user and empty host](https://github.com/phpmyadmin/phpmyadmin/commit/af344bb4c1456fec5382a535733a2e3dddddbb8d)
- [83602a6b72 - Fix #14433 - return an empty array](https://github.com/phpmyadmin/phpmyadmin/commit/83602a6b72f49536b6a5417aa568604d14ea596c)
- [4e7fac843d - Add ChangeLog entry for #14433](https://github.com/phpmyadmin/phpmyadmin/commit/4e7fac843ddb4bc3b4578ade7528f3eabf1f5ce5)
- [b8650115be - Fix #14433 - "You do not have privileges to manipulate with the users!" on root superadmin](https://github.com/phpmyadmin/phpmyadmin/commit/b8650115be7cc2d79d231723b7a6f1961e834d27)
- [252ce45758 - Fix Unit test testGetHtmlForReferentialIntegrityCheck after #14598](https://github.com/phpmyadmin/phpmyadmin/commit/252ce457582a6f9b06d9ed2597d0af29898f4402)
- [2d558e45bf - Add ChangeLog entry for #14598](https://github.com/phpmyadmin/phpmyadmin/commit/2d558e45bf3bebb36dab7de29a50559c678ad997)
- [e87c6b822d - Fix #14598 - check referencial integrity show table-content](https://github.com/phpmyadmin/phpmyadmin/commit/e87c6b822d9a0c1750c3e1897d299b2259b0498e)
- [eb33bbb76f - Use try catch instead of expectException from framework](https://github.com/phpmyadmin/phpmyadmin/commit/eb33bbb76fe2b04cf3bc7dbf4691fd91551346c4)
- [2254f66aa8 - Fix selenium DbProceduresTest as mysql does not truncate if the input does not allow a longer length than the data given](https://github.com/phpmyadmin/phpmyadmin/commit/2254f66aa880f9d39e6a116175100b3141113d52)
- [2709edfc8c - Add travisCI config](https://github.com/phpmyadmin/phpmyadmin/commit/2709edfc8c8ee823e43437af41785a83a397e773)
- [dd0596816a - Fix a bug in formatByteDown](https://github.com/phpmyadmin/phpmyadmin/commit/dd0596816afbb4f303a4071932dcf035e652b0a8)
- [c7644039b4 - Add groups to tests and fix one](https://github.com/phpmyadmin/phpmyadmin/commit/c7644039b41e86b3972db12e4fdaaa25381f50be)
- [cdf0f2efe8 - Fix some deprecated phpunit methods](https://github.com/phpmyadmin/phpmyadmin/commit/cdf0f2efe8182740b24f7e46c94ebded1d890b80)
- [89feb6ecc3 - Fix setUp function not in camel case](https://github.com/phpmyadmin/phpmyadmin/commit/89feb6ecc370b61356986b0f6183396ac8c8e94d)
- [b73733f7a7 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/b73733f7a7526023db426f79d5423b99f37a76ca)
- [8f52f47180 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/8f52f471802f412075f548f7b31ae025e881c50e)
- [a840e635c3 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/a840e635c33fa4e7f779f65deeda993c3b04993c)
- [c31d66b6eb - Add ChangeLog entry for #15511](https://github.com/phpmyadmin/phpmyadmin/commit/c31d66b6eb5c990884a79f81a139ad7c2bf46fcf)
- [7dca016773 - Fix #15511 - Exporting users after a delete will delete all selected users](https://github.com/phpmyadmin/phpmyadmin/commit/7dca0167731fc81af65bec8d24caa9f3f3ba9b4c)
- [343adb694f - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/343adb694fcc0ff20efa129106dcfbb3d5ec574a)
- [5698fb221f - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/5698fb221fe8798a220464dc806fb0ae30810454)
- [22b04255eb - Add ChangeLog entry for #15161](https://github.com/phpmyadmin/phpmyadmin/commit/22b04255ebcaf1a79adebb4076c5988054b398c5)
- [3802913676 - Fix #15161 - [UI] Text area overflows its parent element](https://github.com/phpmyadmin/phpmyadmin/commit/380291367696c3271faa902f1c5a20b9ed5f1b1f)
- [582a013f35 - Merge #15489 - Use onhashchange event instead of polling for hash changes](https://github.com/phpmyadmin/phpmyadmin/commit/582a013f351321bb7e02b0a387c112f2bcb4868c)
- [163d1e67e9 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/163d1e67e95f5f4b84852d554ab08f44a5150f93)
- [2efeb1185d - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/2efeb1185d3a37abea9819474fed291ca0ac8ce1)
- [e95a73ea08 - Add ChangeLog entry for #14898](https://github.com/phpmyadmin/phpmyadmin/commit/e95a73ea081197b7ace7636b7f0a79732d51fd22)
- [db07522491 - Fix #14898 - Bottom table in list in left pane blocked by horizontal scroll bar](https://github.com/phpmyadmin/phpmyadmin/commit/db0752249130554511112b8802e2803c5f9fd7c6)
- [d9e5414cec - Add ChangeLog entry for #15482](https://github.com/phpmyadmin/phpmyadmin/commit/d9e5414cec093e48f460118f0a99904e071a11af)
- [99cade4a5d - Fix #15482 - plus sign (+) in the table or database name when configuring foreign keys](https://github.com/phpmyadmin/phpmyadmin/commit/99cade4a5d4c746639fe281ac8940df09851da01)
- [21378f8909 - Add ChangeLog entry for #15499](https://github.com/phpmyadmin/phpmyadmin/commit/21378f8909016430c27290f19884eeca6b860356)
- [9ddca22264 - Fix #15499 - Unparenthesized `a ? b : c ? d : e` is deprecated.](https://github.com/phpmyadmin/phpmyadmin/commit/9ddca222642536d22c6f94f3574d6b23e77b9802)
- [d47f2dc744 - Add Closes ITA: #889731 and set version to dfsg1 and set unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/d47f2dc744593b552556074037ade2ac758c31fc)
- [3bba78959d - Add default block for gbp.conf](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/3bba78959dea5131edb1aae8a6f4c9ca42407eef)
- [9262d3cf0a - Fix watch file (dversionmangle)](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/9262d3cf0a682dc500772cdd5daa9edda70b16ad)
- [794a53894f - Merge branch 'upstream' into build-from-source](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/794a53894fc65d2e0b6b6708d4ac6634793d27e1)
- [2b3df20c45 - New upstream version 6.3.2+dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/2b3df20c45cc95bdc76c8a8a3c8ce7ad82c52730)
- [80babba6b7 - Some improvements](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/80babba6b75ba0aa482bdb4c920c4fa75bd29177)
- [448d13ef30 - Fix reprotest, add user_group www-data and use_sudo as required](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/448d13ef30099fcd3782399d3dcf1355d21119d1)
- [6c672176ff - Fix VCS-urls and use https & add CI file](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/6c672176ff37e3cb5e2656f669ec9647a64f5898)

## Third week (43)

I fixed the privileges adjustment when copying a database with MariaDB ([#15311](https://github.com/phpmyadmin/phpmyadmin/issues/15311)), the GIS polygon of a geometry field that was not drawn anymore, introduced by my MySQL 8 fix ([#15391](https://github.com/phpmyadmin/phpmyadmin/issues/15391)), and the referential integrity check for InnoDB ([#15477](https://github.com/phpmyadmin/phpmyadmin/issues/15477)). I also fixed the designer table list to allow strange table and database names, used the database instead of table.db in one place ([#15485](https://github.com/phpmyadmin/phpmyadmin/issues/15485)) and used a translation for "select all". On docker I improved the Travis CI file with steps, merged a pull-request for it and reverted the increase of the upload and post limits.

- [e71d92533f - Merge #15510 - Removed Inline Styles from form.twig](https://github.com/phpmyadmin/phpmyadmin/commit/e71d92533fdf994b83141e101c55a3e44ebf967e)
- [1fb7e78183 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/1fb7e781833172b32d230ceede952cd8e3d766e8)
- [67a37881c3 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/67a37881c3b6bdbd1f173555c2fc44127452ce7d)
- [b11d68386b - Add ChangeLog entry for #15311](https://github.com/phpmyadmin/phpmyadmin/commit/b11d68386bac0795c76281c5aef83d754bf46260)
- [157582c335 - Fix #15311 - Adjust Privileges on copy database fails with MariaDB](https://github.com/phpmyadmin/phpmyadmin/commit/157582c33532c1add1cb4d01479160630b80cc1d)
- [09ef9d037d - Add ChangeLog entry for #15391](https://github.com/phpmyadmin/phpmyadmin/commit/09ef9d037d8921d37634f1606b966de6c5ee25c2)
- [5b6405b7ca - Fix #15391 - GIS polygon of the geometry field is not drawn](https://github.com/phpmyadmin/phpmyadmin/commit/5b6405b7cafbebf0cd1f51da493a43cd6f97dd31)
- [4400350206 - Fix #15477 - Display referential integrity check for InnoDB](https://github.com/phpmyadmin/phpmyadmin/commit/4400350206901dbf4c8eda33867d200ae6360d1e)
- [75753cd65a - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/75753cd65a1a6791d22723cc4dc9a020ddaacd39)
- [af026702e1 - Fix merge error - 2efeb1185d3a37abea9819474fed291ca0ac8ce1](https://github.com/phpmyadmin/phpmyadmin/commit/af026702e104a9a2810bd84f0a21ab9ac96369aa)
- [66bd7fb596 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/66bd7fb5963a41ff94bb50ecdc67349dbe208d1d)
- [fc393eac39 - Fix phpcs and ignore PSR2.Methods.FunctionCallSignature.Indent](https://github.com/phpmyadmin/phpmyadmin/commit/fc393eac393fadb858225374f799f87415645d92)
- [14d73c1da0 - Merge branch 'QA_5_0' into master](https://github.com/phpmyadmin/phpmyadmin/commit/14d73c1da053ce675e49b4cf486a6e9e2d538b2e)
- [3236ae281b - Fix merge error - 7075cb0a41007030f48c549d0085f990405915c0](https://github.com/phpmyadmin/phpmyadmin/commit/3236ae281bb516389d90d59484b0dfcb954622de)
- [712e3d7eb9 - Fix table list on designer, allow strange table and database names](https://github.com/phpmyadmin/phpmyadmin/commit/712e3d7eb9cbfa28dc29eab614893a0fb6dfd5e4)
- [d15211db5c - Use translation for "select all"](https://github.com/phpmyadmin/phpmyadmin/commit/d15211db5c41e91e2ba59b870373e656434be2f8)
- [eab791dee6 - Fix #15485 - Use db instead of table.db](https://github.com/phpmyadmin/phpmyadmin/commit/eab791dee655a8c803dca8e5538964bc40e47ddc)
- [9d1872d753 - Improve TravisCI file with steps](https://github.com/phpmyadmin/docker/commit/9d1872d75350bf65e5bbb4530e3df5e86511b52c)
- [5f2beb027a - Revert "Increase limits for upload and post"](https://github.com/phpmyadmin/docker/commit/5f2beb027aa73222cf983d88ebe28811cb3846bb)
- [0bd0e9a958 - Merge #251 - improve/fix Travis CI file](https://github.com/phpmyadmin/docker/commit/0bd0e9a958026b8f2806dee3d8b8939a925b6ece)

## Fourth week (44)

I fixed the HTTPS/HTTP cookie separation issue, the one that says "Failed to set session cookie. Maybe you are using HTTP instead of HTTPS" ([#14184](https://github.com/phpmyadmin/phpmyadmin/issues/14184)), and the Sort By Key issues ([#15475](https://github.com/phpmyadmin/phpmyadmin/issues/15475)), co-authored with Vitalii Medvediev. I also fixed an uncaught TypeError on htmlspecialchars in the navigation tree ([#15540](https://github.com/phpmyadmin/phpmyadmin/issues/15540)) and removed the ic_b_info icon ([#15522](https://github.com/phpmyadmin/phpmyadmin/issues/15522)). On sql-parser I added the parsing of the TRUNCATE statement ([#221](https://github.com/phpmyadmin/phpmyadmin/pull/221)) and of the CHECK keyword on table definitions ([#264](https://github.com/phpmyadmin/phpmyadmin/pull/264)), and fixed the implode argument order ([#258](https://github.com/phpmyadmin/phpmyadmin/pull/258)).

- [1f472fb58d - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/1f472fb58d2d71cfe6f1bd6811c63a86952412b8)
- [ab0b6e248a - Add ChangeLog entry for #15540](https://github.com/phpmyadmin/phpmyadmin/commit/ab0b6e248a9c77c782f1274a63ea426d40cc300d)
- [cbdc5c0e83 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/cbdc5c0e833f5f5cffdcf6782d9409ca94ce127b)
- [128d3a09a0 - Fix #15540 - Uncaught TypeError: htmlspecialchars() in NavigationTree](https://github.com/phpmyadmin/phpmyadmin/commit/128d3a09a0392a5a0a6c4e6ea9aefcd8ddf9efca)
- [77d156c321 - Add ChangeLog entry for #15475](https://github.com/phpmyadmin/phpmyadmin/commit/77d156c321172e80e047c3c54dd7fc1d7a1a05fa)
- [44e168d7d3 - Merge #15537 - Sort By Key issues](https://github.com/phpmyadmin/phpmyadmin/commit/44e168d7d33f4d15d4b16056f32b9db24b5f8bf9)
- [3ad6f48ad3 - Fix Sort By Key issue #15475](https://github.com/phpmyadmin/phpmyadmin/commit/3ad6f48ad37aa410326f2ccc8b726cf51aab20ca)
- [45d46a6316 - Remove typehints for hhvm](https://github.com/phpmyadmin/phpmyadmin/commit/45d46a6316c7a79d8c110ccbd18035c4d0c633fb)
- [09464ba8f5 - Fix unit tests](https://github.com/phpmyadmin/phpmyadmin/commit/09464ba8f5fecc3cbba61c0be7ae7b1b592a92f2)
- [a3d77ce84b - Fix #14184 - HTTPS/HTTP cookie separation issue (aka Failed to set session cookie. Maybe you are using HTTP instead of HTTPS)](https://github.com/phpmyadmin/phpmyadmin/commit/a3d77ce84b0e8f30a6cbf9f87d5ebf188dbcaa4c)
- [cccf849ca7 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/cccf849ca7c2badd999fc802907ca17cb74ee5ee)
- [bbdd2cd19b - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/bbdd2cd19b16d8e17940449c27ac430f9d9180e0)
- [bccc828700 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/bccc8287007e2828f28ddaacd47f7607a8731aed)
- [2575421da4 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/2575421da490d09248e20bcc00e26bfc84a506dd)
- [1a67c192df - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/1a67c192df7ed86d27e91e657b6ee995a63622fc)
- [0cdbaf0adf - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/0cdbaf0adfe85644e50387faa7abc2c6a03f6e68)
- [d6da466fc0 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/d6da466fc0bd23cd3606e385ae181f710e6d66ff)
- [b5945d3bc4 - Add ChangeLog entry for #15522](https://github.com/phpmyadmin/phpmyadmin/commit/b5945d3bc4db59d86bc4e1fb9b050b46b2ab2be7)
- [d4d1f66495 - Fix #15522 - Remove ic_b_info icon](https://github.com/phpmyadmin/phpmyadmin/commit/d4d1f664951cc752d3c154a5d89bf7f1a92ef7ce)
- [c6d9292596 - Add ChangeLog entry for 0eeb98275e](https://github.com/phpmyadmin/phpmyadmin/commit/c6d92925964c5359b262a0a2048ee0fee915d881)
- [0eeb98275e - Merge #15514 - Unit test fixes for phpunit 8 compatibility](https://github.com/phpmyadmin/phpmyadmin/commit/0eeb98275e1838976d3652cbbf58b0124dd69189)
- [e646a9cca9 - Add ChangeLog entry for #15477](https://github.com/phpmyadmin/phpmyadmin/commit/e646a9cca92d9df3edfe68389bea0004234176b4)
- [5feb0ec989 - Merge #15477 - display referential integrity checks for internal relations](https://github.com/phpmyadmin/phpmyadmin/commit/5feb0ec989be8202ed5ebce7f98cc634de5de71c)
- [1a073cd8f0 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/1a073cd8f0ffa74124123475753a3752717339a8)
- [49731d2db2 - Add CHANGELOG entry for #221](https://github.com/phpmyadmin/sql-parser/commit/49731d2db2e45f967d3b1c103958f6d9f189e543)
- [fd4c4f3471 - Fix #221 - parse truncate statement](https://github.com/phpmyadmin/sql-parser/commit/fd4c4f34715070d7f7238ab3838935863a92f556)
- [dedb5d5236 - Add CHANGELOG entries for #258 and #264](https://github.com/phpmyadmin/sql-parser/commit/dedb5d5236a384963de97ce25f2e90355d5216ac)
- [84535cf81a - Merge #264 - parse CHECK keyword on table definition](https://github.com/phpmyadmin/sql-parser/commit/84535cf81aaa1906825ae6ee2e2f3ea7159d2742)
- [b0cf7ec53a - Merge #258 - fix implode argument order into QA](https://github.com/phpmyadmin/sql-parser/commit/b0cf7ec53ac2e9042387069655469c1798d7b584)

