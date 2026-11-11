+++
title = "Report for March 2022"
date = 2022-03-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for March 2022.

<!-- more -->

In March 2022 my focus was tests and CI, plus a few fixes.

## First week (9)

I fixed [#16746](https://github.com/phpmyadmin/phpmyadmin/issues/16746) by removing the use of the deprecated strftime in OpenDocument exports, and wrote a test for the OpenDocument class. I merged [#17191](https://github.com/phpmyadmin/phpmyadmin/pull/17191) to fix the GIS visualization with an edited query ([#17188](https://github.com/phpmyadmin/phpmyadmin/issues/17188)), and [#17377](https://github.com/phpmyadmin/phpmyadmin/pull/17377) for an incorrect usage of escapeMysqlWildcards.

- [6f6913855f - Add one more file to the create release exclude list](https://github.com/phpmyadmin/phpmyadmin/commit/6f6913855f11f8fc3f5f03a31dc739b6d35d0eda)
- [ce4ee3e9a1 - Add a ChangeLog entry for a4417e07df](https://github.com/phpmyadmin/phpmyadmin/commit/ce4ee3e9a16b42d09c5662d8c9f502ee4bbb708a)
- [ed133f270f - Write a test for the OpenDocument class](https://github.com/phpmyadmin/phpmyadmin/commit/ed133f270fb74a0cc502ef919042575a18889652)
- [a4417e07df - Ref #17418 - Fix #16746 - Remove the use of deprecated strftime in OpenDocument exports](https://github.com/phpmyadmin/phpmyadmin/commit/a4417e07dfa4d8e6ad949e364cd38c1c9502c8ce)
- [639175db9e - Fix a typo on OpenDocument class](https://github.com/phpmyadmin/phpmyadmin/commit/639175db9e86cf67ec9b4464c43dd07befc34978)
- [0c4b5051c0 - Cover one case of GisVisualization class - #17188](https://github.com/phpmyadmin/phpmyadmin/commit/0c4b5051c015f5c5f8f9c6f2e0557f3e9c1e249d)
- [2861579e25 - Cover more cases of GisVisualization class](https://github.com/phpmyadmin/phpmyadmin/commit/2861579e252b1a018111e2d0d683402e0a3e6f2f)
- [71efab6ff3 - Update phpstan and psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/71efab6ff37f9037a0a3b02772154de12e1ee230)
- [20a955b5cd - Force composer scripts to use the same version as the invoker, make it easy to use multi PHP versions](https://github.com/phpmyadmin/phpmyadmin/commit/20a955b5cd57a017f48946c7d430effdf9ea87da)
- [8f80a25f34 - Add a ChangeLog entry for #17188](https://github.com/phpmyadmin/phpmyadmin/commit/8f80a25f34ebb202b335cc1a699c4ee899f5cdc0)
- [dd0f88f6d9 - Forbid phpcs to sniff files that are in the .git folder](https://github.com/phpmyadmin/phpmyadmin/commit/dd0f88f6d92d2b146f2b945c8b503dbe4e769698)
- [1cad1f5808 - Merge #17191 - Fix #17188 - GIS visualization with edited query](https://github.com/phpmyadmin/phpmyadmin/commit/1cad1f58085e2cd9f16cc736cc9437dc6203ae54)
- [012d5aa60f - Add a ChangeLog entry for 049c6f877](https://github.com/phpmyadmin/phpmyadmin/commit/012d5aa60fc53cd3c4526407eff3574ef5ff4871)
- [049c6f8771 - Merge #17377 - Fix incorrect usage of escapeMysqlWildcards](https://github.com/phpmyadmin/phpmyadmin/commit/049c6f877119b27bf0067f5d8c33b6143d9e26c7)

## Second week (11)

A quiet week, I only merged the updates of the path to pt-PT instead of pt-BR on localized_docs.

- [6fbbfae2e5 - Merge updates of path to pt-PT instead of pt-BR](https://github.com/phpmyadmin/localized_docs/commit/6fbbfae2e53335e813539a495d40dba7a1e043bd)

## Third week (12)

Mostly CI work: I improved and fixed the Scrutinizer coverage upload on phpmyadmin, sql-parser, motranslator and shapefile, and marked PHP 8.1 as a normal tested version. On motranslator I merged #42 to add the ability to use APCu for the translation cache.

- [3164994a76 - Fetch more commits for Scrutinizer coverage upload](https://github.com/phpmyadmin/phpmyadmin/commit/3164994a761d1431cf39a01dcf75b30187879931)
- [8691e4af92 - Improve Codacy coverage sending workflow](https://github.com/phpmyadmin/phpmyadmin/commit/8691e4af92d88ca6782060c45a6de040cf7cf10e)
- [0d6175d6ca - Improve tests workflow to send the coverage to Scrutinizer in the right conditions](https://github.com/phpmyadmin/phpmyadmin/commit/0d6175d6ca7942fb888782443b3291b91dd7b0d0)
- [3f9a95ab79 - Merge branch 'master' into 6.0.x](https://github.com/phpmyadmin/sql-parser/commit/3f9a95ab79f9f3b8180665ad9d4177907fb867d2)
- [de4416b9f6 - Mark PHP 8.1 as a normal tested version](https://github.com/phpmyadmin/sql-parser/commit/de4416b9f60856c7cb8e366d268146cdeacac1ec)
- [0bc2989e9f - Improve and fix the Scrutinizer coverage upload](https://github.com/phpmyadmin/sql-parser/commit/0bc2989e9f806cc4580c29275f72feb226331a90)
- [91227d4aa6 - Merge #42 - Add ability to use APCu for translation cache](https://github.com/phpmyadmin/motranslator/commit/91227d4aa60224420cba69f1d5b2e565f6625944)
- [c42fb4becb - Add allow-plugins to composer.json](https://github.com/phpmyadmin/motranslator/commit/c42fb4becb125c62ec2485511c7f8dcd74fe82c3)
- [12298304e8 - Improve and fix the Scrutinizer coverage upload](https://github.com/phpmyadmin/motranslator/commit/12298304e8648a6fbd4955f86e6f2d4bf03b2481)
- [749f8347e6 - Mark PHP 8.1 as a normal tested PHP version and test on nightly](https://github.com/phpmyadmin/shapefile/commit/749f8347e613e43455d653249d191e710d0a1b79)
- [83cc112dd5 - Improve and fix the Scrutinizer coverage upload](https://github.com/phpmyadmin/shapefile/commit/83cc112dd55fcf73c33c05b09ea10578442c074a)

## Fourth week (13)

On the website I migrated to the CDN77 API v3 ([#151](https://github.com/phpmyadmin/phpmyadmin/pull/151)). On motranslator I added more tests for the StringReader class and fixed a type error on StringReader::read.

- [8d39b2cf95 - Ref #151 - Do not throw an exception for the queued state](https://github.com/phpmyadmin/website/commit/8d39b2cf958575d725f8a95ac57a6c8b744daf59)
- [a180276096 - Fix #151 - Migrate to CDN77 API v3](https://github.com/phpmyadmin/website/commit/a180276096e55ca1d4fc03191a3b497bbafc9ec7)
- [34bcb7d7ee - Ref #42 - Test nightly with the PHP extensions config](https://github.com/phpmyadmin/motranslator/commit/34bcb7d7ee48f00beb13c00c9e8310093f09622d)
- [fce2ec212a - Improve the tests workflow display name and fix Scrutinizer reports count](https://github.com/phpmyadmin/motranslator/commit/fce2ec212a637d43ce3b50541bce37069f11b57a)
- [7285b31690 - Add more tests for the StringReader class](https://github.com/phpmyadmin/motranslator/commit/7285b31690b39a0e35523d90298a934407b347fc)
- [0221fef43a - Fix a type error on StringReader::read](https://github.com/phpmyadmin/motranslator/commit/0221fef43a46d6b8bcfbef75c474771467788553)
- [e789faaf39 - Simplify composer commands](https://github.com/phpmyadmin/motranslator/commit/e789faaf3980fe895b926bcd66951823280f1301)
- [ae764cfeef - Run composer commands with the same PHP version as composer is run with](https://github.com/phpmyadmin/motranslator/commit/ae764cfeefb35ef9d879a8c243306ff46c80870b)
- [43888dc915 - Use use_website_config: false on Scrutinizer config](https://github.com/phpmyadmin/motranslator/commit/43888dc91584e299787466085cb9923625572618)

