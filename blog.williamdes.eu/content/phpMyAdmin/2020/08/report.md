+++
title = "Report for August 2020"
date = 2020-08-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for August 2020.

<!-- more -->

In August 2020 I added ReCaptcha v2 checkbox support, removed the underscore prefixes from property names and moved our libraries from Sami to Doctum.

## First week (32)

I added a `CaptchaMethod` config to support the ReCaptcha v2 checkbox, with tests. And I removed the underscore prefix from the property names, after dropping the phpcs rule that required it.

- [1f4cf4d8ee - Translated using Weblate (Croatian)](https://github.com/phpmyadmin/phpmyadmin/commit/1f4cf4d8eea7290a8019c2547cd4fad1b8d76126)
- [0360315db7 - Translated using Weblate (Hindi)](https://github.com/phpmyadmin/phpmyadmin/commit/0360315db7be4462ce62d47717254d294438f7ab)
- [f4b12b3396 - Translated using Weblate (Afrikaans)](https://github.com/phpmyadmin/phpmyadmin/commit/f4b12b3396ff0bb1e5b1c5dcce9116b8213b5b96)
- [7bdaaeca8b - Translated using Weblate (Croatian)](https://github.com/phpmyadmin/phpmyadmin/commit/7bdaaeca8b7ff0ee6b055462b265b4b8919846b0)
- [0420729153 - Translated using Weblate (Hindi)](https://github.com/phpmyadmin/phpmyadmin/commit/042072915314ea115e78b9f6fc4f0c33bcfe2b99)
- [454f86e9bb - Translated using Weblate (Vietnamese)](https://github.com/phpmyadmin/phpmyadmin/commit/454f86e9bbddfd13972b2c4628424844187136ca)
- [78cd5bf19d - Translated using Weblate (Greek)](https://github.com/phpmyadmin/phpmyadmin/commit/78cd5bf19dbe13b3641787f38f4abded8e47b0e2)
- [f2554ef858 - Translated using Weblate (Spanish)](https://github.com/phpmyadmin/phpmyadmin/commit/f2554ef8583be99b7ca3eb69948158b5ba4b5a23)
- [820a4290df - Translated using Weblate (Breton)](https://github.com/phpmyadmin/phpmyadmin/commit/820a4290dfe30c5cdc92639adf9efdec2282b3a0)
- [c75b98feba - Translated using Weblate (Hindi)](https://github.com/phpmyadmin/phpmyadmin/commit/c75b98feba68711f3315595163c84e3f1dd8c9a1)
- [998c33f7b0 - Translated using Weblate (Croatian)](https://github.com/phpmyadmin/phpmyadmin/commit/998c33f7b0a38757773a9ae5418ac9a6d72decf1)
- [5258d70be9 - Translated using Weblate (Chinese (Traditional))](https://github.com/phpmyadmin/phpmyadmin/commit/5258d70be9202cfc5f89b651bae742026f4d50fa)
- [cbc692de67 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/cbc692de672ebe2e039e0fa6ff4683068e5fb3b6)
- [83849b4889 - Update part of the phpunit xml configuration using CLI 9.3 --migrate-configuration](https://github.com/phpmyadmin/phpmyadmin/commit/83849b4889b594231d28e2aad8ed0b3669d6c877)
- [05c3a323d4 - #16300 - Document missing translation error.](https://github.com/phpmyadmin/phpmyadmin/commit/05c3a323d4d60b0898b738caec65ebd3d72a0f63)
- [5ec0b65e03 - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/phpmyadmin/commit/5ec0b65e03da225e2a0867b952c7c43805b92f6f)
- [96f59f9022 - Translated using Weblate (German)](https://github.com/phpmyadmin/phpmyadmin/commit/96f59f90223e13c9e0c05e72ef7eb8c0ba4e4cfe)
- [49365c3d83 - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/phpmyadmin/commit/49365c3d8339035a1d4a88812a9882d2f0c0e666)
- [ce8bbd9018 - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/phpmyadmin/commit/ce8bbd90186ec2509e75b1144a5391be9a635e85)
- [5f6dc745f0 - Translated using Weblate (Central Kurdish)](https://github.com/phpmyadmin/phpmyadmin/commit/5f6dc745f0d7219bdc8c534dd7b60140384039a6)
- [e00d31f714 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/e00d31f71482122f20bce41a55f7d3598f47c967)
- [0015703369 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/00157033693dc6aa9e93274290c888a70f656280)
- [e026742a5a - Add a ChangeLog entry for #16269](https://github.com/phpmyadmin/phpmyadmin/commit/e026742a5aeb73bc109753dfe20815e8ac603172)
- [0a3024460d - Merge #16299 - Fixes #16269 - Support ReCaptcha v2 checkbox](https://github.com/phpmyadmin/phpmyadmin/commit/0a3024460db538fe09011e9ae53da0d16c2ada40)
- [b9f87833fc - Translated using Weblate (Lithuanian)](https://github.com/phpmyadmin/phpmyadmin/commit/b9f87833fc51817bfecd446f994ce2cc2f9de454)
- [effc224dbf - Translated using Weblate (Lithuanian)](https://github.com/phpmyadmin/phpmyadmin/commit/effc224dbfd3763d01973193b7757cac45018843)
- [de541dd320 - Translated using Weblate (Lithuanian)](https://github.com/phpmyadmin/phpmyadmin/commit/de541dd320bbcd7248fabaf4055575cfc51c0678)
- [ee3594bf60 - Add config value for CaptchaMethod to libraries/config.default.php](https://github.com/phpmyadmin/phpmyadmin/commit/ee3594bf60c249402d97e04194d67154c4b09b96)
- [152e8434fa - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/152e8434fa6d5cd8c572c0e0d5fda5b0f1d5c065)
- [ac133f1f92 - #16269 - fix a coding standard issue](https://github.com/phpmyadmin/phpmyadmin/commit/ac133f1f9241057e9e8ec76d5f530a9cc4c2b342)
- [38dbc7cb16 - Fix #16269 - Add tests for CaptchaMethod](https://github.com/phpmyadmin/phpmyadmin/commit/38dbc7cb16fa878c06242120e0fc83097caa882c)
- [d14f7ad1e0 - Fix #16269 - Implement CaptchaMethod config to support ReCaptcha v2 checkbox](https://github.com/phpmyadmin/phpmyadmin/commit/d14f7ad1e05fbf993fa85194e5d556255e851a32)
- [a4b8bbb7d7 - Fix some typos found with yaspeller](https://github.com/phpmyadmin/phpmyadmin/commit/a4b8bbb7d7380ec956522c675adf3e98ae695a99)
- [ce83b34459 - Fixes #16278 - Remove phpcs underscore rule](https://github.com/phpmyadmin/phpmyadmin/commit/ce83b3445921d3cf0d4c93f3310ca3f4a83cdab3)
- [cce4bc993c - Fixes #16278 - Fix tests](https://github.com/phpmyadmin/phpmyadmin/commit/cce4bc993cb3459c877a5e1bec89cf646be7b963)
- [d63a72ad51 - Fixes #16278 - Remove underscore prefix from property names](https://github.com/phpmyadmin/phpmyadmin/commit/d63a72ad513618f5b306f0d3cda8f3ff7a121e30)
- [ae86b0aa67 - Fixes #16278 - Remove underscore prefix from property names of Qbe class](https://github.com/phpmyadmin/phpmyadmin/commit/ae86b0aa6747e73ecda50a3aba5fde5fcb150dc3)
- [a53189def0 - Fixes #16278 - Remove underscore prefix from property names of DBI class](https://github.com/phpmyadmin/phpmyadmin/commit/a53189def0929f0aa3036c27b94b9e0c7119f506)
- [34aea5195e - Update psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/34aea5195ef64f0c04c7d87af59d462b83faa033)
- [e51ec9512f - Merge #16297 - Fixes #16278 - Remove underscore prefix from property names](https://github.com/phpmyadmin/phpmyadmin/commit/e51ec9512fa675f98b7ed8ef305f11675c72d358)
- [f4c5d766d9 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/f4c5d766d92cafcf324daad5b6c1cc2d872f55d6)
- [f7f65e9718 - Translated using Weblate (Central Kurdish)](https://github.com/phpmyadmin/phpmyadmin/commit/f7f65e97188efbd7a8000b002e27a5ea78b8c070)
- [1b52c4eda4 - Translated using Weblate (Central Kurdish)](https://github.com/phpmyadmin/phpmyadmin/commit/1b52c4eda41c98fa5ce4669ef250daf8220d070f)
- [50868aefe5 - Translated using Weblate (Greek)](https://github.com/phpmyadmin/localized_docs/commit/50868aefe5abdedf17041e797e322816492aab62)
- [8ec4ea4dbd - Translated using Weblate (Polish)](https://github.com/phpmyadmin/localized_docs/commit/8ec4ea4dbd347e79d17681aa18d7e36f872abb98)
- [71e140151b - Translated using Weblate (Lithuanian)](https://github.com/phpmyadmin/localized_docs/commit/71e140151bd696ca265ee0c91e4c8447e752b97f)
- [16f9c111a6 - Translated using Weblate (German)](https://github.com/phpmyadmin/localized_docs/commit/16f9c111a6c97fb73f79d6143dafed181115fd43)
- [7857715985 - Translated using Weblate (French)](https://github.com/phpmyadmin/localized_docs/commit/7857715985768677b2749ba6576b4c889db569bf)
- [d56ba4339a - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/localized_docs/commit/d56ba4339abc6efcfcdb85410192f2144cce37b1)
- [a505497aaf - Translated using Weblate (English (United Kingdom))](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a505497aafd46d0bb8c4d66289c8e5f7df9c3352)
- [7f0c2b650c - Added translation using Weblate (English (United Kingdom))](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/7f0c2b650c3f843c6597b9012d6fbe81e0a7d66f)
- [1f57e3fe57 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/1f57e3fe576f08f7755eaa7cd816ef8106fe67e1)
- [b8af4e3214 - Update upstream main branch](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/b8af4e321494cbc0bb990a86d38fd4d3efd04590)
- [cbcec3ee04 - Use main as a main branch](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/cbcec3ee04a6c09358cf3db5839b79262a2fe703)

## Second week (33)

My focus of the week was replacing Sami by Doctum, on the main repository and on sql-parser, motranslator and shapefile. Sami had been unmaintained for a while, so I forked it as Doctum to keep the API documentation buildable. To help other projects do the same I sent pull-requests to phpseclib, easyrdf, drush, bolt, thelia and phpbb, and fixed the phpdoc errors Doctum reported on phpseclib. On these libraries I also synced the configuration files, and allowed PHP 8 on motranslator and shapefile.

- [18d9bffb6f - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/18d9bffb6fa6e5e898daa54e826e7e7ce77e38ee)
- [4b186b8f46 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/4b186b8f46e1cfbcb93839154025aeab94bf1767)
- [1bc91a799c - Exclude test/doctum-config.php from Scrutinizer analysis ](https://github.com/phpmyadmin/phpmyadmin/commit/1bc91a799c65bb97521927e0f538f777838b2c2b)
- [fa457e6b49 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/fa457e6b49fef63abd7f77bfbbfed6edd929df7e)
- [2e3a8f1c1c - Add a ChangeLog entry for #14644](https://github.com/phpmyadmin/phpmyadmin/commit/2e3a8f1c1c5585a1fb7615111fd80b0f1a482d04)
- [d387e4d0d7 - Merge #16273 - Fix #14644 - Use Doctum instead of Sami](https://github.com/phpmyadmin/phpmyadmin/commit/d387e4d0d7dff95d153c3d9e3c9dd9af8455a3de)
- [93c21ed7f1 - Fix #14644 - Use Doctum instead of Sami](https://github.com/phpmyadmin/phpmyadmin/commit/93c21ed7f18a0a1c198d60013fe271358b27178d)
- [3fb95245bc - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/3fb95245bcb3173e2658d14fef57e4f677f7b13e)
- [366c169c53 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/366c169c53272926f629490c8e5a20dcfebee2a7)
- [6f31612454 - Ignore build/ directory](https://github.com/phpmyadmin/sql-parser/commit/6f31612454eb1a6dba8722361e698fde056e9d60)
- [953e3c4e0f - Sync configuration files with the main repository and add Scrutinizer config](https://github.com/phpmyadmin/sql-parser/commit/953e3c4e0fd9bfaec21e0b48dde8425a22efc160)
- [402988fdc8 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/402988fdc802b05365ecd7a7fbac6211ef50099f)
- [e01422f9c5 - Support back PHP 5.3 on tests](https://github.com/phpmyadmin/sql-parser/commit/e01422f9c5e0387b7d7d3b1f89130260490a00d3)
- [f93f5fa401 - Replace Sami by Doctum](https://github.com/phpmyadmin/sql-parser/commit/f93f5fa401a349b88245ffffa0cde5c5e40695b0)
- [2252e8cd03 - Sync configuration files with the main repository and add Scrutinizer config](https://github.com/phpmyadmin/motranslator/commit/2252e8cd037c0c755ce8d5e9d14ff22e9c6c4dd1)
- [6a08aad727 - Fix Doctum config](https://github.com/phpmyadmin/motranslator/commit/6a08aad727b0b90e326c8a967ffcd1755beb800f)
- [70747c285e - Fixed coding standard issues after 2.x](https://github.com/phpmyadmin/motranslator/commit/70747c285ee34b0abd57053e0495bebe956fe9c4)
- [6c7ae0f466 - Upgrade coding standard to ^2.0](https://github.com/phpmyadmin/motranslator/commit/6c7ae0f4661bed170bd6e436897e1d86ae331ddd)
- [86c0124721 - Ignore /build/ instead of /doc/](https://github.com/phpmyadmin/motranslator/commit/86c0124721567dd787bf124d40ef52a4f89f4da5)
- [4479c9a674 - Use Doctum instead of Sami and re-build TravisCI file](https://github.com/phpmyadmin/motranslator/commit/4479c9a6743e327f16afb0fefb2f25be100260f7)
- [7b05b2159f - Update require-dev](https://github.com/phpmyadmin/motranslator/commit/7b05b2159f9d396e420ba989fbc11ce8629e1b88)
- [66c96a866f - Allow php 8.0](https://github.com/phpmyadmin/motranslator/commit/66c96a866fad6ecf7b340494af144ec04c965ad7)
- [11cb45087f - Update CHANGELOG.md](https://github.com/phpmyadmin/shapefile/commit/11cb45087ffc82e4afd368d5dfa0c3fc3f6d2b26)
- [4724f1958d - Update phpstan baselines](https://github.com/phpmyadmin/shapefile/commit/4724f1958d2a526c58034de89b676efab7aee90f)
- [d743ab6354 - Sync configuration files with the main repository and add coverage to Scrutinizer](https://github.com/phpmyadmin/shapefile/commit/d743ab635458820b6bfe2fda0ccb1b5fc0aef934)
- [6481a447b1 - Clean coding standard configuration file](https://github.com/phpmyadmin/shapefile/commit/6481a447b19bf3b2e3f4027fd4a7b7458d97e53d)
- [0868a73ecf - Fix some phpstan errors](https://github.com/phpmyadmin/shapefile/commit/0868a73ecfbf8d9295f3f5da1402751758667abb)
- [7cd3456045 - Fix ShapeFile::loadDBFHeader() after coding standard changes](https://github.com/phpmyadmin/shapefile/commit/7cd3456045d412f5998e089af13c1e29646eca56)
- [4478e55326 - Fix a Doctum parse error](https://github.com/phpmyadmin/shapefile/commit/4478e55326f37788e862a24b4f83cab182bf12bb)
- [e7199a4b4a - Enable dbase extension for phpstan](https://github.com/phpmyadmin/shapefile/commit/e7199a4b4a2494814ea0a9e335cc3c5f3b9de197)
- [5c12e476aa - Upgrade coding standard to ^2.0](https://github.com/phpmyadmin/shapefile/commit/5c12e476aa5ffcf6a08bea220f40f1c17f669d73)
- [1ad2ea0398 - Change the return signature of ShapeRecord::getContentLength](https://github.com/phpmyadmin/shapefile/commit/1ad2ea0398761f6312874050a5f399afa485168b)
- [ab9f8e1873 - Upgrade phpstan](https://github.com/phpmyadmin/shapefile/commit/ab9f8e1873cd86fb267dcd54afbabd593e6518ec)
- [fb80a01d7b - Allow PHP 8](https://github.com/phpmyadmin/shapefile/commit/fb80a01d7be5c28596396c6a1d210d804adf5374)
- [f9c7a27c64 - Use Doctum instead of Sami](https://github.com/phpmyadmin/shapefile/commit/f9c7a27c645396d79a08668211c66574e741ec82)
- [c16d39d1c0 - Clean dev dependencies](https://github.com/phpmyadmin/shapefile/commit/c16d39d1c07f477489c153e116051aad0ff181a8)
- [ad88e2d3ca - Allow phpunit 9](https://github.com/phpmyadmin/shapefile/commit/ad88e2d3cad316f6f3d455602582306c592caa24)

## Third week (35)

On sql-parser I upgraded phpstan and merged a fix to use `stream_select` instead of a non-blocking STDIN. I also allowed the backward compatibility check to fail, because of repeated false positives.

- [1db81ef03e - Use PHP 7.4 for phpstan analysis](https://github.com/phpmyadmin/sql-parser/commit/1db81ef03e8e1420555511b7bb74829ac22a1ba5)
- [39e1a300c8 - Allow "Backward compatibility check" to fail because of the repeated false positives](https://github.com/phpmyadmin/sql-parser/commit/39e1a300c876a6de3c6e447a621e6068bc2edce6)
- [9ce26b9319 - Upgrade phpstan](https://github.com/phpmyadmin/sql-parser/commit/9ce26b93198e13c4505af6e50511865123e62db7)
- [29ce64ec44 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/29ce64ec4421015fc0bd2f08a343786967cb5f5c)
- [e0da85e69f - Add a ChangeLog entry for #309](https://github.com/phpmyadmin/sql-parser/commit/e0da85e69f9eb3571982f161c831b68d6d537eb4)
- [0770895be1 - Merge #312 - Fix #309 - Use stream_select instead of non-blocking STDIN](https://github.com/phpmyadmin/sql-parser/commit/0770895be14d06f3ee9df912e947d7774eb11872)
- [c862a108b3 - #309 - Set back PHP compatibility](https://github.com/phpmyadmin/sql-parser/commit/c862a108b363c40fcc9d3ae03c0e0983f1a7d8ae)

## Fourth week (36)

One pull-request merged on the docker repository, to update the image paths.

- [b9da1f2c54 - Merge #301 - Update paths to image](https://github.com/phpmyadmin/docker/commit/b9da1f2c54c739b49f06c58a3970389a12515446)

