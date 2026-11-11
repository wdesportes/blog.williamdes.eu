+++
title = "Report for December 2018"
date = 2018-12-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for December 2018.

<!-- more -->

In December 2018 I merged a batch of fixes on the main repository and reviewed contributions: the left and right icons, the Git revision error, exporting a view structure and the SQL export for tables. I also backported the commondir support to QA_4_8 and merged sql-parser pull-requests.

## First week (48)

I fixed the left and right icons that were hidden ([#14764](https://github.com/phpmyadmin/phpmyadmin/issues/14764)) and cherry-picked the fix to QA_4_8.

- [61b98cf9cc - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/61b98cf9cc821f9a500a4fe374da92a59b965092)
- [6858635d60 - Add ChangeLog entry for #14764](https://github.com/phpmyadmin/phpmyadmin/commit/6858635d6021b4d51ed3f89d6cd3d32f4a19258b)
- [b5372b840c - Fix #14764 - left/right icons hidden](https://github.com/phpmyadmin/phpmyadmin/commit/b5372b840ccc7a71d44fe49b7a78e4ea2b96ac3d)

## Second week (51)

A week of bug fixing. The Git revision check raised an error on the first page load ([#14635](https://github.com/phpmyadmin/phpmyadmin/issues/14635), [#14762](https://github.com/phpmyadmin/phpmyadmin/issues/14762)); I fixed it and added tests for `Config::checkGitRevision` and `Config::isGitRevision`.
Exporting a view structure based on another view with a sub-query threw "No database selected" ([#13788](https://github.com/phpmyadmin/phpmyadmin/issues/13788)), the SQL format was not offered for table exports ([#14775](https://github.com/phpmyadmin/phpmyadmin/issues/14775)), a php warning came from `urldecode()` in db_export.php ([#14791](https://github.com/phpmyadmin/phpmyadmin/issues/14791)) and the Text_Plain_Sql plugin froze the interface ([#14794](https://github.com/phpmyadmin/phpmyadmin/issues/14794)).
I also fixed the missing table level Operations functions ([#14786](https://github.com/phpmyadmin/phpmyadmin/issues/14786)), merged [#14810](https://github.com/phpmyadmin/phpmyadmin/pull/14810) for the browser display transformation selection ([#14756](https://github.com/phpmyadmin/phpmyadmin/issues/14756)) and backported the commondir support to QA_4_8. On sql-parser I merged two pull-requests: PURGE statements ([#208](https://github.com/phpmyadmin/phpmyadmin/pull/208)) and tests for the CREATE OR REPLACE VIEW builder ([#209](https://github.com/phpmyadmin/phpmyadmin/pull/209)).

- [c8170514f3 - Merge pull request #14810 from dhyey35/master](https://github.com/phpmyadmin/phpmyadmin/commit/c8170514f34f7239715429c35fda0284e6995731)
- [fe587e05b4 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/fe587e05b401379dc53e968054941cd797dd0359)
- [c433dd3c23 - Add ChangeLog entry for #14635](https://github.com/phpmyadmin/phpmyadmin/commit/c433dd3c236ec3c26f0818094fdc55a0e5f299ad)
- [3da7230faf - Merge remote-tracking branch 'williamdes/issues-14635-14762-git-dir-removed' into QA_4_8](https://github.com/phpmyadmin/phpmyadmin/commit/3da7230faf3b7cc57a02a7f0d6c87c98a9a3a1c9)
- [b6f38940f4 - Merge pull request #14799 from williamdes/issue-13788-export-view](https://github.com/phpmyadmin/phpmyadmin/commit/b6f38940f43929a77369e90daeb97e12bb517c1b)
- [a8148f1fa7 - Add tests for #14635](https://github.com/phpmyadmin/phpmyadmin/commit/a8148f1fa7d827678b4d7dafaaac2ca31c22903d)
- [99cee9e389 - Fix #14635 - Git revision error](https://github.com/phpmyadmin/phpmyadmin/commit/99cee9e389d826af4f1ca1e2872fbf9e692c8246)
- [3ca6646137 - Fix found by phpstan](https://github.com/phpmyadmin/phpmyadmin/commit/3ca66461373955f9f92c1dc5beb01a39885bddba)
- [a6b6792cfb - Added tests for Config::checkGitRevision and Config::isGitRevision](https://github.com/phpmyadmin/phpmyadmin/commit/a6b6792cfbc83494e8e5f73dfe2f5fc91af87759)
- [1ead268e42 - Add support for commondir file in .git dir](https://github.com/phpmyadmin/phpmyadmin/commit/1ead268e42644ccd2573f0d304796b395782ff19)
- [d327674d72 - Fix tests for #13788 - Exporting a view structure](https://github.com/phpmyadmin/phpmyadmin/commit/d327674d728d6dea5abe157eb91b5d057de40bfd)
- [a5b50b35bf - Add ChangeLog entry for #13788](https://github.com/phpmyadmin/phpmyadmin/commit/a5b50b35bfe316d69eaf26389ec970fa8b918ed7)
- [cfc96202fe - Fix #13788 - Exporting a view structure, no database selected error](https://github.com/phpmyadmin/phpmyadmin/commit/cfc96202fe204170a846a81ded0008206b0c6e9d)
- [789287c1b5 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/789287c1b5ad98e08ade50ca2c0d8f0be32b0c69)
- [a059bc28aa - Add ChangeLog entry for #14775](https://github.com/phpmyadmin/phpmyadmin/commit/a059bc28aa2fe687173d8aac63577c61ab9cff93)
- [9511484142 - Fix #14775 - export to SQL format not available for tables](https://github.com/phpmyadmin/phpmyadmin/commit/95114841420af6277b0406ec7f0d32c4ff3fcf27)
- [348f1fbd2e - Fix export issues/warnings](https://github.com/phpmyadmin/phpmyadmin/commit/348f1fbd2e93d8579f84d35329a48d10e27d600d)
- [3d28438949 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/3d284389491d61e9819c200bbf4e2f84fee2c15b)
- [84977e3101 - Add ChangeLog entry for #14791](https://github.com/phpmyadmin/phpmyadmin/commit/84977e31012a6b931f39ec03a0b745e6d4ca8d17)
- [09e2585158 - Fix #14791 - php warning, db_export.php#91 urldecode()](https://github.com/phpmyadmin/phpmyadmin/commit/09e25851588d263598732b3099cdaa010380c0d8)
- [8fcd557d62 - Add ChangeLog entries for #14794 and #14786](https://github.com/phpmyadmin/phpmyadmin/commit/8fcd557d629114ff84dc7fa764d1701a3fe3d07f)
- [3d2a2066f2 - Fix #14786 - Table level Operations functions missing](https://github.com/phpmyadmin/phpmyadmin/commit/3d2a2066f274d754682a317628988a7183157d7d)
- [d98e8df824 - Fix #14794 - Not responding to click, frozen interface](https://github.com/phpmyadmin/phpmyadmin/commit/d98e8df824a239b8f89158b9b647c7d5332a4aa5)
- [688b7a6e93 - Merge pull request #209 from devenbansod/test/create-replace-view](https://github.com/phpmyadmin/sql-parser/commit/688b7a6e93554d7d880ceb89d3586da5f2cfb0cf)
- [64c999b319 - Merge pull request #208 from devenbansod/feature/purge-statement](https://github.com/phpmyadmin/sql-parser/commit/64c999b31977152cecf4e143b6eb85c69a307e7a)

## Third week (52)

I merged a pull-request which fixed the table chart that was not opening ([#14812](https://github.com/phpmyadmin/phpmyadmin/issues/14812)). To close the year I merged the V0.0.1 pull-request of my own wdes/php-I18n-L10n package ([#2](https://github.com/wdes/php-I18n-L10n/pull/2)).

- [cce047ac4a - Merge pull request #14819 from ffeliks/issue-14812](https://github.com/phpmyadmin/phpmyadmin/commit/cce047ac4ad17fe7ff1bd8cb14d5705b5f7158f2)

