+++
title = "Report for June 2023"
date = 2023-06-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for June 2023.

<!-- more -->

In June 2023 my focus was the sql-parser 5.8.0 release and the docker image.

## First week (22)

I merged [#18474](https://github.com/phpmyadmin/phpmyadmin/pull/18474) to require at least PHP 8.1.2 on phpmyadmin, and [#407](https://github.com/phpmyadmin/phpmyadmin/pull/407) to add a no-network option on the Alpine Dockerfile. On sql-parser I merged a series of code cleanups ([#454](https://github.com/phpmyadmin/phpmyadmin/pull/454) to [#459](https://github.com/phpmyadmin/phpmyadmin/pull/459)), including the removal of the Misc class and the native return types.

- [b2555a4fe4 - Merge remote-tracking branch 'origin/master'](https://github.com/phpmyadmin/phpmyadmin/commit/b2555a4fe4aee1de1e1672af347380d53d87cc2c)
- [bf9519444a - Merge #18474 - Require min php 80102 (8.1.2)](https://github.com/phpmyadmin/phpmyadmin/commit/bf9519444a018647a47e439d300fa9d82a768d4d)
- [9a7991c3f2 - Merge #407 - Add no-network option on alpine Dockerfile](https://github.com/phpmyadmin/docker/commit/9a7991c3f2359933d2d39e937ad275120b381ece)
- [baa0bd2234 - Add a CHANGELOG entry for #454](https://github.com/phpmyadmin/sql-parser/commit/baa0bd22347d24e8d7acffb48b28a6f12204c68a)
- [0d4d75e0cf - Merge #454 - Remove Misc class](https://github.com/phpmyadmin/sql-parser/commit/0d4d75e0cff542d7ca95a1aea90577d1d994327f)
- [8f524d7c62 - Merge #453 - Fix ReplaceStatement property type](https://github.com/phpmyadmin/sql-parser/commit/8f524d7c62318d8ca61822125a94ddf0121f48ea)
- [73fc55e8e9 - Merge #458 - Disallow short nullable](https://github.com/phpmyadmin/sql-parser/commit/73fc55e8e9f22fa5e70e944eaa1a31e759ef86af)
- [aeb52dbde1 - Merge #455 - Remove unused if](https://github.com/phpmyadmin/sql-parser/commit/aeb52dbde14d3bf761dfda2b983decf9bc3768fb)
- [e81953ac42 - Merge #456 - Remove empty constructor](https://github.com/phpmyadmin/sql-parser/commit/e81953ac425e7a8dfeb1740c4f452eb93a478b38)
- [568e3c8e58 - Merge #459 - Add native return types](https://github.com/phpmyadmin/sql-parser/commit/568e3c8e58229a479ff957bb57fe097629acaecb)

## Second week (23)

I released sql-parser 5.8.0 after merging [#471](https://github.com/phpmyadmin/phpmyadmin/pull/471) to drop the USE_UTF_STRINGS constant and [#474](https://github.com/phpmyadmin/phpmyadmin/pull/474) to fix [#450](https://github.com/phpmyadmin/phpmyadmin/pull/450), the parsing of insert queries with functions that trimmed commas.

- [a027c3bb27 - Add a CHANGELOG entry for #471](https://github.com/phpmyadmin/sql-parser/commit/a027c3bb27dd07d2e7559b79fdd1d3184b612b3d)
- [f879250cf6 - Merge #471 - Drop USE_UTF_STRINGS constant](https://github.com/phpmyadmin/sql-parser/commit/f879250cf64936c89fc3bd80c8c4b977961899bd)
- [c3013dc19a - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/c3013dc19a7e19dc189e01c5ba58623deb590cb2)
- [9f8b695e97 - Update psalm baseline](https://github.com/phpmyadmin/sql-parser/commit/9f8b695e979e44cf1355387be144b4db5c7fce19)
- [417ef40e45 - Prepare for the next version](https://github.com/phpmyadmin/sql-parser/commit/417ef40e452e16978bc3e124ed756f240ac91b1a)
- [db1b3069b5 - Release 5.8.0](https://github.com/phpmyadmin/sql-parser/commit/db1b3069b5dbc220d393d67ff911e0ae76732755)
- [9c86ccd517 - Fix a coding standard mistake](https://github.com/phpmyadmin/sql-parser/commit/9c86ccd5177c549b24704798b368ffd0241a6d6e)
- [5f0da17407 - Merge #467 - Use a strict array type](https://github.com/phpmyadmin/sql-parser/commit/5f0da174079fc94f351cad797128510af511b997)
- [595f82a90a - Merge #469 - Fix type hint in IndexHint](https://github.com/phpmyadmin/sql-parser/commit/595f82a90ac78e4440d1232f1a9f3cf7cc7d3a81)
- [32a77106d7 - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/32a77106d777bbab3da90af0fff3c448012de66d)
- [88c8314b76 - Add a CHANGELOG entry for #474](https://github.com/phpmyadmin/sql-parser/commit/88c8314b763bc820c9cdb2854b027429287c8c38)
- [ef7a40dfd4 - Merge #474 - Fix #450 - Parsing insert queries with functions trims commas](https://github.com/phpmyadmin/sql-parser/commit/ef7a40dfd4ea68eb88bdb11c8da0e22857581525)

## Third week (24)

I merged [#18489](https://github.com/phpmyadmin/phpmyadmin/pull/18489) to remove $cookiePath, and on the Debian side I sent google-recaptcha 1.3.0-1 to unstable.

- [8468c104af - Merge #18489 - Remove $cookiePath](https://github.com/phpmyadmin/phpmyadmin/commit/8468c104af1cea3352eec7639ad39ee5eaa024d9)
- [d5ac8a5a45 - Send 1.3.0-1 to unstable](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/d5ac8a5a45c35513bcf4770a075398c276508a58)
- [7184b35fc2 - Update d/changelog](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/7184b35fc263eb6778d7fce4e60ec5b7d15c14c4)
- [13f75eeaac - Update examples patch](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/13f75eeaac7dd85f72e19470bd4953e9a88cbcf8)
- [63419b5bf6 - Drop phpunit 9 patches](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/63419b5bf6a47302c22daceac24638c94d0f840a)
- [9d2ca23782 - Update upstream source from tag 'upstream/1.3.0'](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/9d2ca23782907b2f1cc823ca002fdfd5b15b03e7)
- [cda97bb8d5 - New upstream version 1.3.0](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/cda97bb8d51c5238bd1dad0695edc8ba98cadc88)
- [3bd8cb645a - Update gbp.conf filter](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/3bd8cb645a5ba239435ba772c9b3116bf862cf41)
- [c5f098b3d9 - Switch to mode=git since upstream gitattributes removed the test folder](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/c5f098b3d9b4f34976c7fa54634911a244ab7f77)

## Fourth week (26)

I fixed [#18392](https://github.com/phpmyadmin/phpmyadmin/issues/18392), the query format not working inside the view modal, and [#18403](https://github.com/phpmyadmin/phpmyadmin/issues/18403), an uncaught JSON.parse SyntaxError. On docker I merged [#411](https://github.com/phpmyadmin/phpmyadmin/pull/411) to update to PHP 8.2 and [#415](https://github.com/phpmyadmin/phpmyadmin/pull/415) to add the bcmath extension for the 2nd factor authentication. On sql-parser I merged [#485](https://github.com/phpmyadmin/phpmyadmin/pull/485), [#486](https://github.com/phpmyadmin/phpmyadmin/pull/486) and [#487](https://github.com/phpmyadmin/phpmyadmin/pull/487).

- [7d10e2f87d - Merge #18516 - Fix #18392 - Format query not working inside view modal](https://github.com/phpmyadmin/phpmyadmin/commit/7d10e2f87d95cb74af74569c84de630bcb7c44ba)
- [74b7253f6b - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/74b7253f6b81c880e50866ca203968b797d0e2fb)
- [42f0b8fe0f - Add a ChangeLog entry for #18403](https://github.com/phpmyadmin/phpmyadmin/commit/42f0b8fe0f6ccd76ea3584c23571239b34ae2334)
- [9162f1afe9 - Merge #18518 - Fix #18403 - Uncaught SyntaxError: JSON.parse](https://github.com/phpmyadmin/phpmyadmin/commit/9162f1afe96d295a6b0b8af8668a0fe3dd5dd6b6)
- [cbc8595258 - Update the ChangeLog entry for #17420](https://github.com/phpmyadmin/phpmyadmin/commit/cbc85952589b87f19b89001c41437b74b238f43f)
- [692333aa2d - Update generate-stackbrew-library.sh from upstream build pack](https://github.com/phpmyadmin/docker/commit/692333aa2d7ffd02f8763862295f78b4c61e6fed)
- [8674356a6d - Merge #408 - Refactor update.sh](https://github.com/phpmyadmin/docker/commit/8674356a6d0f67eb89d0200647832fc3853781fd)
- [a5b42082a8 - Update CHANGELOG.md](https://github.com/phpmyadmin/docker/commit/a5b42082a83bc45f8c6b051489a3849175eb584d)
- [3c0561bd6e - Run update.sh](https://github.com/phpmyadmin/docker/commit/3c0561bd6e9c968dc61192ef36e55f6776a27f2a)
- [636af2024a - Revert "Auxiliary commit to revert individual files from d10b78cde45c4b6e081e4e5e38f354347838fb6f"](https://github.com/phpmyadmin/docker/commit/636af2024a47c87831d5da82ac3ca1dfefdff57c)
- [1c138c510c - Revert "Auxiliary commit to revert individual files from f650628a767be59159f10b9f9c18821235fb2d12"](https://github.com/phpmyadmin/docker/commit/1c138c510cf0451cc642d3bb0eebfd8a3499532a)
- [813fcf8410 - Revert "Auxiliary commit to revert individual files from 5239485cfc6ed1099b15d634dc9431ddabb938ab"](https://github.com/phpmyadmin/docker/commit/813fcf8410ee1ae040eae899d53c6d35396b095d)
- [d10b78cde4 - Revert "Auxiliary commit to revert individual files from e68cbb87af581149bf433be6b94600c0288aa452"](https://github.com/phpmyadmin/docker/commit/d10b78cde45c4b6e081e4e5e38f354347838fb6f)
- [644a36f7a0 - Revert "Run update.sh"](https://github.com/phpmyadmin/docker/commit/644a36f7a0a39f2148138b69a4fd9cde064361c9)
- [2d43a62d20 - Add a CHANGELOG entry for #415](https://github.com/phpmyadmin/docker/commit/2d43a62d2051d6699327adbbe8006d4b2dabd543)
- [328b498f51 - Merge #415 - add extension bcmath for 2nd factor authentication](https://github.com/phpmyadmin/docker/commit/328b498f51d5ba7a9b559de039cd17fde2c6d89f)
- [b3cb5de98e - Make GitHub actions sed back the config to MySQL mode if needed](https://github.com/phpmyadmin/docker/commit/b3cb5de98e05009032e793e96e97ed2998190380)
- [87e2c6a325 - Fix mysqladmin and MYSQL_ROOT_PASSWORD not existing anymore on MariaDB 11](https://github.com/phpmyadmin/docker/commit/87e2c6a325ee498056a4039a304e26cbfb1db0e4)
- [87bbb8dd8f - Merge #417 - Fix #416 - for debian 12 issue that caused libraries for extensions to be uninstalled](https://github.com/phpmyadmin/docker/commit/87bbb8dd8f3bddd6e5206926c54f9603cb22f136)
- [adf9118a38 - Merge #401 - Add back a /sessions volume for sessions persistence](https://github.com/phpmyadmin/docker/commit/adf9118a3812f19bded4f59e584ddf77901d44d0)
- [a6c091bd8c - Add a test for #401 - `/etc/phpmyadmin/conf.d/`](https://github.com/phpmyadmin/docker/commit/a6c091bd8cce04fcb87ae9449915f02337a1b410)
- [d455a71d95 - Merge #399 - Add back a /sessions volume for sessions persistence](https://github.com/phpmyadmin/docker/commit/d455a71d95a0621bbfef03bd074054b21d589b18)
- [948bf2d147 - Merge #411 - Update to PHP 8.2](https://github.com/phpmyadmin/docker/commit/948bf2d147e68872cbeed52b337504dc7ba225a1)
- [e1da7554b4 - Use MariaDB LTS and test on each MariaDB LTS](https://github.com/phpmyadmin/docker/commit/e1da7554b4b81670f9d5fc93368f346a00cb9db2)
- [fb81601c24 - Update psalm baseline](https://github.com/phpmyadmin/sql-parser/commit/fb81601c24c2087580df36eb7b6b1bfaf01f6ded)
- [6aac9c128e - Merge #470 - Restrict param type of OptionsArray::merge](https://github.com/phpmyadmin/sql-parser/commit/6aac9c128e0c833a8e2e4988a012c57c57b2edce)
- [f9c7db59a8 - Merge #479 - `$name` property can never be a string](https://github.com/phpmyadmin/sql-parser/commit/f9c7db59a8c0ad111f33439aa697e816d16cb7c9)
- [de86368bc0 - Update test data after #482](https://github.com/phpmyadmin/sql-parser/commit/de86368bc019b49a5766c3bc46e2fea0813ace84)
- [644b14c6ee - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/644b14c6ee25fd8daa9c59771a45515ee2c3079b)
- [66eb8ebf5c - Add a CHANGELOG entry for #283](https://github.com/phpmyadmin/sql-parser/commit/66eb8ebf5ceb30c050f4ea8667e8b0d036327b7f)
- [d58a8ff8af - Merge #487 - Fix #283 - MariaDB window function with alias gives bad linting errors](https://github.com/phpmyadmin/sql-parser/commit/d58a8ff8af2c8a83cff158344bd340855c6d6912)
- [3e32dd84f8 - Add a CHANGELOG entry for #234 and #478](https://github.com/phpmyadmin/sql-parser/commit/3e32dd84f808a78dbc01b6f6f4e9ad850170b7d1)
- [274fc3a6d1 - Merge #485 - Fix #478, Fix #234 - `ALTER TABLE … MODIFY … ENUM('<reserved_keyword>')` is being wrongly parsed](https://github.com/phpmyadmin/sql-parser/commit/274fc3a6d169e42b4b249dd65f6abb01fd8f7966)
- [5b4b5e275c - Add a CHANGELOG entry for #306](https://github.com/phpmyadmin/sql-parser/commit/5b4b5e275cfa04ff73a903092d8b4dc7c34a6635)
- [0780376600 - Merge #486 - Fix #306 - ":=" was not recognized as an operator just like "="](https://github.com/phpmyadmin/sql-parser/commit/0780376600f92ff46eed2e8e4a0df9ea5b678a39)
- [9838a1c833 - Update parseAlter3 out data](https://github.com/phpmyadmin/sql-parser/commit/9838a1c8337c7bad71dc79676a3d992c7802fc78)
- [f1d82f0403 - Fix a condition in addRecord to be more accurate with the documented type](https://github.com/phpmyadmin/shapefile/commit/f1d82f04030f11a8a22924fc323dee9dd4bd5508)
- [16cb2b83db - Update phpstan to 1.x](https://github.com/phpmyadmin/shapefile/commit/16cb2b83db011277f6fc6111bad53ec2029a4cac)
- [648a16ea0f - Use the current php binary for invoking sub scripts](https://github.com/phpmyadmin/shapefile/commit/648a16ea0f0cfd9c5706837764599d3342178262)
- [5a8b97e4a1 - Ignore two phpcs rules](https://github.com/phpmyadmin/shapefile/commit/5a8b97e4a1ac34f321d9f8c7ea997e32423533c1)
- [5b17884003 - Bump codecov/codecov-action to v3](https://github.com/phpmyadmin/shapefile/commit/5b1788400365beb1bc3c8b2b0d7246d95b9cf2c5)

