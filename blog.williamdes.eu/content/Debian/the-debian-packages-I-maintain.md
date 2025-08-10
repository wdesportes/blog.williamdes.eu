+++
title = "The Debian packages I maintain"
date = 2023-05-05T19:50:00Z
updated = 2025-08-10T12:27:00+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "A presentation of the Debian packages I maintain"
category = "Story"
images = []

[taxonomies]
tags = ["story", "Debian"]
+++

A presentation of the Debian packages I maintain

<!-- more -->

Since 2019 I started contributing to Debian.
You can find a quick list of areas and dates I started contributing to Debian on [my contributors.d.o page](https://contributors.debian.org/contributor/williamdes/).

Here is the link to the full list of packages I maintain on [qa.d.o](https://qa.debian.org/developer.php?login=williamdes@wdes.fr&comaint=yes&version=oldoldstable)

## QA efforts

On my free time I try to get rid of old and non working packages in Debian.<br>
For that I built a dashboard project: [Debian dashboard - by @williamdes](https://debian-dashboard-ce9e3e.pages.debian.net/en/)

You can find a list of removed packages [here](https://bugs.debian.org/cgi-bin/pkgreport.cgi?archive=both;src=ftp.debian.org;submitter=williamdes%40wdes.fr)

## The packages I maintain

I decided to make them easier to find and created labels for them on Debian Salsa (A GitLab instance that hosts the packages and CIs):

- [@wdes-packaging-team](https://salsa.debian.org/explore/projects/topics/wdes-packaging-team)
- [@phpmyadmin-packaging-team](https://salsa.debian.org/explore/projects/topics/phpmyadmin-packaging-team)

### Libraries

- [tcpdf](https://tracker.debian.org/pkg/tcpdf), [I adopted it in October 2019](https://tracker.debian.org/news/1073136/accepted-tcpdf-632dfsg1-1-source-into-unstable/) and have been maintaining the packaging and sending it to stable-backports.
- [jquery-timepicker](https://tracker.debian.org/pkg/jquery-timepicker), [I adopted it in January 2021](https://tracker.debian.org/news/1210286/accepted-jquery-timepicker-163-1-source-into-unstable/) and it's been a pleasure to package it and [add tests](https://tracker.debian.org/news/1401595/accepted-jquery-timepicker-163-2-source-into-unstable/) [[git]](https://salsa.debian.org/js-team/jquery-timepicker/-/commit/cf4b8b8c311d3232233741519bcc356b48ce4bdc).
- [php-code-lts-u2f-php-server](https://tracker.debian.org/pkg/php-code-lts-u2f-php-server) used by phpMyAdmin for legacy U2F, it's a library I [took back maintenance at @code-lts](https://github.com/code-lts/U2F-php-server).
- [mariadb-mysql-kbs](https://tracker.debian.org/pkg/mariadb-mysql-kbs), my data library I made in [July 2018](https://github.com/williamdes/mariadb-mysql-kbs/releases/tag/v1.0.0). Maintained up to date by my nice bot.
- [dasprid-enum](https://tracker.debian.org/pkg/dasprid-enum)
- [baconqrcode](https://tracker.debian.org/pkg/baconqrcode)
- [php-zumba-json-serializer](https://tracker.debian.org/pkg/php-zumba-json-serializer)
- [php-slim-psr7](https://tracker.debian.org/pkg/php-slim-psr7)
- [google-recaptcha](https://tracker.debian.org/pkg/google-recaptcha)

#### [phpMyAdmin libraries](https://qa.debian.org/developer.php?email=team%2Bphpmyadmin%40tracker.debian.org)

- [twig-i18n-extension](https://tracker.debian.org/pkg/twig-i18n-extension) previously [twig-extensions](https://tracker.debian.org/pkg/twig-extensions)
- [phpmyadmin-shapefile](https://tracker.debian.org/pkg/phpmyadmin-shapefile)
- [phpmyadmin-motranslator](https://tracker.debian.org/pkg/phpmyadmin-motranslator)
- [phpmyadmin-sql-parser](https://tracker.debian.org/pkg/phpmyadmin-sql-parser)

### Tools

- [phpmyadmin](https://tracker.debian.org/pkg/phpmyadmin), the phpMyAdmin package.
- [phpsysinfo](https://tracker.debian.org/pkg/phpsysinfo), I [adopted it in January 2023](https://tracker.debian.org/news/1406225/accepted-phpsysinfo-342-1-source-into-unstable/) to save it from being missing from Debian Bookworm !
- [phpldapadmin](https://tracker.debian.org/pkg/phpldapadmin), I [saved/adopted it and made PHP 8.1/8.2 support](https://tracker.debian.org/news/1427368/accepted-phpldapadmin-1263-03-source-into-unstable/).
- [shunit2](https://tracker.debian.org/pkg/shunit2), I [finished the hard refurubishing work](https://tracker.debian.org/news/1357356/accepted-shunit2-218-1-source-into-experimental/) and got it updated in Debian for Bookworm.
- [phing](https://tracker.debian.org/pkg/phing), I [adopted it](https://tracker.debian.org/news/1417993/accepted-phing-2174-1-source-into-unstable/) to save it from being missing from Debian Bookworm and Debian Trixie (again !) !
- [kcov](https://tracker.debian.org/pkg/kcov), I [adopted this very old package that existed in Debian jessie and stretch](https://tracker.debian.org/pkg/kcov) and got it updated in Debian for trixie.
- [dmarc-srg](https://tracker.debian.org/pkg/dmarc-srg), I packaged this tool for Debian Trixie and Debian Bookworm backports.

### Games

- [piu-piu](https://tracker.debian.org/pkg/piu-piu), The game is fun, I am [working with the maintainer](https://github.com/vaniacer/piu-piu-SH/issues/31) to get it updated in Debian.

## The packages I help maintain

They are some that can be found on: [@wdes-packaging-team](https://salsa.debian.org/explore/projects/topics/wdes-packaging-team).

### Libraries

- [php-image-text](https://tracker.debian.org/pkg/php-image-text), I [wrote autopkgtests and refreshed the packaging](https://tracker.debian.org/news/1412143/accepted-php-image-text-070-3-source-into-unstable/).
- [php-font-lib](https://tracker.debian.org/pkg/php-font-lib), I [refreshed the packaging](https://tracker.debian.org/news/1415724/accepted-php-font-lib-054dfsg-1-source-into-unstable/).
- [php-dompdf-svg-lib](https://tracker.debian.org/pkg/php-dompdf-svg-lib), one of the last packages to enter NEW for Bookworm before the freeze. It will be missing in Debian Trixie.
- [php-dompdf](https://tracker.debian.org/pkg/php-dompdf), was part of my February 2023 Debian contributions. I [refreshed the packaging](https://tracker.debian.org/news/1417025/accepted-php-dompdf-202dfsg-1-source-into-unstable/). It will be missing in Debian Trixie.
- [php-nikic-fast-route](https://tracker.debian.org/pkg/php-nikic-fast-route), I added the package in `bullseye-backports`.
- [php-fig-http-message-util](https://tracker.debian.org/pkg/php-fig-http-message-util)
- [php-di](https://tracker.debian.org/pkg/php-di), I packaged it for [matomo](https://tracker.debian.org/pkg/matomo).
- [php-di-invoker](https://tracker.debian.org/pkg/php-di-invoker), I packaged it for [matomo](https://tracker.debian.org/pkg/matomo).

### Matomo

I help on this project and try my best to enforce best practices and write DEP-8 tests to ensure top quality packages.

- [matomo](https://tracker.debian.org/pkg/matomo) itself.
- [matomo-component-cache](https://tracker.debian.org/pkg/matomo-component-cache)
- [matomo-component-decompress](https://tracker.debian.org/pkg/matomo-component-decompress)
- [matomo-component-ini](https://tracker.debian.org/pkg/matomo-component-ini)
- [matomo-component-network](https://tracker.debian.org/pkg/matomo-component-network)
- [matomo-device-detector](https://tracker.debian.org/pkg/matomo-device-detector)
- [matomo-php-tracker](https://tracker.debian.org/pkg/matomo-php-tracker)
- [matomo-referrer-spam-list](https://tracker.debian.org/pkg/matomo-referrer-spam-list)
- [matomo-searchengine-and-social-list](https://tracker.debian.org/pkg/matomo-searchengine-and-social-list)
- [php-jshrink](https://tracker.debian.org/pkg/php-jshrink)
- [php-maxmind-web-service-common](https://tracker.debian.org/pkg/php-maxmind-web-service-common)
- [php-sparkline](https://tracker.debian.org/pkg/php-sparkline)
- [php-spyc](https://tracker.debian.org/pkg/php-spyc)
