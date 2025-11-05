+++
title = "Report for September 2025"
date = 2025-10-29T10:33:00+00:01
updated = 2025-10-29T10:33:00+00:01
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for September 2025.

<!-- more -->

In September I worked on our infrastructure and Scrutinizer. And merged some contributions.

## First week (36)

I upgraded the mail VM from `bookworm` to `trixie`.
I then had a mailman web upgrade issue, duplicate emails (casing issue) for some users. After fixing that I managed to finish the upgrade.
I disabled a cron for the `ircbot` that is not used anymore.
And did some configuration work on "DMARC mitigation" for all the phpMyAdmin lists.

### On motranslator

- [4ac3205cab - Improve the exception when the APCu extension is not enabled or installed](https://github.com/phpmyadmin/motranslator/commit/4ac3205cabaf1c4f0525c2a49cbd5fe585c87320)
- [8f162cb8fd - Add permissions to GitHub workflows token](https://github.com/phpmyadmin/motranslator/commit/8f162cb8fda6822fb470d854711b8457c434c583) and [973e7745c0 - Delete old stale bot config](https://github.com/phpmyadmin/motranslator/commit/973e7745c0d349fe68b48e9ba41c89511fa41f12)

### Debian packaging

I did some cleaning up and uploaded motranslator as `5.4.0-2`.

And for `phpmyadmin` I sent `4:5.2.2-really+dfsg-2` to unstable after updating a source file to fix `CVE-2025-3573` and fixing tests for PHPUnit 12.

- [73bcccae78 - CVE-2025-3573 - Update jquery.validate.js to 1.21.0 (in sync with 5.2.2)](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/73bcccae78b408898c6f706cd6127b8595281daa)
- [85505ecbb3 - Update tests to run on phpunit 12](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/85505ecbb3dad2a07862b3872c8cda264faeeab8)

## Second week (37)

- I fixed the example on the README of `twig-i18n-extension`: [5bb71fdb70 - Fix the example](https://github.com/phpmyadmin/twig-i18n-extension/commit/5bb71fdb700c47521a6aaf398d36293504d33474).

I merged some pull-requests:

- [e73dbd251c - Merge #19612 - Fix #19611 - restore text operators order](https://github.com/phpmyadmin/phpmyadmin/commit/e73dbd251cd3e61a5224d67d2990a7e5ed7f9cb1)
- [ae27e63d8e - Merge #19621 - Fix #19109 - Do not enforce character encoding when checking roles](https://github.com/phpmyadmin/phpmyadmin/commit/ae27e63d8ee866bac4fee5821cbafc08de618ddb)
- [5df6629ff3 - Merge #19089 - Fix #18472 - responsive table edit-box in rtl mode](https://github.com/phpmyadmin/phpmyadmin/commit/5df6629ff3a46a8befdebd3f9e9a3114ea4eb864)
- [b78182d8ac - Merge #19088 - Fix #18437 - SQL editor's alignment in rtl](https://github.com/phpmyadmin/phpmyadmin/commit/b78182d8acee95c4192cc1be191933f6a9dea26e)
- [e903b739a7 - Merge #19860 - Fix #19859 - Fix deprecated null array offset](https://github.com/phpmyadmin/phpmyadmin/commit/e903b739a7ca998313b520c2eaf665132c103819)
- [03961f50df - Merge #19861 - Rename PHPMyAdmin to phpMyAdmin](https://github.com/phpmyadmin/phpmyadmin/commit/03961f50df26fda0aaedb35a265474c41891187e)

And spent some time on fixing Scrutinizer builds, and enabling QA to have builds too:

- [5781a2a149 - Adjust php compilation options on Scrutinizer to have all PHP extensions needed](https://github.com/phpmyadmin/phpmyadmin/commit/5781a2a1497ef7be3d0d4eef568df9c42fee9e76)
- [4c9519c2bc - Force composer 2 and fix PHP 7.2 compilation](https://github.com/phpmyadmin/phpmyadmin/commit/4c9519c2bc5e1005ffaa1bd2cedbe248c1b9d98d)
- [b0fa42e042 - Update Scrutinizer to Ubuntu jammy](https://github.com/phpmyadmin/phpmyadmin/commit/b0fa42e042a64aaa0bed7732eb90d482ed70937a)
- [c0feb46b8e - Use NodeJS 20 at Scrutinizer (they use nvm) and use Ubuntu Noble for a newer glibc](https://github.com/phpmyadmin/phpmyadmin/commit/c0feb46b8eee302dede3af997a7e9d67679a6bb5)
- [1337a60510 - Use NodeJS 23 for Scrutinizer only](https://github.com/phpmyadmin/phpmyadmin/commit/1337a605104e9e13cd4a68eb6729a0320f80de63)

## Third week (38)

I wrote some documentation updates:

- [1c77941bb2 - Improve the upload progress FAQ](https://github.com/phpmyadmin/phpmyadmin/commit/1c77941bb231361c34c0c7fb08bc03e321a1efcd)
- [51b2069f07 - Ref #19594 - Better document required PHP extensions](https://github.com/phpmyadmin/phpmyadmin/commit/51b2069f07add54914efb3cc81ede6104632dfdf)
- [d713b89050 - Fix #19594 - Document new required extensions](https://github.com/phpmyadmin/phpmyadmin/commit/d713b89050903e78d733c6c2b84a53715f5c82b8)

## Fourth week (39)

**Nothing to report**
