+++
title = "Report for January 2021"
date = 2021-01-01T12:00:00Z
update = 2021-01-13T17:51:00Z
category = "phpMyAdmin - reports"
draft = true

[extra]
author = "William Desportes"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for January 2021.

<!-- more -->

## First week

This week was a quite busy one and I could not dev as much as I expected. Real life is important too ;p

### Monday

#### phpMyadmin

More work on the Debian 5.0 version.

#### Other

I also worked at [desportes infrastructure](https://github.com/desportes/infrastructure) to finish fixing my LDAP search configuration and the test suite.

The [Docker Mailserver](https://github.com/docker-mailserver) invited me to join their GitHub organization. Thanks guys !

### Tuesday

#### phpMyadmin

More work on the Debian 5.0 version.

#### phpMyadmin

More work on the Debian 5.0 version.

### Wednesday

#### phpMyadmin

More work on the Debian 5.0 version.

### Thursday

#### phpMyadmin

More work on the Debian 5.0 version.

#### Other

At Doctum I decided to drop PHP 7.1 series in favor of supporting PHP 8.0 on the phar. A `QA_5_3` branch was created but for now I have no idea if I will use it.

### Friday

#### phpMyadmin

The Debian version `5.0.4+dfsg1-1` landed after a lot lot lot of time fixing and improving things for 5.0 series to be accepted into Debian. Thanks to everybody that helped me and reviewed my work. The [pull-request](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/merge_requests/30) was [merged](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f8ca6504dc6f1ee6a8b2fcbb29b9baff30017ed1) after 3 months open lacking reviews and me pushing more and more commits.

### Saturday

### Sunday

#### phpMyadmin

I migrated sql-parser to GitHub actions. Still working on the Debian

#### Other

At Doctum I merged [a pull-request](https://github.com/code-lts/doctum/pull/24) after a rebase to fix types resolving.
And cleaned up some recent useless files that had and could enter the phar file. Also I did enable [GitHub discussions](https://github.com/code-lts/doctum/discussions/25)

I created the [sudo-bot/action-scrutinizer](https://github.com/sudo-bot/action-scrutinizer) to move out some script lines on the phpMyAdmin sql-parser GitHub actions migration.

## Second week

### Monday

#### phpMyadmin

And I worked on copyright updates for the Debian version 5.0.4+dfsg2, that required to search on each file for missing copyrights in the d/copyright file and document them. Most of the source files that where excluded are now back.
I also had to remove the lib that finds out the strength of passwords because it could not be re-build from source (DFSG not compatible). All the `.min.js` files had to be [re-built from source](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c4b28b4c5ca955c7ddf1858b6e5e9f89d3505216), [I added the missing source files](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/abac8a5cf05e2955a2c5bd14dc52c0ab75405659) to the `debian/missing-sources` directory. The Debian version no more has `zxcvbn` until the from source issue can be solved. For now `?` force is displayed when you type passwords.

#### Other

At Doctum I fixed my vendor cleaning script after I did find out that I had did a mistake in the path I configured.
I spent some time configuring GitLab and GitLab pages for this blog, but it just did not work for some (still) unknown reason.

### Tuesday

#### phpMyadmin

All the work from yesterday landed into [a merge](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9206cece4599be77d436057fe51f7b106e9b8de2) and David did upload the changes to unstable.

#### Other

I moved this blog from GitLab to GitHub pages because for some reason it was not working and I always had some 401 errors when browsing. It just never worked and that made not sense because most of my websites are GitLab pages hosted.
Anyway, bye bye GitLab pages. I used one of my bots to GPG sign and push commits on gh-pages when I edit the blog contents.

### Wednesday

#### phpMyadmin

I handled some issue triage and pull-request reviews.

#### Other

### Friday

### Saturday

### Sunday

## Third week

## Fourth week
