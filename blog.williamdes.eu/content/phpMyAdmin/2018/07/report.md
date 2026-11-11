+++
title = "Report for July 2018"
date = 2018-07-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for July 2018.

<!-- more -->

In July 2018 I backported my June fixes to the QA_4_8 branch and worked on the documentation of the MySQL and MariaDB variables.

## First week (27)

I fixed [#14457](https://github.com/phpmyadmin/phpmyadmin/issues/14457), where `mb_substr` returned null, and backported to QA_4_8 the fixes I had made in June for the 2FA QR code ([#14171](https://github.com/phpmyadmin/phpmyadmin/issues/14171)), the missing "Visualize GIS data" icon ([#14382](https://github.com/phpmyadmin/phpmyadmin/issues/14382)) and the missed `Util::getImage` call ([#14390](https://github.com/phpmyadmin/phpmyadmin/issues/14390)).
Outside phpMyAdmin I fixed the constants of ins0/github-changelog-generator ([#14](https://github.com/ins0/github-changelog-generator/pull/14)).

- [bdd60af282 - Fix #14457 - mb_stubstr null](https://github.com/phpmyadmin/phpmyadmin/commit/bdd60af2824e024ea7ec89c2016252575e967fb3)
- [93ec29933b - Fix - #14382 "Visualize GIS data" icon missing](https://github.com/phpmyadmin/phpmyadmin/commit/93ec29933baa3fd0318167a1894b6273ee9136d4)
- [863badfdc2 - Patch - missed instance of 'Avoid passing extension to Util::getImage'](https://github.com/phpmyadmin/phpmyadmin/commit/863badfdc285382d8344269a304a64eca630fb6d)
- [71ae2b2e68 - Fix for #14171 - 2FA QR PHPGD](https://github.com/phpmyadmin/phpmyadmin/commit/71ae2b2e6895141c4f0102bf137dba18210ebfb8)

## Second week (29)

I fixed the type error reported in [#14488](https://github.com/phpmyadmin/phpmyadmin/issues/14488).

- [a23a3a7776 - Fix #14488 - Type error](https://github.com/phpmyadmin/phpmyadmin/commit/a23a3a7776510251cc257175c3690805653f1f84)

## Third week (30)

I added support for the MySQL and MariaDB variables documentation: the help now sends MySQL users to the MySQL documentation and MariaDB users to the MariaDB one, through a new `williamdes/mariadb-mysql-kbs` package. The unit tests now use data that only exists for the tests.
On phpmyadmin/scripts I added phpdoc, fixed coding style errors and added support for push events ([#14](https://github.com/phpmyadmin/scripts/pull/14), [#15](https://github.com/phpmyadmin/scripts/pull/15)).

- [38009efb65 - Add support for MySQL/MariaDB variables documentation](https://github.com/phpmyadmin/phpmyadmin/commit/38009efb652f5f9c8048265fcbbe562a5c06e5e6)

