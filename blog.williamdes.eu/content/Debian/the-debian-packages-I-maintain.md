+++
title = "The Debian packages I maintain"
date = 2023-05-05T19:50:00Z

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

#### [phpMyAdmin libraires](https://qa.debian.org/developer.php?email=team%2Bphpmyadmin%40tracker.debian.org)

- [twig-i18n-extension](https://tracker.debian.org/pkg/twig-i18n-extension) previously [twig-extensions](https://tracker.debian.org/pkg/twig-extensions)
- [phpmyadmin-shapefile](https://tracker.debian.org/pkg/phpmyadmin-shapefile)
- [phpmyadmin-motranslator](https://tracker.debian.org/pkg/phpmyadmin-motranslator)
- [phpmyadmin-sql-parser](https://tracker.debian.org/pkg/phpmyadmin-sql-parser)

### Tools

- [phpmyadmin](https://tracker.debian.org/pkg/phpmyadmin), the phpMyAdmin package.
- [phpsysinfo](https://tracker.debian.org/pkg/phpsysinfo), I [adopted it in January 2023](https://tracker.debian.org/news/1406225/accepted-phpsysinfo-342-1-source-into-unstable/) to save it from beeing missing from Debian bookworm !
- [phpldapadmin](https://tracker.debian.org/pkg/phpldapadmin), I [saved/adopted it and made PHP 8.1/8.2 support](https://tracker.debian.org/news/1427368/accepted-phpldapadmin-1263-03-source-into-unstable/).
- [shunit2](https://tracker.debian.org/pkg/shunit2), I [finished the hard refurubishing work](https://tracker.debian.org/news/1357356/accepted-shunit2-218-1-source-into-experimental/) and got it updated in Debian for bookworm.
- [phing](https://tracker.debian.org/pkg/phing), I [adopted it](https://tracker.debian.org/news/1417993/accepted-phing-2174-1-source-into-unstable/) to save it from beeing missing from Debian bookworm !

## The packages I help maintain

They are some that can be found on: [@wdes-packaging-team](https://salsa.debian.org/explore/projects/topics/wdes-packaging-team).

### Libraries

- [php-image-text](https://tracker.debian.org/pkg/php-image-text), I [wrote autopkgtests and refreshed the packaging](https://tracker.debian.org/news/1412143/accepted-php-image-text-070-3-source-into-unstable/).
- [php-font-lib](https://tracker.debian.org/pkg/php-font-lib), I [refreshed the packaging](https://tracker.debian.org/news/1415724/accepted-php-font-lib-054dfsg-1-source-into-unstable/).
- [php-dompdf-svg-lib](https://tracker.debian.org/pkg/php-dompdf-svg-lib), one of the last packages to enter NEW for bookworm before the freeze.
- [php-dompdf](https://tracker.debian.org/pkg/php-dompdf), was part of my February 2023 Debian contributions. I [refreshed the packaging](https://tracker.debian.org/news/1417025/accepted-php-dompdf-202dfsg-1-source-into-unstable/).
- [php-nikic-fast-route](https://tracker.debian.org/pkg/php-nikic-fast-route), I added the package in `bullseye-backports`.
- [php-fig-http-message-util](https://tracker.debian.org/pkg/php-fig-http-message-util)
