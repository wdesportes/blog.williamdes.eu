+++
title = "Report for May 2026"
date = 2026-05-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for May 2026.

<!-- more -->

In May 2026 I worked on the Debian packaging of twig-i18n-extension to support Twig 3.26.0.

## First week (21)

On the Debian packaging of twig-i18n-extension I adapted the tests to Twig 3.26.0, fixed the require paths for DEP-8, bumped the copyright years and replaced the Salsa CI configuration.

- [bb85ea8a5d - Adapt tests to Twig 3.26.0](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/bb85ea8a5d70795ccec933485831efc7984942f4)
- [512483b355 - d/ch](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/512483b3551a02d00a5c5b1ada35550347784869)
- [d73630c4ce - Use /usr/share/php/ for require paths for DEP-8](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/d73630c4ce75ea48402f88059bdfb791c34a4236)
- [8300bd8a52 - Bump copyright years](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/8300bd8a5235b2b9d26c76c8b8599af1208f6e05)
- [4196acc7c7 - Replace the Salsa CI config file with "recipes/debian.yml@salsa-ci-team/pipeline"](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/4196acc7c7b1e90dd549fff76fa324eadded9e12)
- [75338a48d5 - Adapt tests to Twig 3.26.0](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/75338a48d590b38e08272fd5380495c9096312f0)

## Second week (22)

I fixed another usage of Twig 3.26 in the package.

- [a701e3d476 - Fix usage of Twig 3.26](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/a701e3d476a4d06029ae9af7a350aa7512782df9)

