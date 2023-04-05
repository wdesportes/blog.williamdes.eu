+++
title = "Report for January 2021"
date = 2021-01-01T12:00:00Z
updated = 2021-01-31T23:59:00Z
category = "OpenSource - reports"

[extra]
author = "William Desportes"

[taxonomies]
tags = ["OSS-report"]
+++

Here is my OpenSource report for January 2021.

<!-- more -->


## First week (01)

### Monday

I worked at [desportes infrastructure](https://github.com/desportes/infrastructure) to finish fixing my LDAP search configuration and the test suite.

The [Docker Mailserver](https://github.com/docker-mailserver) invited me to join their GitHub organization. Thanks guys !

### Thursday

At Doctum I decided to drop PHP 7.1 series in favor of supporting PHP 8.0 on the phar. A `QA_5_3` branch was created but for now I have no idea if I will use it.

### Sunday

At Doctum I merged [a pull-request](https://github.com/code-lts/doctum/pull/24) after a rebase to fix types resolving.
And cleaned up some recent useless files that had and could enter the phar file. Also I did enable [GitHub discussions](https://github.com/code-lts/doctum/discussions/25)

I created the [sudo-bot/action-scrutinizer](https://github.com/sudo-bot/action-scrutinizer) to move out some script lines on the phpMyAdmin sql-parser GitHub actions migration.

## Second week (02)

### Monday

At Doctum I fixed my vendor cleaning script after I did find out that I had did a mistake in the path I configured.
I spent some time configuring GitLab and GitLab pages for this blog, but it just did not work for some (still) unknown reason.

### Tuesday

I moved this blog from GitLab to GitHub pages because for some reason it was not working and I always had some 401 errors when browsing. It just never worked and that made not sense because most of my websites are GitLab pages hosted.
Anyway, bye bye GitLab pages. I used one of my bots to GPG sign and push commits on `gh-pages` when I edit the blog contents.

## Third week (03)

I created an [RSS feed for Doctum](https://doctum.long-term.support/releases.rss).

## Fourth week (04)
