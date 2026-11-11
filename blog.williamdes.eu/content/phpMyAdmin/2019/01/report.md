+++
title = "Report for January 2019"
date = 2019-01-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for January 2019.

<!-- more -->

In January 2019 I worked on the main repository and fixed one export issue.

## First week (3)

I fixed the export streaming regression: phpMyAdmin no longer streams the export data ([#14478](https://github.com/phpmyadmin/phpmyadmin/issues/14478)). I opened pull-request [#14825](https://github.com/phpmyadmin/phpmyadmin/pull/14825) for it.

- [9c28e42216 - Fix #14478 - phpMyAdmin no longer streams the export data](https://github.com/phpmyadmin/phpmyadmin/commit/9c28e422167cc655a527f2031a7072bc6dbf4142)

## Other projects

On the side I maintained my mariadb-mysql-kbs project, removing the custom memory limit on OSX ([#21](https://github.com/williamdes/mariadb-mysql-kbs/pull/21)) and moving sudo-bot to npm ([#24](https://github.com/williamdes/mariadb-mysql-kbs/pull/24)), and I fixed a fixtures link on octokit/fixtures ([#195](https://github.com/octokit/fixtures/pull/195)).

