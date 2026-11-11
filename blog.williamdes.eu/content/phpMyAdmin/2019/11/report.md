+++
title = "Report for November 2019"
date = 2019-11-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for November 2019.

<!-- more -->

In November 2019 I worked on the main repository, sql-parser, docker and the Debian phpMyAdmin packaging. On the side I fixed the build of crocodile2u/mariadb-rocks with the docker image 10.4 ([#1](https://github.com/crocodile2u/mariadb-rocks/pull/1)) and added a GitHub CI to mariadb-mysql-kbs ([#80](https://github.com/williamdes/mariadb-mysql-kbs/pull/80)).

## First week (44)

I merged the HTTPS/HTTP cookie separation fix ([#14184](https://github.com/phpmyadmin/phpmyadmin/issues/14184), pull-request [#15273](https://github.com/phpmyadmin/phpmyadmin/pull/15273)) and updated the error report test after it. On sql-parser I merged the fix for the wrong parsing of partitions ([#265](https://github.com/phpmyadmin/phpmyadmin/pull/265), for phpMyAdmin issue [#13951](https://github.com/phpmyadmin/phpmyadmin/issues/13951)), fixed the PHP compatibility of the array syntax and set the last CHANGELOG entry as unreleased.

- [a1ba9e2038 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/a1ba9e203803537bfa2b921a08d6db35a99133c5)
- [15a4cbe505 - Fix ErrorReport test after merge of #15273](https://github.com/phpmyadmin/phpmyadmin/commit/15a4cbe505394362b0d382021265a295e60b75b1)
- [519aeadbc8 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/519aeadbc84ce76ade5d0675c95fcdf583492bea)
- [c7f7f9c6c0 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/c7f7f9c6c0d6266f7a7929201a2bb170e2998058)
- [6baa5f2722 - Add ChangeLog entry for #14184](https://github.com/phpmyadmin/phpmyadmin/commit/6baa5f272220a79cbbd4e89ee3b69d638b7ec674)
- [21695cfeb7 - Merge #15273 - Fix HTTPS/HTTP cookie separation issue](https://github.com/phpmyadmin/phpmyadmin/commit/21695cfeb743d62098abed74a9cceb79bec92560)
- [3edeac32e0 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/3edeac32e02f1f53d72f404d196dfe5816cec2a8)
- [4a919aebab - Fix php compatiblity (array syntax)](https://github.com/phpmyadmin/sql-parser/commit/4a919aebab5d1a1f7d7bae72ccfdf0bab23586aa)
- [3c174cb8bb - Add CHANGELOG entry for #265](https://github.com/phpmyadmin/sql-parser/commit/3c174cb8bb344bc4b0f816a6f44752bc1cac8c40)
- [4b81f624b2 - Merge #265 - Fix wrong parsing of partitions](https://github.com/phpmyadmin/sql-parser/commit/4b81f624b2d55d093b89531d35ea4449fddafcae)

## Second week (45)

I merged two pull-requests fixing the export, which was removing aliases or cross joins ([#12241](https://github.com/phpmyadmin/phpmyadmin/issues/12241), [#15316](https://github.com/phpmyadmin/phpmyadmin/issues/15316) and a few other issues closed with them). I also fixed moving columns with DEFAULT NULL on MariaDB 10.2+ and with type INT and default CURRENT_TIMESTAMP ([#14951](https://github.com/phpmyadmin/phpmyadmin/issues/14951)), and unblocked the UI when column_info is detected as working but does not. The Long2IP issue with PHP 7.1 was fixed ([#14906](https://github.com/phpmyadmin/phpmyadmin/issues/14906)), the test suite was made 32bit compatible and more flexible, and I fixed the redirects and broken links in the .rst documentation and the is_uploaded_file() error ([#14809](https://github.com/phpmyadmin/phpmyadmin/issues/14809)).

- [f9bd58b0af - Add ChangeLog entry for #14809](https://github.com/phpmyadmin/phpmyadmin/commit/f9bd58b0afb5e638664a791e634e7c8f2d7df22f)
- [003ec4daf3 - Fix #14809 - php error is_uploaded_file() expects parameter 1 to be string](https://github.com/phpmyadmin/phpmyadmin/commit/003ec4daf3d249e50e730aff2c58407fecad094e)
- [68dbbedb79 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/68dbbedb79ef2613e0b9d337147cdde37ef39024)
- [a845d2fbe5 - Fix phpcs issue introduced by PR #15556](https://github.com/phpmyadmin/phpmyadmin/commit/a845d2fbe51185cd3488249cab7e383f004f2402)
- [acba81e091 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/acba81e09141ab9b2f3e8c54c7e981e8d7dae11a)
- [bf8939add6 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/bf8939add6cf0bda7fb317e3ffea8ca2d4261270)
- [a11f0f22c8 - Fix a minor error found while reviewing diffs](https://github.com/phpmyadmin/phpmyadmin/commit/a11f0f22c87ee46442bbc222bcafe1e20d15aa4c)
- [df0543694c - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/df0543694c766c5946ebb96dd70f5a12b2cf1033)
- [fa2f887703 - Fix redirects and broken links on .rst docs](https://github.com/phpmyadmin/phpmyadmin/commit/fa2f887703d3971395286e4382c4abf90c983799)
- [17120e12a4 - Add ChangeLog entry for #12241 and #15316](https://github.com/phpmyadmin/phpmyadmin/commit/17120e12a4da89ad01566984c0c472432556146b)
- [b39d22b35e - Merge #15553 and #15554 - fix export, do not remove aliases or cross join](https://github.com/phpmyadmin/phpmyadmin/commit/b39d22b35e28c575dac82f0931d2d3fe47756bc1)
- [1a07f9bc25 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/1a07f9bc250cf51a6878078ec465ee20cf83b661)
- [efb40848cc - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/efb40848ccd7d1500ccb364e8bc1d65ca4e1766b)
- [1fb2d7fde3 - Add ChangeLog entry for #14951](https://github.com/phpmyadmin/phpmyadmin/commit/1fb2d7fde3f489805b058969c1bf8d05726455ba)
- [3b4155a4c2 - Unblock UI when column_info is detected as working but does not](https://github.com/phpmyadmin/phpmyadmin/commit/3b4155a4c2f03d0b433a798024af5707b7c90679)
- [8aad190ae0 - Fix #14951 - Moving Columns with DEFAULT NULL doesn't work on MariaDB 10.2+](https://github.com/phpmyadmin/phpmyadmin/commit/8aad190ae035ec36db9376375473c709c6341fb0)
- [e9ad2bc153 - Fix #14951 - Moving Columns with type INT and default CURRENT_TIMESTAMP](https://github.com/phpmyadmin/phpmyadmin/commit/e9ad2bc153c8e7c6a079aa6f12ddca590451d40c)
- [580fca0d26 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/580fca0d26ad648755d7ba9fa5b2b18f87859234)
- [685eeaf9a5 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/685eeaf9a5e5252b5b94a3283e63cfa91dd17544)
- [4570e2f906 - Merge #15518 - Fix some English rules and typos](https://github.com/phpmyadmin/phpmyadmin/commit/4570e2f906ef051ebbca961d0d6c4d50a888e077)
- [4100cfa4ad - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/4100cfa4ad47b470408db163f4a9c7b2ba40a14c)
- [f52f3afff3 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/f52f3afff3a43ba84ee3b3d63fc933e355ceb978)
- [a75f03901b - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/a75f03901b208799dc973880b65f48ebec3a4ff6)
- [c16891cb40 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/c16891cb403d7924a33f0f4b301123a7473bc215)
- [21221aa459 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/21221aa459cc4fda0aa6bafbf8b68abfc87415d9)
- [4ae14a3da9 - Improve l10n context for translators and fix a typo](https://github.com/phpmyadmin/phpmyadmin/commit/4ae14a3da90645559e9a7d6057aace79dca62028)
- [a9df8a4dbb - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/a9df8a4dbb4f4ca98d62940200a034cae2a3bce5)
- [9e90099ffa - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/9e90099ffa037838143a6e804d685dad9c42cd4e)
- [30ccdd5d13 - Add ChangeLog entry for #14906 and f6272067a](https://github.com/phpmyadmin/phpmyadmin/commit/30ccdd5d13d9eb42c94fe125eb07a455259f49b3)
- [59d6fbec82 - Merge #15556 - Fix Long2IP issue with PHP7.1](https://github.com/phpmyadmin/phpmyadmin/commit/59d6fbec8273c6dfdee4d970cd581e48c3c768fa)
- [f6272067a7 - Improve test suite to make it 32bit compatible and more flexible](https://github.com/phpmyadmin/phpmyadmin/commit/f6272067a7e08b435f2ec96b6a6c81e2c637944b)

## Third week (46)

I fixed the detection of inaccessible phpMyAdmin storage tables ([#13912](https://github.com/phpmyadmin/phpmyadmin/issues/13912), [#15123](https://github.com/phpmyadmin/phpmyadmin/issues/15123)) and the white square in the menubar ([#15127](https://github.com/phpmyadmin/phpmyadmin/issues/15127)). I also fixed a phpstan level 3 error, improved the code after a Scrutinizer report, fixed the selenium tracking test and added the Debian GitLab pipelines config. On sql-parser I merged the fix for the missing comma error on ALTER TABLE ... PRIMARY/UNIQUE KEY ([#267](https://github.com/phpmyadmin/phpmyadmin/pull/267)).

- [5143072a0c - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/5143072a0c47047d67b12932b7fe201fcc332613)
- [64881e1873 - Fix a phpstan level 3 error and improve config](https://github.com/phpmyadmin/phpmyadmin/commit/64881e1873f8e6c45c8df20e7d1b330e17e47672)
- [9f4626eb96 - Minor code improvement](https://github.com/phpmyadmin/phpmyadmin/commit/9f4626eb9674cfa4547df9e9208e1a7e917f866f)
- [eda044cbac - Improve code after Scrutinizer report](https://github.com/phpmyadmin/phpmyadmin/commit/eda044cbac4ac53597e375202b50d307b812d620)
- [7f0949ad00 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/7f0949ad003163a51da3831b199d294e9cdaf459)
- [5a83a289d8 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/5a83a289d82954f8ba7a13058f268b8c8883dd75)
- [b91e734662 - Fix selenium TrackingTest ](https://github.com/phpmyadmin/phpmyadmin/commit/b91e734662f2e4f03e34cf67aa40cb01277dc699)
- [9362bde02d - Revert a redirect link change](https://github.com/phpmyadmin/phpmyadmin/commit/9362bde02d0535a2f8cb74a18797249cb734c4b0)
- [5b3ea74fd6 - Add ChangeLog entry for #15127 and #13912](https://github.com/phpmyadmin/phpmyadmin/commit/5b3ea74fd614a3aa272c7d1866bd2970256edbca)
- [4c2d8a7ba9 - Merge #15565 - Detect when phpMyAdmin storage tables are not accessible](https://github.com/phpmyadmin/phpmyadmin/commit/4c2d8a7ba9e04cf500759b2d39b073d7efca1aa6)
- [89e3249881 - Add ChangeLog entry for #15127](https://github.com/phpmyadmin/phpmyadmin/commit/89e3249881b5ca31300fd8a90ab08317827996ef)
- [5bd9c9de2c - Merge #15493 - fix #15127 white square](https://github.com/phpmyadmin/phpmyadmin/commit/5bd9c9de2c22a6a6ee4ebb40760ec9cad5d6fd86)
- [e070256fe4 - Fix #13912 and #15123 - Tables of phpMyAdmin storage are not accessible](https://github.com/phpmyadmin/phpmyadmin/commit/e070256fe49260dddd0e0b30be4db6d954806136)
- [a82bd613a9 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/a82bd613a9af528b40ecde0a96994b608fa75ab2)
- [2c8e384a34 - Set last CHANGELOG as unreleased](https://github.com/phpmyadmin/sql-parser/commit/2c8e384a349595ad13790ca3a5357f24af916345)
- [bcb5200831 - Add CHANGELOG entry for #267](https://github.com/phpmyadmin/sql-parser/commit/bcb520083145b9af9037305bdcd17f7b71182f3a)
- [1cbb49573d - Merge #268 - fixes ALTER TABLE ... PRIMARY/UNIQUE KEY "Missing comma" error](https://github.com/phpmyadmin/sql-parser/commit/1cbb49573d95c55b47b2447113417232c100eaf7)
- [e1db69e272 - Add debian gitlab pipelines config](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e1db69e272fc2f92f15e887b529e02f840dc9a6e)

## Fourth week (47)

A big week on the designer: I applied the security patch for the Designer and its visual mode (CVE-2019-18622, PMASA-2019-5), improved the select all checkbox process, fixed the display field process and added a message when the designer is misconfigured; adding a table from the list no longer crashes the designer when it is impossible. I also fixed the broken Twig function ([#15589](https://github.com/phpmyadmin/phpmyadmin/issues/15589)), the user warnings, errors and notices that were shown ([#15592](https://github.com/phpmyadmin/phpmyadmin/issues/15592)), an undefined index foreign_keys_data ([#15591](https://github.com/phpmyadmin/phpmyadmin/issues/15591)), the middle click on table sort columns ([#15434](https://github.com/phpmyadmin/phpmyadmin/issues/15434)), the panels of the homescreen going underneath the floating menubar ([#15570](https://github.com/phpmyadmin/phpmyadmin/issues/15570)) and the profiling chart, now displayed when the output has no rows. The Debian package for 4.9.2 was updated.

- [9754f84866 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/9754f848666e1b13b291671e7c4629a0e7058be7)
- [ff812e9366 - Fix a merge mistake](https://github.com/phpmyadmin/phpmyadmin/commit/ff812e93666a56fab0b8ab9dde125726bfb19d21)
- [4534c4b519 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/4534c4b519b6c29177472e7fbc9afd7bdebd8fbf)
- [3ebcf62e78 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/3ebcf62e784aadf060982364ecaf593263f35676)
- [c1e8674fa6 - Add ChangeLog for 99a8b4ea4d](https://github.com/phpmyadmin/phpmyadmin/commit/c1e8674fa6b2e719acac0da7460ab7d5beed7a86)
- [99a8b4ea4d - Fix php notice "undefined index table_create_time" when setting displayed columns on results of a view](https://github.com/phpmyadmin/phpmyadmin/commit/99a8b4ea4d8b924740858df97f37123ec784128e)
- [9662a8caa8 - Fix #15589 - TwigFunction broken](https://github.com/phpmyadmin/phpmyadmin/commit/9662a8caa81c0d34a6d71244bed0e0fa5cd52f3e)
- [8f470aaa2f - Fix #15592 - Hide user warning, errors and notices](https://github.com/phpmyadmin/phpmyadmin/commit/8f470aaa2fb2cbb399e40eaa0f19614737dc91b6)
- [4aa4095e30 - Add ChangeLog for #15434](https://github.com/phpmyadmin/phpmyadmin/commit/4aa4095e3064f5526d067268686092fbe5bd959a)
- [ecb5faac0c - Fix #15434 - Add support for middle click on table sort column](https://github.com/phpmyadmin/phpmyadmin/commit/ecb5faac0c403ddc305617efbf2ad999fbe6f4dd)
- [2f0fff5fa1 - Fix #15592 - Add all errors since we do not have access to error_reporting function](https://github.com/phpmyadmin/phpmyadmin/commit/2f0fff5fa1142af08d085625de8350aa6701e021)
- [d935fe286f - Add ChangeLog entry for #15592](https://github.com/phpmyadmin/phpmyadmin/commit/d935fe286f9064ef788d05074380a042376e5a6b)
- [b6e1ea68f3 - Fix issue reported by Scrutinizer](https://github.com/phpmyadmin/phpmyadmin/commit/b6e1ea68f3f9f22885b146aefd0bb74eb3eab67b)
- [5f5dc024a1 - Fix #15592 - Warning: error_reporting() has been disabled for security reasons](https://github.com/phpmyadmin/phpmyadmin/commit/5f5dc024a16423e63b3845065535c1d689f0a80a)
- [05dafc86fa - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/05dafc86fa04d2ee0ca88ef569296eabc6e9a11d)
- [dcc934b98a - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/dcc934b98a82fa8c0702c0babdf96085f4205304)
- [054418f1ae - Fix #15589 - TwigFunction broken](https://github.com/phpmyadmin/phpmyadmin/commit/054418f1ae62ebad9b948ea4511e8b895c2c210b)
- [086f440237 - Add ChangeLog entry for #15591](https://github.com/phpmyadmin/phpmyadmin/commit/086f4402376718ab2ac42f5d332beab6bad191ef)
- [28d76482b8 - Fix #15591 - Undefined index: foreign_keys_data](https://github.com/phpmyadmin/phpmyadmin/commit/28d76482b818b2bf036dd6e0179ea0e1467c1e6e)
- [d7d6c443e0 - Add ChangeLog entry for #15570](https://github.com/phpmyadmin/phpmyadmin/commit/d7d6c443e0a5a65bc3d27f6cbee626f18cdd1f4b)
- [758bed849d - Merge #15581 - Fix panels on homescreen go underneath of floating menubar](https://github.com/phpmyadmin/phpmyadmin/commit/758bed849d3efa261566e9da780d2b53dce5ccb2)
- [4e4670e9c2 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/4e4670e9c2d8d4a3e3403d8b61e46c9f2c923ebf)
- [293d273632 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/293d273632fbe5faa75d98d0d738cc9b9ea03189)
- [3f9ac1dc98 - Fix engine can be null](https://github.com/phpmyadmin/phpmyadmin/commit/3f9ac1dc98cf445cf6079a247eefb680f96aeb10)
- [718db2af83 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/718db2af8357797d2029a1d0c9e0447dc1095553)
- [4bde7fb6af - Fix a merge issue reported by Scrutinizer](https://github.com/phpmyadmin/phpmyadmin/commit/4bde7fb6afc6972778d5e898c715445d9a6617d0)
- [bfe1afb542 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/bfe1afb542c1c9b5c4f7773a2ffe245140db1a14)
- [66192e31f5 - Merge branch 'QA_4_9-security' into QA_5_0-security](https://github.com/phpmyadmin/phpmyadmin/commit/66192e31f54a5047f7a4936fd279d7d84bbae73f)
- [ef9aa68bb5 - Merge branch 'QA_4_9' into QA_4_9-security](https://github.com/phpmyadmin/phpmyadmin/commit/ef9aa68bb554cf32fe849abd56fc8b84afd7ef68)
- [a84b1e5daf - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/a84b1e5daf493bafb81252d8a6d0576bd4241927)
- [f1dc9fface - Merge branch 'QA_5_0-security' into master-security](https://github.com/phpmyadmin/phpmyadmin/commit/f1dc9ffaced1fffaf523b1b77fa4ac071d2a6c47)
- [106eea5968 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/106eea596881a2ce6b42e285bcbce7db6155bda7)
- [c7075fb450 - Merge branch 'QA_4_9-security' into QA_5_0-security](https://github.com/phpmyadmin/phpmyadmin/commit/c7075fb450ebf73d9045b2a4de61e57c59a33f30)
- [ad3c3ffd74 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/ad3c3ffd7481e5820f92fa1957005fd113bb5cc8)
- [718ceadeb6 - Merge branch 'QA_5_0-security' into master-security](https://github.com/phpmyadmin/phpmyadmin/commit/718ceadeb6ea4efccd0298e6f5238e0f3bb2ba5a)
- [28bdc02c3c - Merge branch 'QA_4_9-security' into QA_5_0-security](https://github.com/phpmyadmin/phpmyadmin/commit/28bdc02c3c5b27cfe249f7ac328b3a335c8fe29f)
- [348904fc12 - Add ChangeLog entry for #15327](https://github.com/phpmyadmin/phpmyadmin/commit/348904fc1215fecd31bd8a33546575dc109b68da)
- [70d5ba995c - Merge #15579 - Fix checkbox selection](https://github.com/phpmyadmin/phpmyadmin/commit/70d5ba995c47ac14b5a8fd3866c690f5450f057f)
- [51acbf5356 - Merge designer security fix](https://github.com/phpmyadmin/phpmyadmin/commit/51acbf53564d9b52e78509a5688ec2b68976b5f7)
- [ff541af95d - Security patch for Designer and Designer visual mode](https://github.com/phpmyadmin/phpmyadmin/commit/ff541af95d7155d8dd326f331b5e248fea8e7111)
- [2adf0ba1ac - Remove some hacks and strange things from designer](https://github.com/phpmyadmin/phpmyadmin/commit/2adf0ba1ac47772f69ff3587951de989668e6d52)
- [4b6f04c142 - Improve select all checkbox process on designer and fix a bug](https://github.com/phpmyadmin/phpmyadmin/commit/4b6f04c14258f4940826e9154744387721a244f4)
- [39a98a7fdf - Improve storing columns on designer and add a translation](https://github.com/phpmyadmin/phpmyadmin/commit/39a98a7fdf31414dd0842b5968b1b658cf2ab862)
- [06be1cc209 - Fix comment mistakes](https://github.com/phpmyadmin/phpmyadmin/commit/06be1cc209111bd93c5b0e59439b922a3c34ad48)
- [1de317993f - Fix adding a table from list, do not crash the designer if impossible to add](https://github.com/phpmyadmin/phpmyadmin/commit/1de317993fc5ab7712a2eb90ac4c06d0624c740a)
- [0569041e49 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/0569041e491c7c803d5644bc8828171af7a37510)
- [9965009cce - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/9965009cce1b0516710e2c40ffc256c2d01ca82b)
- [fba5afa1af - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/fba5afa1afcc76c7a39b42bb026c48a00d5df866)
- [642ef8abb5 - Add ChangeLog entries for 770f30aa and c7e8d50d and 97ccafa0](https://github.com/phpmyadmin/phpmyadmin/commit/642ef8abb5bc1d714c69027be5c026490c88288b)
- [2a2c6f75af - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/2a2c6f75afd38cccb535b334d65e7ddc67954c0b)
- [a225ddb3c2 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/a225ddb3c2973133005837b98df5269b8cc1ad43)
- [7deb00c32a - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/7deb00c32a3db25eb4d20e61873348705984c9cd)
- [68cfb777a5 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/68cfb777a53884944de4a8b308107a3f184a674a)
- [97ccafa06a - Add a message for misconfigured designer (displaywork)](https://github.com/phpmyadmin/phpmyadmin/commit/97ccafa06ac24ba9f70a88d4d0d472a645cbd5d6)
- [c7e8d50dcb - Fix set and remove displayed field process](https://github.com/phpmyadmin/phpmyadmin/commit/c7e8d50dcb48cc8487d28c8111c3781ae40b56e8)
- [770f30aa86 - Fix display field in Designer](https://github.com/phpmyadmin/phpmyadmin/commit/770f30aa8628f761122fa9d09b387862c830317e)
- [21a53cf36f - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/21a53cf36ff921cc6c3cac9c3b17e4d7ef7decab)
- [bee6f1c476 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/bee6f1c476fc0a926caac5c25ab1e6e6401a7056)
- [df61ddcd9b - Translated using Weblate (Malayalam)](https://github.com/phpmyadmin/phpmyadmin/commit/df61ddcd9bb345a888a63166b09ac8c123cd1dea)
- [6c7a996044 - Translated using Weblate (Malayalam)](https://github.com/phpmyadmin/phpmyadmin/commit/6c7a996044439256c728c4bd6c55c4092fa0399d)
- [5aa55122b7 - Translated using Weblate (Malayalam)](https://github.com/phpmyadmin/phpmyadmin/commit/5aa55122b75f76518111210b319fe534144b0bd2)
- [69554ba883 - Translated using Weblate (Malayalam)](https://github.com/phpmyadmin/phpmyadmin/commit/69554ba883b9dc43bce6e3f0c4852a45f5c5a02e)
- [78f50ab20f - Translated using Weblate (Malayalam)](https://github.com/phpmyadmin/phpmyadmin/commit/78f50ab20fb55192b105aa486717d8fb3ffc44e3)
- [950bb890e7 - Translated using Weblate (Malayalam)](https://github.com/phpmyadmin/phpmyadmin/commit/950bb890e7af34d15ffedcdb5e183b45723fdf3d)
- [f070efe37c - Merge #15573 - Display profiling when output has no rows](https://github.com/phpmyadmin/phpmyadmin/commit/f070efe37c457cb71d2ded50b6dcd83afe523be4)
- [9e5758e1de - Add ChangeLog entry for #15465](https://github.com/phpmyadmin/phpmyadmin/commit/9e5758e1de6c0361070fc8abf9dd6f09c7422add)
- [52c17a34d2 - Display the chart for no rows profiling results](https://github.com/phpmyadmin/phpmyadmin/commit/52c17a34d2af4f743b34c8472f092004c9623517)
- [0873a64e14 - Add changelog for 4:4.9.2+dfsg1-1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/0873a64e144997e2674c1b560d5c6ffe50e43aed)
- [829a2a153c - Update upstream source from tag 'upstream/4.9.2+dfsg1-1'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/829a2a153ca66ee6484c5dcd7f063af54b4372a8)
- [626946fa25 - New upstream version 4.9.2+dfsg1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/626946fa25230f1992bd16de88a48e262c2908f1)

## Fifth week (48)

I merged a pull-request dropping opcache from the docker CLI actions ([#242](https://github.com/phpmyadmin/phpmyadmin/pull/242)).

- [53a793568a - Merge #242 - drop opcache from cli actions](https://github.com/phpmyadmin/docker/commit/53a793568a3e215d7532617b0af6f1452ac93b3f)

