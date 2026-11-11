+++
title = "Report for September 2024"
date = 2024-09-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for September 2024.

<!-- more -->

In September 2024 I worked on the error reporting server: dropping old PHP versions, fixing a deprecation and updating the CI. And I updated the Debian package of twig-i18n-extension.

## First week (36)

On the error reporting server I dropped the support for PHP older than 7.4, fixed a PHP 8 deprecation, and updated the CI, the composer plugins and the phpstan dependencies. I also sent twig-i18n-extension 4.1.3 to Debian unstable.

- [e3b0095462 - Drop PHP < 7.4 & CI adjustments](https://github.com/phpmyadmin/error-reporting-server/commit/e3b009546293dd94cdb1711c21bb803944bc5627)
- [8895897fb9 - Fix a PHP 8 deprecation](https://github.com/phpmyadmin/error-reporting-server/commit/8895897fb9843d1bfdf62f62d99bd6eac393d8be)
- [24cd876c03 - Fixup composer actions and run phpcs](https://github.com/phpmyadmin/error-reporting-server/commit/24cd876c039ac6dbc05711e28f34bcd6d5e85dc0)
- [a431ba85db - Update the phpstan baseline](https://github.com/phpmyadmin/error-reporting-server/commit/a431ba85dbd83a3573c3a1b0ee3fe4efc3c11aac)
- [04b8845976 - Add composer allow-plugins](https://github.com/phpmyadmin/error-reporting-server/commit/04b88459767d5ccca241e6630780994361df3460)
- [dd243be1f6 - Bump cakedc/cakephp-phpstan and phpstan](https://github.com/phpmyadmin/error-reporting-server/commit/dd243be1f61c28948cb9c535688ed6cae57b6127)
- [3aaa77097a - Use composer/ca-bundle for SSL check](https://github.com/phpmyadmin/error-reporting-server/commit/3aaa77097aec1097d8816096c9467be7e3c3a831)
- [17e123a7b3 - Bump GitHub actions & add new PHP versions](https://github.com/phpmyadmin/error-reporting-server/commit/17e123a7b357049666b9a02cd9a30ac88bc090a9)
- [9079b6c4b4 - Send 4.1.3-1 to unstable](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/9079b6c4b40f7f2cee9440aeea0c9a04a2630029)
- [7ed8ac72f5 - d/ch](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/7ed8ac72f593864191244dc4720f987f11580c3b)
- [5e2b75a8b0 - Update upstream source from tag 'upstream/4.1.3'](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/5e2b75a8b0526624fc3a38c7402581c5159e9df1)
- [3035706793 - New upstream version 4.1.3](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/3035706793421ba8a38d160a28cab978e3c26026)

