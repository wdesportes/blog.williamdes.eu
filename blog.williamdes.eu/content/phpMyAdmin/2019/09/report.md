+++
title = "Report for September 2019"
date = 2019-09-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for September 2019.

<!-- more -->

In September 2019 I worked on the main repository, docker, sql-parser and the Debian packaging. On the side I fixed the deprecated snake_case usage in pixelpeter/laravel5-isocodes-validation ([#15](https://github.com/pixelpeter/laravel5-isocodes-validation/pull/15)).

## First week (36)

I worked on the CI: I moved to xenial while keeping PHP 5.5 on a trusty custom step, used NodeJS 10 on the release step and fixed the OSX build, cherry-picking Maurício's work and removing sudo from the step. I also reverted the floating menubar fix, it was not the right fix. On the designer I fixed the page saving and reloading: the page number is cast to an int, -1 or positive, the URL and the page status are correct after saving ([#15440](https://github.com/phpmyadmin/phpmyadmin/issues/15440), [#15439](https://github.com/phpmyadmin/phpmyadmin/issues/15439)) and the full screen icon says enter mode again. On docker I merged four pull-requests: documentation for using secrets, a cleanup of unused files with a configuration improvement, the generate-stackbrew-library.sh script and a makefile fix. I also opened a pull-request to rewrite the end to end tests with Cucumber and Puppeteer ([#15462](https://github.com/phpmyadmin/phpmyadmin/pull/15462)).

- [d43e34868b - Merge branch 'QA_5_0' into master](https://github.com/phpmyadmin/phpmyadmin/commit/d43e34868bf74912c763d097c50d0749684422e2)
- [d070127c2d - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/d070127c2d08144a2279e1d021a94b7a1acb899f)
- [7110206cb9 - Fix redirected links in docs](https://github.com/phpmyadmin/phpmyadmin/commit/7110206cb91281553a24f4519aec68e902d0d59c)
- [8343320841 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/8343320841419aae0179a713eda23d6065d81766)
- [4de8243469 - Move php 5.5 step to custom steps to use trusty instead of xenial](https://github.com/phpmyadmin/phpmyadmin/commit/4de82434698ed454837c0f23963923e4089fded1)
- [3ce36efe4f - Use xenial and remove mysql-server-5.6 from packages on TravisCI](https://github.com/phpmyadmin/phpmyadmin/commit/3ce36efe4f8edb4d0b343e02a0766008fc8aab98)
- [42ec546c56 - Use NodeJS 10 on travis CI release step and fix OSX step](https://github.com/phpmyadmin/phpmyadmin/commit/42ec546c56eb10e48c3d92e39aadcdd33daed24a)
- [1095d793f0 - Update brew on travis CI OSX step](https://github.com/phpmyadmin/phpmyadmin/commit/1095d793f02861e567ecf9d809733df88f969dcf)
- [983a49dc00 - Revert "Add ChangeLog entry for #15127"](https://github.com/phpmyadmin/phpmyadmin/commit/983a49dc00068afa00fe7c9a1eead64d9108da03)
- [1056e65b2b - Revert "Fix #15127 - fixed the white square in floating menubar"](https://github.com/phpmyadmin/phpmyadmin/commit/1056e65b2b094c7e13c1c4bf34c69907754efaa5)
- [27f56863fe - Add ChangeLog entries for #15349, #15440, 58f56111, 79c1b628, baada957, 631de237a](https://github.com/phpmyadmin/phpmyadmin/commit/27f56863fe27271438f304347bc387aa05f8fe72)
- [631de237a3 - Fix designer exit full screen mode icon and text back to enter mode](https://github.com/phpmyadmin/phpmyadmin/commit/631de237a3ab6e440fb6ce546240ec8670a93741)
- [baada9571f - Fix designer page URLs when saving](https://github.com/phpmyadmin/phpmyadmin/commit/baada9571fa70f174edf50e98f53702d12a7d92b)
- [79c1b62831 - Fix designer page number -1 is an int](https://github.com/phpmyadmin/phpmyadmin/commit/79c1b6283103c7d206232b7ac3cc302d62602829)
- [58f56111df - Fix reloading a designer page](https://github.com/phpmyadmin/phpmyadmin/commit/58f56111df9b165a43fd3bdabfa8dc429d321f51)
- [f49c253b9a - Fix #15440 - Page number is not being updated in the URL after saving a designer's page](https://github.com/phpmyadmin/phpmyadmin/commit/f49c253b9a210413b1771a8364c043d1165cb649)
- [57a00351a2 - Fix #15439 - Designer page status not updated when added a new table from another database](https://github.com/phpmyadmin/phpmyadmin/commit/57a00351a24fb7493b80a18fe20b906d6300a155)
- [21dbdb8968 - Merge #232 - Add documentation for using secrets](https://github.com/phpmyadmin/docker/commit/21dbdb8968430b107fb041d7dbc1eadddf533d99)
- [ff0e3c994a - Merge #221 - remove files and improve configuration](https://github.com/phpmyadmin/docker/commit/ff0e3c994a7026d088ce6396df9ce68c3d237368)
- [24d76d8e35 - Merge #216 - Add generate-stackbrew-library.sh](https://github.com/phpmyadmin/docker/commit/24d76d8e35a1d096a35cd7dabd0f143094f0e0ad)
- [d3281e86e1 - Merge #234 - Fix makefile](https://github.com/phpmyadmin/docker/commit/d3281e86e11402e74610f2d5c9f29e95263050ad)

## Second week (37)

A quiet week: on the Debian packaging of google-recaptcha I only fixed the Vcs-* URLs.

- [2caa994416 - Fix Vcs-urls](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/2caa9944162f08e26d2c15ae7c5f966bbc587a2c)

## Third week (38)

I fixed the advisor that failed on MySQL 8.0.3 and above ([#14245](https://github.com/phpmyadmin/phpmyadmin/issues/14245)), and the errors on the ssl_* variables ([#14804](https://github.com/phpmyadmin/phpmyadmin/issues/14804), [#15304](https://github.com/phpmyadmin/phpmyadmin/issues/15304)). I also fixed the texts that were not truncated anymore, a regression from an earlier pull-request ([#15414](https://github.com/phpmyadmin/phpmyadmin/pull/15414)), and upgraded tcpdf to 6.3.x.

- [d33122867f - Merge branch 'QA_5_0' into master](https://github.com/phpmyadmin/phpmyadmin/commit/d33122867f6fe9662a054f7d0762eb18786c6621)
- [bbf94a7f40 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/bbf94a7f40fe7f8b4e818f56ea39663341a9a2fb)
- [614468f905 - Add ChangeLog entry for #14245](https://github.com/phpmyadmin/phpmyadmin/commit/614468f905cf4812e726eb0f7e9713da725ed2fb)
- [88821f8248 - Fix #14245 - mysql 8.0.3 and above fails on advisor](https://github.com/phpmyadmin/phpmyadmin/commit/88821f8248b4544fe51c426cea0cecd1aaaa1af2)
- [f1f4860043 - Merge branch 'QA_5_0' into 'master'](https://github.com/phpmyadmin/phpmyadmin/commit/f1f486004304963e71b81b22f184b3853597fd2b)
- [adbaf63551 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/adbaf63551297ea2ef5f67b0086b7071422a61f0)
- [9a77826c2f - Add ChangeLog entry for #14804](https://github.com/phpmyadmin/phpmyadmin/commit/9a77826c2fcb91b060bc44976be6e3c0ab8e87a7)
- [9a6a66b9f4 - Fix #14804 - Undefined index: ssl_* variables](https://github.com/phpmyadmin/phpmyadmin/commit/9a6a66b9f46e9707ae54482ee500945cc3df65d1)
- [b5b1488bd6 - Add ChangeLog entry for #15304](https://github.com/phpmyadmin/phpmyadmin/commit/b5b1488bd66b477515dbd0b7cede3495a4282a6f)
- [eb525891ce - Fix #15304 - ssl_use php error](https://github.com/phpmyadmin/phpmyadmin/commit/eb525891ce01b3102b44066d7b77fa644cfd6ec0)
- [988e644c08 - Fix texts where not truncated anymore](https://github.com/phpmyadmin/phpmyadmin/commit/988e644c088615499282e68a54527090e77b21c5)
- [1859f8afc0 - Upgrade tcpdf to 6.3.x](https://github.com/phpmyadmin/phpmyadmin/commit/1859f8afc02d0578ab7fb43bb5c8f1e68e994eca)

## Fourth week (39)

This week was about phpunit 8 support: I updated sql-parser ([#261](https://github.com/phpmyadmin/phpmyadmin/pull/261)), motranslator and shapefile, adding the `void` return type on setUp and fixing the deprecated annotations. I also added the GitLab CI configuration files for the Debian packaging.

- [dc8ee8e44d - Set phpunit version from ^8.0 to ^8](https://github.com/phpmyadmin/sql-parser/commit/dc8ee8e44df4ca782dc69c1b453c5830f6f88ec5)
- [1fe95d9b79 - Add support for phpunit 8.0](https://github.com/phpmyadmin/sql-parser/commit/1fe95d9b79279d4062d942b95bb5177467d4a1f3)
- [9798cdd11c - Fix deprecated annotations ](https://github.com/phpmyadmin/sql-parser/commit/9798cdd11ce18522a8272c260888f03bba581721)
- [c9406f4a0e - Set return type to void on setUp for phpunit](https://github.com/phpmyadmin/sql-parser/commit/c9406f4a0ed1220056748d4924a46e367b7f2db1)
- [a4a8eb72da - Add support for phpunit 8.0](https://github.com/phpmyadmin/motranslator/commit/a4a8eb72dac07711a3ff50aa7e0405d887bbaede)
- [a70cf4635c - Set return type to void on setUp for phpunit](https://github.com/phpmyadmin/motranslator/commit/a70cf4635cf476ef300aaeb5578fa86ffa20bb06)
- [a3e02c09ec - Allow usage of phpunit ^8](https://github.com/phpmyadmin/shapefile/commit/a3e02c09eca23ffc1d0c894f6ff19823ccb1fb74)
- [5f3183a3f0 - Add gitlab CI config file](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/5f3183a3f006219540c2ef7bb5d54c1b737480ed)
- [a83c6c9d08 - Add gitlab CI config file](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/a83c6c9d086b2febe1114493b6b7b8f4eb824b2a)
- [08fdc4cfb3 - Add debian gitlab CI config file](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/08fdc4cfb3743ba1e998f628bb2995cbf4e82304)
- [1d41857cd2 - Add gitlab CI config file](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/1d41857cd269b3a71e6da4af97677542754c1d43)

## Fifth week (40)

I increased the upload and post limits on the docker image, which closed a handful of docker issues ([#238](https://github.com/phpmyadmin/phpmyadmin/pull/238), [#240](https://github.com/phpmyadmin/phpmyadmin/pull/240), [#239](https://github.com/phpmyadmin/phpmyadmin/pull/239), [#233](https://github.com/phpmyadmin/phpmyadmin/pull/233) and [#189](https://github.com/phpmyadmin/phpmyadmin/pull/189)).

- [e9d1da4ebc - Increase limits for upload and post](https://github.com/phpmyadmin/docker/commit/e9d1da4ebc46e6a514b4d1dd8e40e90009709db9)

