+++
title = "Report for September 2020"
date = 2020-09-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for September 2020.

<!-- more -->

In September 2020 I fixed bugs on the main repository, updated our Debian packages and continued to propose Doctum to other projects.

## First week (36)

A quiet week: I documented how to download bashbrew and updated the stackbrew library generation and the docker hub tags page link. I also continued the Doctum migration on other projects, with pull-requests on rokka-client-php, elasticsearch-php, PHP-FFMpeg, silverstripe/api.silverstripe.org, gax-php and phpbb, and more phpdoc fixes on phpseclib.

- [fac75760c8 - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/phpmyadmin/commit/fac75760c86828f318a835d175bd92a99888ac28)
- [e24a285f5a - Translated using Weblate (German)](https://github.com/phpmyadmin/phpmyadmin/commit/e24a285f5a9f3a3c0627b40abc3670f01f9b8030)
- [cf754f9ec2 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/cf754f9ec221e49e3eac21db4cee06e4836f78e2)
- [851f2cff30 - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/phpmyadmin/commit/851f2cff30e7b7609dce025f7dc0de8210df197a)
- [785cd48c48 - #268 - Add instructions to download bashbrew](https://github.com/phpmyadmin/docker/commit/785cd48c4892a4748c0c629099c15b42570949d3)
- [301a7c4d18 - Merge #268 - Update generate-stackbrew-library.sh](https://github.com/phpmyadmin/docker/commit/301a7c4d18e2166145075729d4c4e94fd72b04ed)
- [ad9f085601 - Merge #303 - Fix docker hub tags page link](https://github.com/phpmyadmin/docker/commit/ad9f085601e0664cdc842bb0a87d8309ff941bce)

## Second week (37)

I fixed a session cookie parameter issue on PHP >= 7.3, where the parameters were set twice, and merged the missing Stickyfill fix and the removal of the PGP path finder link from the setup documentation. On the Debian side I uploaded mariadb-mysql-kbs 1.2.11 and removed the allow-stderr build restriction.

- [d077836a50 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/d077836a50db43521524feac2570c7df55d3c75c)
- [d3abd6fcde - Add a ChangeLog entry for #16319 and #15634](https://github.com/phpmyadmin/phpmyadmin/commit/d3abd6fcdee9e272ecd983639083a13bb10f4c51)
- [330747998d - Fix #15634 - Only use session_set_cookie_params once on PHP >= 7.3.0 versions](https://github.com/phpmyadmin/phpmyadmin/commit/330747998dac27bde2d86df2190b814bfeacc823)
- [63f2234cf5 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/63f2234cf57686df51bd62421d564b780642694e)
- [984f7ac574 - Translated using Weblate (Russian)](https://github.com/phpmyadmin/phpmyadmin/commit/984f7ac5748a456c918e3963f0d607b9dbdabe15)
- [9c66df13c4 - Translated using Weblate (Russian)](https://github.com/phpmyadmin/phpmyadmin/commit/9c66df13c4eb5b1c4089d565972e68ad9947d4e6)
- [64f6b5c435 - Translated using Weblate (Russian)](https://github.com/phpmyadmin/phpmyadmin/commit/64f6b5c43522be49facbd95bee9197e811284c91)
- [62150ba4c1 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/62150ba4c105bf8af52b21b455f7fd5730191faf)
- [15f605cf24 - Merge #16334 - Remove the PGP path finder link from doc/setup.rst](https://github.com/phpmyadmin/phpmyadmin/commit/15f605cf2473e41297429466e910c58128134691)
- [4d7c00a4ce - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/4d7c00a4cec6fbfea0b7aa92708a126c81671315)
- [3317c98b31 - Merge #16336 - Fixes #16329 - Stickyfill is not defined](https://github.com/phpmyadmin/phpmyadmin/commit/3317c98b316ba5264418cb952c524809fd66b2bf)
- [10f5f31532 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/10f5f315326b21fbc2178364e4d85affcb661090)
- [b1f13ab527 - Update d/changelog entries for 1.2.11-1](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/b1f13ab5271c9423adcf3386d09038c54907f3cb)
- [f74a4e2e27 - Update upstream source from tag 'upstream/1.2.11'](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/f74a4e2e27a7e7a5857c5d140dacfa251d6c672f)
- [30d85a426b - New upstream version 1.2.11](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/30d85a426be11d4102e21fdb15698faf5235149c)
- [968167670c - Remove allow-stderr from build restrictions after 1.2.11 release](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/968167670cdfc27db00559d7ef079fd2662360d0)

## Third week (38)

I merged a good set of fixes: editing geometry data through the GUI, duplicated aliases in multi-table queries, indexes shown at both tbl_structure and tbl_relation, and a database named 'New' causing a fatal error. I also made the textareas resizable on both sides, reduced the vendor bundle, upgraded psalm to 3.16 and improved the CONTRIBUTING.md readability.

- [a4120025ec - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/a4120025eca0ea6edf15e555913f4fea3ab6a54f)
- [6c135c5f0b - Add a ChangeLog entry for #15109 and #16325](https://github.com/phpmyadmin/phpmyadmin/commit/6c135c5f0b0be7dfea1904f9c1bcb301be42d3c9)
- [4f8e1b8d5a - Merge #16330 - Fix #16325, Fix #15109 - Editing geometry data throws error on using the GUI](https://github.com/phpmyadmin/phpmyadmin/commit/4f8e1b8d5a2c7f23dd06b91d86a3d9e317b1f580)
- [28a7778173 - Add a ChangeLog entry for #16342](https://github.com/phpmyadmin/phpmyadmin/commit/28a777817325784d6c83ff231dabcaeac1eb1c5e)
- [653c63009a - Merge #16343 - Fix #16342 - In Multi-table query (db_multi_table_query.php) alias show the same alias for all columns](https://github.com/phpmyadmin/phpmyadmin/commit/653c63009a3533bc9c888ae3c9459697abfd3a2f)
- [42c4ff30b1 - Add a ChangeLog entry for #12961](https://github.com/phpmyadmin/phpmyadmin/commit/42c4ff30b1f82d4cbde0e8c847056cdecda3161e)
- [7901363931 - Merge #16349 - Fix #12961 - Indexes shown at both tbl_structure and tbl_relation](https://github.com/phpmyadmin/phpmyadmin/commit/79013639313a1884dc6e9716b41f667fb8c4f6ed)
- [28128c1c1d - Use strict equals in CentralColumns when it is possible](https://github.com/phpmyadmin/phpmyadmin/commit/28128c1c1d44211d8d5fed0a061f3e6c6e15ac11)
- [a1bc9924cd - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/a1bc9924cd4562aa0c046972d7ff093af6b00134)
- [f5c6756e26 - Exclude more useless files from the vendor bundle](https://github.com/phpmyadmin/phpmyadmin/commit/f5c6756e26621045516fa94af01bb69620caf735)
- [ae243e0d35 - Ignore JS dist files from #16331](https://github.com/phpmyadmin/phpmyadmin/commit/ae243e0d356fa2e2083aff5b84cbc5f73fe3b81c)
- [9f1b1ca094 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/9f1b1ca094d152a223796c7c3d048c1857df2093)
- [f000e8229b - Upgrade psalm to 3.16](https://github.com/phpmyadmin/phpmyadmin/commit/f000e8229b01c4d170961eaef205aa12ab82257a)
- [46221f7f3c - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/46221f7f3c67c01524f082955105dbfadeb12d0b)
- [5af2cc19a8 - Add a ChangeLog entry for #16355](https://github.com/phpmyadmin/phpmyadmin/commit/5af2cc19a88a3272c83362a5ad94064e02917e84)
- [88a07c2858 - Merge #16361 - Fix #16355 - Make Textareas both sides resizable ](https://github.com/phpmyadmin/phpmyadmin/commit/88a07c285804c543c75fbfc48b29ae351397a248)
- [f44f635001 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/f44f63500115e4adced929a0aa9e27db781a3c31)
- [71940b5217 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/71940b52174d943f49b558bc6d3e6e895d9fae84)
- [bfb04c8fbb - Fix a typo in themes.rst](https://github.com/phpmyadmin/phpmyadmin/commit/bfb04c8fbbe7987c9150500ab242ed2268fbff82)
- [8c02e6d975 - Improve readability of CONTRIBUTING.md](https://github.com/phpmyadmin/phpmyadmin/commit/8c02e6d975220049f59cd92defa18efe71d34c73)
- [466ff06b3b - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/466ff06b3bc38d0ee63a0073b52c93c4f35e973d)
- [258de2479b - Add a ChangeLog entry for #14698](https://github.com/phpmyadmin/phpmyadmin/commit/258de2479bffbce336538438f85cd80cb5d985cb)
- [62b9d8ca92 - Merge #16354 - Fixes #14698 - Database named as 'New' causes PHP fatal error](https://github.com/phpmyadmin/phpmyadmin/commit/62b9d8ca92393be144960e143e848d148ee065d6)
- [11a7ffb75c - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/11a7ffb75c2c56fcf6a07e622d9ab1b64f8d35f2)

## Fourth week (39)

Only translation updates this week.

- [8fd644f645 - Translated using Weblate (Ukrainian)](https://github.com/phpmyadmin/localized_docs/commit/8fd644f6456a893c5ab45410b3be1141e230f63d)
- [95e0886a1b - Translated using Weblate (German)](https://github.com/phpmyadmin/localized_docs/commit/95e0886a1bde1bd9bf25a51154e57d63f0cc6f23)
- [20c44ac545 - Translated using Weblate (French)](https://github.com/phpmyadmin/localized_docs/commit/20c44ac545bea26b251d775a078b4afe6f1f1fc4)
- [f4f4819caa - Translated using Weblate (Slovak)](https://github.com/phpmyadmin/localized_docs/commit/f4f4819caa30ba6f72204ac26dd2f40a998de802)
- [7848581e8e - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/localized_docs/commit/7848581e8e9e55fac152db334a92d67e1d7f20b5)
- [c4e2e997a6 - Translated using Weblate (Portuguese (Brazil))](https://github.com/phpmyadmin/localized_docs/commit/c4e2e997a60c8e2ce1868b41872756ff64d5af8f)

## Fifth week (40)

I updated the codecov configuration and added the Réunion Creole language, which was missing from the language list.

- [946c780e57 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/946c780e57d08c1f6d541e9ef4d6cbbcde05f60c)
- [22ef095f69 - Update codecov.yml config](https://github.com/phpmyadmin/phpmyadmin/commit/22ef095f699362c54fbae770b2eb93a54629d1fe)
- [43f0a2927e - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/43f0a2927e247f3eb8034cf5c911447537d8a08c)
- [5881379697 - Add a missing language (rcf)](https://github.com/phpmyadmin/phpmyadmin/commit/5881379697313653ee3e189d6ce74b11cc5c624f)
- [5988b8eb80 - Translated using Weblate (Esperanto)](https://github.com/phpmyadmin/phpmyadmin/commit/5988b8eb80e143cece63861fb726e1d974a05003)
- [427dfa14b8 - Translated using Weblate (Esperanto)](https://github.com/phpmyadmin/phpmyadmin/commit/427dfa14b8d25f6c429f607941d10c9f8a24c84c)
- [2b4bfab966 - Translated using Weblate (Esperanto)](https://github.com/phpmyadmin/phpmyadmin/commit/2b4bfab966d3939c52265923182e4a5ede6c9509)
- [c3efe58e13 - Translated using Weblate (Esperanto)](https://github.com/phpmyadmin/phpmyadmin/commit/c3efe58e13019f141378bf7f12a06b4ece5ce312)
- [b754c38c7e - Translated using Weblate (Esperanto)](https://github.com/phpmyadmin/phpmyadmin/commit/b754c38c7ee252c0cadafe73e974a217e31812cd)
- [9686c80afc - Translated using Weblate (Esperanto)](https://github.com/phpmyadmin/phpmyadmin/commit/9686c80afc1d49ed1708dd96cb5b0fe836c0c64a)
- [806d177e2f - Translated using Weblate (Esperanto)](https://github.com/phpmyadmin/phpmyadmin/commit/806d177e2fb3b2c8ebdaafd8ea6bcd9049f1de18)
- [8fee0efa46 - Translated using Weblate (Esperanto)](https://github.com/phpmyadmin/phpmyadmin/commit/8fee0efa460f534eeea9b309f303ab534f50453d)
- [58bca178cb - Translated using Weblate (Esperanto)](https://github.com/phpmyadmin/phpmyadmin/commit/58bca178cbf03761530dbfa9bb2776119cfcb3d7)
- [1b43763518 - Translated using Weblate (Réunion Creole)](https://github.com/phpmyadmin/phpmyadmin/commit/1b43763518078f47d329a53098b7e1376a12c0cd)
- [deb531ef86 - Translated using Weblate (Réunion Creole)](https://github.com/phpmyadmin/phpmyadmin/commit/deb531ef86bbbd2f49a99a22b8f5caa446fba29a)
- [202f94890d - Added translation using Weblate (Réunion Creole)](https://github.com/phpmyadmin/phpmyadmin/commit/202f94890d24c3cc26883be22fa51e8ed008a36f)
- [c82da964ac - Added translation using Weblate (Réunion Creole)](https://github.com/phpmyadmin/phpmyadmin/commit/c82da964acc8bc0fa34fb7d62047904edbd24a33)
- [8e44ae8e7d - Added translation using Weblate (Réunion Creole)](https://github.com/phpmyadmin/sql-parser/commit/8e44ae8e7d8aa61d96f1efe9f61b4c606c3a121e)
- [565774305f - Translated using Weblate (Azerbaijani)](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/565774305f301e7759fd6041d96225d2b3c411aa)
- [cd3538357e - Added translation using Weblate (Réunion Creole)](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/cd3538357e6bf33fcce535dece710d03b05ebe50)

