+++
title = "Report for November 2018"
date = 2018-11-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for November 2018.

<!-- more -->

In November 2018 I worked on the main repository, on static analysis and designer fixes.

## First week (44)

I merged a pull-request ([#14706](https://github.com/phpmyadmin/phpmyadmin/pull/14706)) and another one which removed the default server collation from the footer of the databases list ([#14965](https://github.com/phpmyadmin/phpmyadmin/pull/14965)).

- [d8a319ad17 - Merge pull request #14706 from Gaurav-Punjabi/issue#14965](https://github.com/phpmyadmin/phpmyadmin/commit/d8a319ad17d28625b228cfb411c08dbfbe12593e)

## Second week (47)

I worked on phpstan level 2 ([#14647](https://github.com/phpmyadmin/phpmyadmin/issues/14647)): I fixed the plugins, where the type is clearly a stdClass as the plugin template shows, the tests, the phpdoc and the configuration.

- [64741ec875 - Merge pull request #14729 from williamdes/phpstan-level-2](https://github.com/phpmyadmin/phpmyadmin/commit/64741ec875d8a8be1131cf3339924e9f9bf9d252)
- [2c407224ef - phpstan level 2 - Fix plugins](https://github.com/phpmyadmin/phpmyadmin/commit/2c407224ef964c29ebbfc28b0a5231df21a3a04b)
- [cc2665121d - phpstan level 2 - fixes](https://github.com/phpmyadmin/phpmyadmin/commit/cc2665121d8931b702c08ff12182cde9c452ee43)
- [ca8a424ed8 - phpstan level 2 - Fix some tests](https://github.com/phpmyadmin/phpmyadmin/commit/ca8a424ed8d7035ae87918a3378a5d4eed08b0b6)
- [bcefdd79fa - phpstan level 2 - Fix phpdoc](https://github.com/phpmyadmin/phpmyadmin/commit/bcefdd79fa96edcf94cb01d50111840e62e4babc)
- [969ad84e76 - phpstan level 2 - Update config](https://github.com/phpmyadmin/phpmyadmin/commit/969ad84e76703ce0f863f24b946c8f4e823fd54e)

## Third week (48)

I fixed the JavaScript errors in the designer ([#14352](https://github.com/phpmyadmin/phpmyadmin/issues/14352)) and cherry-picked the designer fix for [#13032](https://github.com/phpmyadmin/phpmyadmin/issues/13032) to QA_4_8, for empty databases and special characters in database names, which also closed [#14744](https://github.com/phpmyadmin/phpmyadmin/issues/14744) and [#14617](https://github.com/phpmyadmin/phpmyadmin/issues/14617). I fixed an uncaught TypeError in the routines ([#14749](https://github.com/phpmyadmin/phpmyadmin/issues/14749)) and merged a cleanup of unused code ([#14759](https://github.com/phpmyadmin/phpmyadmin/pull/14759)).
On elastic/elasticsearch I fixed a typo ([#35855](https://github.com/elastic/elasticsearch/pull/35855)).

- [69fb1d0237 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/69fb1d023741587f9a189411d26fafd9f6f942b1)
- [41e10d1c53 - Add ChangeLog entry for #14352](https://github.com/phpmyadmin/phpmyadmin/commit/41e10d1c53eed6f32761e7e3cc346a3a45db55a7)
- [9885df31fc - Merge pull request #14760 from williamdes/issue-14352-designer-php-error](https://github.com/phpmyadmin/phpmyadmin/commit/9885df31fcd84481ef3e3f628c84748553350f32)
- [cc2b1c8b99 - Fix #14352 - JavaScript errors with Designer](https://github.com/phpmyadmin/phpmyadmin/commit/cc2b1c8b9919ae67115366bb1a80c697bbd18944)
- [003da01c61 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/003da01c616386e5463036546fb1475fd476d1c9)
- [8027a762b5 - Merge pull request #14759 from williamdes/fix/scrutinizer-bugs](https://github.com/phpmyadmin/phpmyadmin/commit/8027a762b5d47f6edf12e2ec9321e7dee1a58a34)
- [84e99092ee - Add ChangeLog entry for #14617 and #13032](https://github.com/phpmyadmin/phpmyadmin/commit/84e99092eef9fc83b4563e12c4ca66ddf47601f2)
- [3f8305f10b - Merge pull request #14753 from williamdes/fix/designer-13032-QA_4_8](https://github.com/phpmyadmin/phpmyadmin/commit/3f8305f10bb17f1466cc720f5d572fe17f844411)
- [18c23df20f - Issue #13032 - fix designer on QA_4_8](https://github.com/phpmyadmin/phpmyadmin/commit/18c23df20f2507a67131ee880bbc35ec29cfeec4)
- [4a7ab3a1cb - Merge pull request #14750 from williamdes/type-error-routine-definition](https://github.com/phpmyadmin/phpmyadmin/commit/4a7ab3a1cb818dd30271f434811cea25c648f48d)
- [f0b51c144f - Remove unused code in tests](https://github.com/phpmyadmin/phpmyadmin/commit/f0b51c144f8c1638b593230e30169944434aa6b3)
- [ca072c96d9 - fix #14749 - Uncaught TypeError in routines](https://github.com/phpmyadmin/phpmyadmin/commit/ca072c96d9367a15e9d0930299465f8de452d289)

