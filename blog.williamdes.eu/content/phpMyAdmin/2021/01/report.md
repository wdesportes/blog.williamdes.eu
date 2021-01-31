+++
title = "Report for January 2021"
date = 2021-01-01T12:00:00Z
updated = 2021-01-31T23:41:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for January 2021.

<!-- more -->

## First week (01)

This week was a quite busy one and I could not dev as much as I expected. Real life is important too ;p

### Monday (04/01/2021)

More work on the Debian 5.0 version.

### Tuesday

More work on the Debian 5.0 version.

### Wednesday

More work on the Debian 5.0 version.

### Thursday

More work on the Debian 5.0 version.

### Friday

The Debian version `5.0.4+dfsg1-1` landed after a lot lot lot of time fixing and improving things for 5.0 series to be accepted into Debian. Thanks to everybody that helped me and reviewed my work. The [pull-request](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/merge_requests/30) was [merged](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f8ca6504dc6f1ee6a8b2fcbb29b9baff30017ed1) after 3 months open lacking reviews and me pushing more and more commits.

### Saturday

__Nothing to report__

### Sunday

I migrated sql-parser to GitHub actions. Still working on the Debian package.

## Second week (02)

### Monday (11/01/2021)

And I worked on copyright updates for the Debian version 5.0.4+dfsg2, that required to search on each file for missing copyrights in the d/copyright file and document them. Most of the source files that where excluded are now back.
I also had to remove the lib that finds out the strength of passwords because it could not be re-build from source (DFSG not compatible). All the `.min.js` files had to be [re-built from source](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c4b28b4c5ca955c7ddf1858b6e5e9f89d3505216), [I added the missing source files](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/abac8a5cf05e2955a2c5bd14dc52c0ab75405659) to the `debian/missing-sources` directory. The Debian version no more has `zxcvbn` until the from source issue can be solved. For now `?` force is displayed when you type passwords.

### Tuesday

All the work from yesterday landed into [a merge](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9206cece4599be77d436057fe51f7b106e9b8de2) and David did upload the changes to unstable.

### Wednesday

I handled some issue triage and pull-request reviews.

### Thursday

I did merge some pull-requests and upgraded psalm to `4.4.0`.
On `twig-i18n-extension` I moved to GitHub actions and did setup phpstan.
Also `phpmyadmin/coding-standard` has a quick move to GitHub actions and I found out [a licensing issue](https://github.com/phpmyadmin/coding-standard/pull/9).

On the Debian packaging side I made sure `buster-backports` was ready and prepared the backport of `twig`.
And updated the Ubuntu PPA Bionic to `5.0.4`.

### Friday

I did some quick changes on the Ubuntu PPA.

### Saturday

I did some fixes on the Ubuntu PPA.

### Sunday

I did some fixes on the Ubuntu PPA to end the nighmare I accidentally created yesterday with the polyfill package.

At Debian I did open bugs to remove the abandonned twig-extensions package.

## Third week (03)

### Monday (18/01/2021)

I handled some issues about Debian and Ubuntu packaging.

### Tuesday

I build the focal version for phpMyAdmin PPA.
At `phpmyadmin/phpmyadmin` I did finish my work on [the license violation](https://github.com/phpmyadmin/phpmyadmin/pull/16547). And [migrated the repository to GitHub actions](https://github.com/phpmyadmin/phpmyadmin/pull/16583).

### Wednesday

I did work on re-working the version handling and re-working the release script

### Thursday

I merged some work and did send sql-parser 5 to the phpMyAdmin PPA.
Also applied some Debian guidelines for the sql-parser packaging.
And updated my [open-source phpMyAdmin dev setup](https://github.com/wdesportes/phpmyadmin-local-setup).
Also added support for `[ci skip]` on GitHub actions and did try to fix the TravisCI builds.
Using Weblate I translated the new strings from the merged PR to fix the privilege label and started cleaning blocked translations in the `<br>` to `[br]` transition and some older ones from the `<br/>`/`<br />` to `<br>`.

### Friday

Some more cleaning on Weblate and some PR updates.
I imported [the security fix](https://security-tracker.debian.org/tracker/CVE-2021-21252) into Debian and imported my font removal also.
Also tested the [transformation to image PR](https://github.com/phpmyadmin/phpmyadmin/pull/16586) and made a fix ontop if it.
And to finish the day like a night own I did finally [find a way to make jest edit files on the fly](https://github.com/phpmyadmin/phpmyadmin/pull/16409) to test them.

### Saturday

I did some changes on the Debian side and imported a patch that was on the Debian side.
On the main repository I did merge some pull-requests and finished the [first Jest unit testing integration](https://github.com/phpmyadmin/phpmyadmin/pull/16409).

### Sunday

I did some PR and issue management and also some documentation management.
And also did work on some slowness issues and made two PRs ([1](https://github.com/phpmyadmin/phpmyadmin/pull/16590), [2](https://github.com/phpmyadmin/phpmyadmin/pull/16591)). I had a auto-logout error on my local setup and did fix it buy adding the server number to the request.

## Fourth week (04)

### Monday (25/01/2021)

I worked on tracking down slowness in our code base and merged my work on the async console setup.
Also did some performance debugging with xhprof and sent a bugfix to our Ubuntu PPA.

### Tuesday

Not much to say, /afk part of the day, some issue and PR management.

### Wednesday

Some PR testing and a TCPDF PHP 8.0 fix.

### Thursday

I spent some time fixing the theme generator and merging the fixes I made.
Also did some issue triage and worked on 2 PRs open at the `docker` repository (added more tests, and fixed mistakes).

### Friday

I worked on a complete [re-work of the `docker` repository testsuite](https://github.com/phpmyadmin/docker/pull/323).
This will make us move to GitHub actions completely.

### Saturday

I merged a fix on the Docker repository and did some issue triage and reproduction.
Also fixed a 5.1.0-rc1 bug on multi server setup.
I did write tests to reproduce an [issue](https://github.com/phpmyadmin/phpmyadmin/issues/16595) and cover more of our codebase.

### Sunday

I worked on fixing a UI bug that I found when browsing code. Also fixed and re-based 2 PRs to fix one UI bug and another one to enhance the UI feature that had a bug.
