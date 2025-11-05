# Consulting Services for phpMyAdmin

## Report - September 2025

## Overview

In September I worked on our infrastructure and Scrutinizer.
And merged some contributions. Plus sent updates to our Debian packages.

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

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 37

- [b4e2cc790f - Fix coding standard for new function use](https://github.com/phpmyadmin/phpmyadmin/commit/b4e2cc790f8df7f018013b86c8da7d068b35646e)
- [f28ac15745 - Add a ChangeLog entry for #19611](https://github.com/phpmyadmin/phpmyadmin/commit/f28ac157457432f25ac7ed2fe33edd9c20253b84)
- [e73dbd251c - Merge #19612 - Fix #19611 - restore text operators order](https://github.com/phpmyadmin/phpmyadmin/commit/e73dbd251cd3e61a5224d67d2990a7e5ed7f9cb1)
- [03f5a7a55e - Add missing ChangeLog entries](https://github.com/phpmyadmin/phpmyadmin/commit/03f5a7a55eda0f8e4c2b58ed5afb1719ba2c0c1c)
- [ae27e63d8e - Merge #19621 - Fix #19109 - Do not enforce character encoding when checking roles](https://github.com/phpmyadmin/phpmyadmin/commit/ae27e63d8ee866bac4fee5821cbafc08de618ddb)
- [5df6629ff3 - Merge #19089 - Fix #18472 - responsive table edit-box in rtl mode](https://github.com/phpmyadmin/phpmyadmin/commit/5df6629ff3a46a8befdebd3f9e9a3114ea4eb864)
- [b78182d8ac - Merge #19088 - Fix #18437 - SQL editor's alignment in rtl](https://github.com/phpmyadmin/phpmyadmin/commit/b78182d8acee95c4192cc1be191933f6a9dea26e)
- [e903b739a7 - Merge #19860 - Fix #19859 - Fix deprecated null array offset](https://github.com/phpmyadmin/phpmyadmin/commit/e903b739a7ca998313b520c2eaf665132c103819)
- [03961f50df - Merge #19861 - Rename PHPMyAdmin to phpMyAdmin](https://github.com/phpmyadmin/phpmyadmin/commit/03961f50df26fda0aaedb35a265474c41891187e)
- [5781a2a149 - Adjust php compilation options on Scrutinizer to have all PHP extensions needed](https://github.com/phpmyadmin/phpmyadmin/commit/5781a2a1497ef7be3d0d4eef568df9c42fee9e76)
- [4c9519c2bc - Force composer 2 and fix PHP 7.2 compilation](https://github.com/phpmyadmin/phpmyadmin/commit/4c9519c2bc5e1005ffaa1bd2cedbe248c1b9d98d)
- [b0fa42e042 - Update Scrutinizer to Ubuntu jammy](https://github.com/phpmyadmin/phpmyadmin/commit/b0fa42e042a64aaa0bed7732eb90d482ed70937a)
- [c0feb46b8e - Use NodeJS 20 at Scrutinizer (they use nvm) and use Ubuntu Noble for a newer glibc](https://github.com/phpmyadmin/phpmyadmin/commit/c0feb46b8eee302dede3af997a7e9d67679a6bb5)
- [1337a60510 - Use NodeJS 23 for Scrutinizer only](https://github.com/phpmyadmin/phpmyadmin/commit/1337a605104e9e13cd4a68eb6729a0320f80de63)

### Week 38

- [1c77941bb2 - Improve the upload progress FAQ](https://github.com/phpmyadmin/phpmyadmin/commit/1c77941bb231361c34c0c7fb08bc03e321a1efcd)
- [51b2069f07 - Ref #19594 - Better document required PHP extensions](https://github.com/phpmyadmin/phpmyadmin/commit/51b2069f07add54914efb3cc81ede6104632dfdf)
- [d713b89050 - Fix #19594 - Document new required extensions](https://github.com/phpmyadmin/phpmyadmin/commit/d713b89050903e78d733c6c2b84a53715f5c82b8)

## phpmyadmin/motranslator (GitHub)

### Week 36

- [4ac3205cab - Improve the exception when the APCu extension is not enabled or installed](https://github.com/phpmyadmin/motranslator/commit/4ac3205cabaf1c4f0525c2a49cbd5fe585c87320)
- [8f162cb8fd - Add permissions to GitHub worksflows token](https://github.com/phpmyadmin/motranslator/commit/8f162cb8fda6822fb470d854711b8457c434c583)
- [973e7745c0 - Delete old stale bot config](https://github.com/phpmyadmin/motranslator/commit/973e7745c0d349fe68b48e9ba41c89511fa41f12)

## phpmyadmin/twig-i18n-extension (GitHub)

### Week 37

- [5bb71fdb70 - Fix the example](https://github.com/phpmyadmin/twig-i18n-extension/commit/5bb71fdb700c47521a6aaf398d36293504d33474)

### Week 39

- [c36141f81c - Fix #16 - Direct use of Node is deprecated](https://github.com/phpmyadmin/twig-i18n-extension/commit/c36141f81c5a508fc1f55665377abb2d487e907c)

## phpmyadmin-team/phpmyadmin (GitLab)

### Week 36

- [d0c8ddef06 - Send 4:5.2.2-really+dfsg-2 to unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d0c8ddef068169e40d4471aa2ba9feda1842d93a)
- [72f88eb126 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/72f88eb126f5dfc558a29d2ffe2df408e829ef9e)
- [73bcccae78 - CVE-2025-3573 - Update jquery.validate.js to 1.21.0 (in sync with 5.2.2)](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/73bcccae78b408898c6f706cd6127b8595281daa)
- [85505ecbb3 - Update tests to run on phpunit 12](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/85505ecbb3dad2a07862b3872c8cda264faeeab8)

## phpmyadmin-team/motranslator (GitLab)

### Week 36

- [cb64902e56 - Fix the upload to use -3 and not -2](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/cb64902e56604922734e9c0cc975b9f7c98f6bbb)
- [0eba1100e0 - Fix with-apcu autopkgtests](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/0eba1100e052a132c5bf9ae0eb8034567e2b9f8c)
- [e5824f65ea - Send 5.4.0-2 to unstable](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/e5824f65ea6cfb26b1941540c909fa5b6d83d117)
- [2e960c77f8 - Simplify d/watch](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/2e960c77f82bb2d5bc3df6ea75348cc5b8362f76)
- [100afcc7da - d/ch](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/100afcc7da48635fc26ade107455c2401aa5afc1)
- [1317b9cdb4 - Also run tests with apcu](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/1317b9cdb49c8635b84b18222b0f86fc5709aeb0)
- [767f04b5fa - Use phpunit --do-not-cache-result](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/767f04b5fabc3018f3c570bfc7df2d4354cb36a3)
- [953332ee58 - Fix PHPUnit runs tearDown for a skipped test](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/953332ee58388fa4e376c1339ffed2bceb5a21e8)
- [13ec51adb3 - Bump d/copyright years](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/13ec51adb39a59573db9554ef28aeaf1c923c523)
- [54374db055 - Drop Salsa CI config file](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/54374db055686bd55dab74d1249e5dc95d347217)
- [8adf230521 - Simplify Build-Depends constraints](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/8adf230521897432d89b5e66e5d55a8b89abc112)
- [7f420f5d56 - Mark as Multi-Arch: foreign](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/7f420f5d56e0df0910f0459486c39780f564da75)

# Handled issues

## phpmyadmin/phpmyadmin (GitHub)

### Week 36

- [19639 - #1366 Incorrect integer value even if entered value is integer](https://github.com/phpmyadmin/phpmyadmin/issues/19639)

### Week 37

- [19785 - [5.2] `Deprecated: Safe\mssql_connect()` on PHP 8.4](https://github.com/phpmyadmin/phpmyadmin/issues/19785)
- [19859 - [PHP 8.5]: ErrorException: Using null as an array offset is deprecated, use an empty string instead](https://github.com/phpmyadmin/phpmyadmin/issues/19859)
- [18472 - Wrong Edit Field position on RTL](https://github.com/phpmyadmin/phpmyadmin/issues/18472)
- [18437 - Query not visible for RTL languages](https://github.com/phpmyadmin/phpmyadmin/issues/18437)

### Week 38

- [19782 - Contribution: WebStack Deployer – GUI for Managing LAMP Stacks with Docker on Windows](https://github.com/phpmyadmin/phpmyadmin/issues/19782)
- [19771 - Default dark theme](https://github.com/phpmyadmin/phpmyadmin/issues/19771)

## phpmyadmin/docker (GitHub)

### Week 38

- [463 - Docker image "Created" date](https://github.com/phpmyadmin/docker/issues/463)
