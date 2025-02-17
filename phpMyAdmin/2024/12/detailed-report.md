# Consulting Services for phpMyAdmin

## Report - December 2024

## Overview

Over the month of December 2024 I did some light work on the project, but to be noted:
- Adjusting the releases script
- Re-building the demo server releases installation
- Some issues sorting out
- Some fixes for 5.2.x

## First week (49)

I merged the pull-request #19392 for PHP 8.4 support in `str_getcsv`.
And did some issue management.

## Second week (50)

I merged the pull-request #19428 to fix column type extraction.
And uploaded tcpdf and sql-parser 5.10.2 to Debian.

## Third week (51)

- Monday:
  - Added new options to the `create-release.sh` script to allow writing the `revision-info.php` file
  And to chose the kit and compressions to build. This saves quite some time.
  - Re-built all the script to create the demo server files: [commit on the scripts repo](https://github.com/phpmyadmin/scripts/commit/d8c97ad84a555655af933e20b90c41254de54a47)
  - Upgraded the demo VM to Debian Bookworm
  - Adjusted the website for the new `versions.ini` data format

- Wednesday:
  - I worked on getting back all the git information into our `revision-info.php` file: [PR #19458](https://github.com/phpmyadmin/phpmyadmin/pull/19458)
  - And removed NVM on the demo VM and installed NodeJS 22 -> TODO: changelog
- Thursday:
  - I worked on the PHPUnit tests for PHPUnit 11 on Debian 13
- Saturday:
  - Some mail-server config adjustments
  - And pruning space on the reports database
  - And I sorted out what I had as unread emails for sql-parser

## Fourth week (52)

I uploaded tcpdf and twig-i18n-extension with some minor changes to Debian.
And did some issue management.

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 49

- [2774b12782 - Add a ChangeLog entry for 3f02e54b61](https://github.com/phpmyadmin/phpmyadmin/commit/2774b1278299e1969f69e04f486585b119c3cdec)
- [3f02e54b61 - Merge #19392 - [PHP 8.4] `str_getcsv`: Fix `$escape` parameter deprecation](https://github.com/phpmyadmin/phpmyadmin/commit/3f02e54b618c58508434eaa42f4ea2eb0b4f40ca)

### Week 50

- [7c29d99bd7 - Add a ChangeLog entry for #19426](https://github.com/phpmyadmin/phpmyadmin/commit/7c29d99bd7ada36255d6af3609dfbc5b3a221dec)
- [69909646d8 - Merge #19428 - Fix #19426 - Extract only the column type into pma_type](https://github.com/phpmyadmin/phpmyadmin/commit/69909646d888ef0b7c263a9392fe76abc52e47c0)

### Week 51

- [0d961a4888 - The tests testBlowfishWithInvalidSecret and testBlowfishWithValidSecret need zip and bz2 PHP exts](https://github.com/phpmyadmin/phpmyadmin/commit/0d961a48887a5efb4bd74410c0c826fa902fa3a9)
- [18f8ae0da1 - Ref #19455 - Move all the code for revision-info.php to the Git class](https://github.com/phpmyadmin/phpmyadmin/commit/18f8ae0da115b2249945d734a23a4307f87f2ed3)
- [1497a1693e - Ensure quotes (') are escaped in revision-info.php files](https://github.com/phpmyadmin/phpmyadmin/commit/1497a1693ef780eae7a7e9970471dc4f6ea759ff)
- [704f673307 - Merge #19458 - Fix #19455 - Support a git revision info only from revision-info.php](https://github.com/phpmyadmin/phpmyadmin/commit/704f6733072d669bfa432b40ca21584c9827baa4)
- [a6642254f8 - Update the phpstan and psalm baselines](https://github.com/phpmyadmin/phpmyadmin/commit/a6642254f88553c25e96aed39695f9b2f743b024)
- [b950c49a77 - Fix #19455 - Support reading all the commit info from revision-info.php](https://github.com/phpmyadmin/phpmyadmin/commit/b950c49a772a50a3f7cb872d4a7d0a41e16320f7)
- [e9bcb211f4 - Make phpcs reports relative and ignore revision-info.php](https://github.com/phpmyadmin/phpmyadmin/commit/e9bcb211f4a83ffad3679a23317f625a29936c6c)
- [458700f294 - Deleted translation using Weblate (Portuguese (Portugal))](https://github.com/phpmyadmin/phpmyadmin/commit/458700f2948a486cc919819ebc01170036964ad0)
- [1634264816 - Improving the signing message and compression signing in create-release.sh](https://github.com/phpmyadmin/phpmyadmin/commit/1634264816449dc42d17872174f3e8d73d4e36b2)
- [81cf7f260c - Add  --kits and --no-sign options to create-release.sh](https://github.com/phpmyadmin/phpmyadmin/commit/81cf7f260c68179ab5efd43ea46fc6c2b4b697fa)
- [198bcdede0 - Move version check before branch like the param order should be,  on create-release.sh](https://github.com/phpmyadmin/phpmyadmin/commit/198bcdede027d18cda40b288ffac4c08626637cf)
- [f23d46e378 - Add --revision-info and document --daily on create-release.sh](https://github.com/phpmyadmin/phpmyadmin/commit/f23d46e37876173f5240945f2a65a36de48f0afc)
- [0e7c4d6431 - Add --compressions option to create-release.sh and update example](https://github.com/phpmyadmin/phpmyadmin/commit/0e7c4d64314351bf2522437b7384a52080597314)

## phpmyadmin/website (GitHub)

### Week 51

- [5e16f70fa5 - Update the format of versions.ini](https://github.com/phpmyadmin/website/commit/5e16f70fa59b78302d9f882346acd45c2f92e61e)

## phpmyadmin/twig-i18n-extension (GitHub)

### Week 52

- [ea585cebb2 - Drop support for Twig < 3.13.0](https://github.com/phpmyadmin/twig-i18n-extension/commit/ea585cebb208a2ddc2106df3f6838be7b05e714c)

## phpmyadmin-team/phpmyadmin (GitLab)

### Week 48

- [fe14457f9c - Update upstream source from tag 'upstream/5.2.2-really5.2.2+20241130+dfsg'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/fe14457f9ce0f8d3a9b592da692f93b1625930e3)
- [6583f129bd - New upstream version 5.2.2-really5.2.2+20241130+dfsg](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6583f129bd2077746ca4a683207abd5498690b92)
- [a83d0a8570 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a83d0a85701f1c54d34c7b4814e3227d806fedcc)
- [b92ad0dc42 - Update upstream source from tag 'upstream/5.2.2-really5.2.2+20241130+dfsg-1'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b92ad0dc42c8c33074a73b00d96130ed4aee1bbd)
- [774c27ee0a - New upstream version 5.2.2-really5.2.2+20241130+dfsg-1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/774c27ee0a4b51c6fd801abfa836965f11e753f7)
- [4adc0cc70e - Fixup the version after making a mistake](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/4adc0cc70e19345d309ab707fb85590b4a7eabdf)

### Week 51

- [16ce4f172e - Use a better for old phpunit compatible detection](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/16ce4f172e5b1ee9fa6f9a78397f34c32de9e67b)
- [b7b7e72b71 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b7b7e72b718a295933b90ff8aa3405ab680655b1)
- [8576ae4a7b - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/8576ae4a7b5c8a2cefbf073c09aa5ee8fd7afcfe)
- [f3f4042119 - Support PHPUnit 11 and above in exclude rules](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f3f4042119b2e993e842689562a7313c1f85ec2b)
- [e14fa24822 - Edit the failure conditions for phpunit](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e14fa2482297217fc68ff8b6488da7308c1b5ac2)
- [f56b6e25ce - Refresh patches & add phpunit deprecations patch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f56b6e25ced470f419900940ada3696953f7f724)
- [cbe6c7408c - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/cbe6c7408cf68507acce2f56c7d33d7f1dcd877f)
- [ef4b9431cd - Update upstream source from tag 'upstream/5.2.2-really5.2.2+20241228+dfsg'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ef4b9431cd25db29bb75a029aa4795e71e014e77)
- [89294d1aa4 - New upstream version 5.2.2-really5.2.2+20241228+dfsg](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/89294d1aa4b132e7577ee988e6580c2d304ab4b9)

### Week 52

- [530b0a285b - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/530b0a285b5755daa0697a30e8bd798c84a14b3e)
- [6eab926f61 - Exclude tests calling trigger_error](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6eab926f616d60607d7e3afd73064220247739b2)

## phpmyadmin-team/twig-i18n-extension (GitLab)

### Week 52

- [80fb40693c - Send twig-i18n-extension to unstable](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/80fb40693ceffdbed937224bd8ff8fb28762b6ae)
- [1f6132ed66 - d/ch](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/1f6132ed66fc410856a34d2e26ec9cc5072300d2)
- [56bf5af1a0 - Relax pkg-php-tools version restriction for unstable](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/56bf5af1a08334dd26063aced69f4002d471e4e8)

## phpmyadmin-team/sql-parser (GitLab)

### Week 50

- [325ef372dc - Send 5.10.2-1 to unstable](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/325ef372dce94a7a24bac50c6163e32da19673b5)
- [f386c943d3 - d/ch](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/f386c943d3600d01eef79425941c4f737a9abedd)
- [e1ca8e0b1c - Update upstream source from tag 'upstream/5.10.2'](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/e1ca8e0b1c13659b6c9464c0a5a6d4396f615ad1)
- [3ddfe03bd3 - New upstream version 5.10.2](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/3ddfe03bd3c253e9273c0518588e412840bfe384)

## phpmyadmin-team/tcpdf (GitLab)

### Week 01

- [86ac69ded9 - Send 6.8.0+dfsg-1 to unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/86ac69ded90b2c793853dff099e809565e2de964)
- [aab82116d1 - d/ch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/aab82116d134a3b93ea48cd3282d2413ab8754c7)
- [8224ea65de - Add curl to DEP-8 tests](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/8224ea65de35e811d0b680f656701a25822d98a0)

### Week 50

- [2ab125afe4 - Send 6.7.7+dfsg-1 to unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/2ab125afe418d6ee0cb2b10f3d5bb94de16b7aed)
- [d8f30d7d29 - Bump Standards-Version to 4.7.0](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/d8f30d7d297fd757597770aaad7d09a2bdf1aa6b)
- [28a10c7256 - d/ch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/28a10c7256a28b0b02f85ab1ebb25cb7e5ad795d)
- [4e9f6c3d24 - Update upstream source from tag 'upstream/6.7.7+dfsg'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/4e9f6c3d2405e7a8a20134719219b39778ea17ab)
- [89eff42ac5 - New upstream version 6.7.7+dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/89eff42ac5e7a9429d237810fed584ae50381107)

### Week 52

- [f5b7071063 - d/ch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/f5b70710637951265d7a1cd1fa98b239330c57f0)
- [8c89a940b3 - Depend on php-curl, recommend php-bcmath](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/8c89a940b37f1173f1fca9d25f019b77cbaa8ded)
- [167a6adc27 - d/ch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/167a6adc2713e3647582b854a4f8bb66f7f9b1dd)
- [93244c60f5 - Update upstream source from tag 'upstream/6.8.0+dfsg'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/93244c60f58521d81280361f0856c239eee5425e)
- [bf08117a9d - New upstream version 6.8.0+dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/bf08117a9d508c748bd55cd35bd652a2b4ba07bc)

# Handled issues

## phpmyadmin/phpmyadmin (GitHub)

### Week 48

- [19363 - Wrong query when using backtick in table name](https://github.com/phpmyadmin/phpmyadmin/issues/19363)

### Week 49

- [19289 - phpmyadmin is not working anymore](https://github.com/phpmyadmin/phpmyadmin/issues/19289)
- [19418 - Keeps shutting down MySQL services randomly](https://github.com/phpmyadmin/phpmyadmin/issues/19418)
- [19278 - Snapshots releases are unaccessible](https://github.com/phpmyadmin/phpmyadmin/issues/19278)
- [19344 - Insert page doesn't report MySQL error](https://github.com/phpmyadmin/phpmyadmin/issues/19344)
- [19319 - $cfg['ShowStats'] = false; isn't hiding "Status" tab](https://github.com/phpmyadmin/phpmyadmin/issues/19319)

### Week 51

- [19100 - How to suppress the "configuration storage is not completely configured"-message?](https://github.com/phpmyadmin/phpmyadmin/issues/19100)
- [19455 - A link to the git commit should be added on the downloaded snapshots](https://github.com/phpmyadmin/phpmyadmin/issues/19455)

### Week 52

- [19473 - The word navigator is written wrong in portuguese is 'nevegador' instead of 'navegador'](https://github.com/phpmyadmin/phpmyadmin/issues/19473)
- [19477 - Error Works on PHP 8.4.1](https://github.com/phpmyadmin/phpmyadmin/issues/19477)
- [19245 - Duplicate message when a query has no results](https://github.com/phpmyadmin/phpmyadmin/issues/19245)
- [19478 - Design enhancement](https://github.com/phpmyadmin/phpmyadmin/issues/19478)

## phpmyadmin/docker (GitHub)

### Week 49

- [446 - Export always download index.htm](https://github.com/phpmyadmin/docker/issues/446)

## phpmyadmin/website (GitHub)

### Week 49

- [180 - Daily Snapshots Cannot Be Downloaded](https://github.com/phpmyadmin/website/issues/180)

### Week 51

- [179 - Demo server versions not updating to the latest commit](https://github.com/phpmyadmin/website/issues/179)

## phpmyadmin/sql-parser (GitHub)

### Week 51

- [387 - Syntax error with row_number alias](https://github.com/phpmyadmin/sql-parser/issues/387)
