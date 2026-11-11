+++
title = "Report for March 2024"
date = 2024-03-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for March 2024.

<!-- more -->

In March 2024 I did a bit of everything: the documentation build on localized_docs, a fix on the main repository and the Debian packaging of phpmyadmin.

## First week (10)

On localized_docs I switched the Sphinx installation to the Debian packages and improved the workflow.

- [9790d79808 - Also install python3-sphinx for sphinx-build](https://github.com/phpmyadmin/localized_docs/commit/9790d7980855dff2789d8935cceb67509e751b67)
- [2011e4dc2c - Use apt to provide sphinx and improve the workflow](https://github.com/phpmyadmin/localized_docs/commit/2011e4dc2cbb8a45a2b1279865fa1b85cf6a71ff)

## Second week (11)

I fixed [#18049](https://github.com/phpmyadmin/phpmyadmin/issues/18049) by also checking that curl_exec is enabled, and used the Debian version of Sphinx to build the documentation.

- [69f9172a4c - Fix #18049 - Also check that curl_exec is enabled](https://github.com/phpmyadmin/phpmyadmin/commit/69f9172a4c8f691dc0d9d993df73709487cf13e7)
- [85d1b2d667 - Use the Debian version to build the documentation](https://github.com/phpmyadmin/phpmyadmin/commit/85d1b2d6670a929a32b0cf0234d390f62973ae2d)

## Third week (13)

On the Debian packaging of phpmyadmin I updated the changelog and added a patch for PHP 8.3.

- [d24ae83ea7 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d24ae83ea7caf2db6afb95d624c0773e4fe4ad46)
- [8b9af599df - Add a patch for PHP 8.3](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/8b9af599dffffc498de26914e3f907ad4d09214f)

