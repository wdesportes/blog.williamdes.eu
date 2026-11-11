+++
title = "Report for October 2018"
date = 2018-10-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for October 2018.

<!-- more -->

In October 2018 I worked on the main repository, mostly on the test infrastructure.

## First week (41)

My focus of the week was the test setup: I migrated the tests to facebook/webdriver, added a `TESTSUITE_PORT` variable for the Selenium tests, tried several browsers and a new Travis setup, and rewrote the Browserstack script from the local testing manual. I removed some phpstan ignores by enabling `reportUnmatchedIgnoredErrors`, which warns when an ignore is not needed anymore. I also fixed a designer error ([#14223](https://github.com/phpmyadmin/phpmyadmin/issues/14223)).

- [56d59a9d67 - Fixes #14223 - designer error](https://github.com/phpmyadmin/phpmyadmin/commit/56d59a9d67eb4d74b49ec5821641e3bd5a046ff2)
- [ea830e70b3 - Try multiple browsers](https://github.com/phpmyadmin/phpmyadmin/commit/ea830e70b3f2f79089a8fc4f0cbb9f2321f2b7ea)
- [cdeff3e5a2 - Try a new Travis setup](https://github.com/phpmyadmin/phpmyadmin/commit/cdeff3e5a253b65f7831122dda9514da54354956)
- [f48cc814a5 - Removed some phpstan ignores](https://github.com/phpmyadmin/phpmyadmin/commit/f48cc814a5fc981c5e03c895adff4b4c22d6a5f7)
- [862788d782 - Migrate tests to facebook/webdriver](https://github.com/phpmyadmin/phpmyadmin/commit/862788d782214ef0a42b606229d61667077665a4)
- [5fc0150a56 - Update Browserstack script](https://github.com/phpmyadmin/phpmyadmin/commit/5fc0150a56f48b090ee6e5b1ee94e78b829e2690)
- [d9153ae069 - Add TESTSUITE_PORT for selenium tests](https://github.com/phpmyadmin/phpmyadmin/commit/d9153ae069626ffc63ddd4c20d13cee74d1ece43)

## Second week (43)

I added the ChangeLog entries and merged two contributions: [#14656](https://github.com/phpmyadmin/phpmyadmin/pull/14656) for [#14636](https://github.com/phpmyadmin/phpmyadmin/issues/14636), where a move operation generated a `SELECT` query with the table name set to `undefined`, and [#14659](https://github.com/phpmyadmin/phpmyadmin/pull/14659) for [#14571](https://github.com/phpmyadmin/phpmyadmin/issues/14571), where dropping a view failed with "No database selected".
On williamdes/mariadb-mysql-kbs I added Travis CI ([#9](https://github.com/williamdes/mariadb-mysql-kbs/pull/9)).

- [cbd23dd8f3 - Add ChangeLog entry for #14636](https://github.com/phpmyadmin/phpmyadmin/commit/cbd23dd8f32e83eda81a9e6d95db5602bd071c29)
- [ff349c7e5c - Merge pull request #14656 from wincdev/FIX/issue-14636](https://github.com/phpmyadmin/phpmyadmin/commit/ff349c7e5ca4ab1a8fa7cc1f2f5a7d8d65ed3f93)
- [4cddc66553 - Add ChangeLog entry for #14571](https://github.com/phpmyadmin/phpmyadmin/commit/4cddc665532b0d37f387fcd77a70ae146ec957d1)
- [9f27dc0688 - Merge pull request #14659 from wincdev/FIX/issue-14571](https://github.com/phpmyadmin/phpmyadmin/commit/9f27dc0688aed92387cef297cf43f5329dbd0af7)

## Third week (44)

I updated the French translation for Development and 4.8 on Weblate, both at 100%.

- [c671786ec8 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/c671786ec857830ff9015d7e1e2df6e94cdb92d1)
- [0b2f6c7ede - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/0b2f6c7edefd7bdd785f536f96b2fb96b3f328f1)

