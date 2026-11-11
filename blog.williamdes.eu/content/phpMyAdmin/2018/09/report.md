+++
title = "Report for September 2018"
date = 2018-09-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for September 2018.

<!-- more -->

In September 2018 I worked on the main repository and the website.

## First week (37)

On the website I fixed the URLs of the latest all-languages and source checksums, which were reported in [#14616](https://github.com/phpmyadmin/phpmyadmin/issues/14616).
Outside phpMyAdmin I fixed a typo in the WebDriver specification on w3c/webdriver ([#1300](https://github.com/w3c/webdriver/pull/1300)).

- [a8ede9231e - Fix latest checksum urls](https://github.com/phpmyadmin/website/commit/a8ede9231ed453132454bdd6c6e43dc5fac5ffc0)

## Second week (39)

I fixed the icons of the "Show Full Queries" feature ([#14438](https://github.com/phpmyadmin/phpmyadmin/issues/14438)) and merged it as pull-request [#14625](https://github.com/phpmyadmin/phpmyadmin/pull/14625), then merged QA_4_8.
On williamdes/mariadb-mysql-kbs I added the sudo-bot and fixed how the secret files are untarred in the CI ([#3](https://github.com/williamdes/mariadb-mysql-kbs/pull/3), [#4](https://github.com/williamdes/mariadb-mysql-kbs/pull/4)).

- [a81b5a2fd4 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/a81b5a2fd4df6de594b8d65fe1e616d7f3c5b9d2)
- [b4503e34f8 - Merge pull request #14625 from williamdes/issue-14438-icons](https://github.com/phpmyadmin/phpmyadmin/commit/b4503e34f828677f5938b476f59e58657ee2f991)
- [dc4e6543ac - Fix #14438 - "Show Full Queries" icons](https://github.com/phpmyadmin/phpmyadmin/commit/dc4e6543acb41438e1804bf545416531d97e7470)

