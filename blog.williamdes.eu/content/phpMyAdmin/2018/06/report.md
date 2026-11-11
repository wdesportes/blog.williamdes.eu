+++
title = "Report for June 2018"
date = 2018-06-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for June 2018.

<!-- more -->

## First week (22)

I replaced apigen with Sami in the CI of the main repository ([#14345](https://github.com/phpmyadmin/phpmyadmin/issues/14345)), with a generated configuration in `test/`. I also fixed [#14295](https://github.com/phpmyadmin/phpmyadmin/issues/14295) and [#14348](https://github.com/phpmyadmin/phpmyadmin/issues/14348), where an unknown `$cfg['ThemeDefault']` theme ended in a 500 error.
This was the first step of a change that took two years to land: Sami was itself unmaintained, and in 2020 I forked it as Doctum and moved every library onto it.

- [ffc40cc517 - Replace apigen with Sami in CI](https://github.com/phpmyadmin/phpmyadmin/commit/ffc40cc5176e9b652af0a808490e9a3d4a723b05)
- [a87bf74eed - Fix for #14295](https://github.com/phpmyadmin/phpmyadmin/commit/a87bf74eed88b7e4b403cebad3a6c43321f03c68)
- [d26f7e47fb - Patch for issue #14348](https://github.com/phpmyadmin/phpmyadmin/commit/d26f7e47fbcaf5f52cb4d0ca7bf64bdcfe9a9eb8)

## Second week (23)

I fixed [#14370](https://github.com/phpmyadmin/phpmyadmin/issues/14370), where a query returning no row, like `SELECT * FROM mytable WHERE 0`, made `mysqli::fetch_array` return NULL and raised an error, and prevented JavaScript errors from being reposted ([#14359](https://github.com/phpmyadmin/phpmyadmin/issues/14359)).
I also replaced apigen with Sami on sql-parser, motranslator and shapefile, each with its configuration next to the CI, so the whole set of libraries used the same documentation generator.

- [a9dce0b40e - Fixes #14370](https://github.com/phpmyadmin/phpmyadmin/commit/a9dce0b40e3a5bc004f1c9647405c779040f1971)
- [fa303ee292 - Prevent reposting of javascript errors](https://github.com/phpmyadmin/phpmyadmin/commit/fa303ee2923f43ee9483c3bc3c880cee7c4812d0)
- [981c49945a - PHPDOC fix](https://github.com/phpmyadmin/sql-parser/commit/981c49945a96d53513af61e27effbf5eb5bb35c0)
- [b1ca941675 - Replace apigen with Sami in CI](https://github.com/phpmyadmin/sql-parser/commit/b1ca941675c17e05e8a1b65af5ddec4b86c75c58)
- [20d53bd6d0 - Replace apigen with Sami in CI](https://github.com/phpmyadmin/motranslator/commit/20d53bd6d0a8e5302a8fc06628602e49fb624bbb)
- [aaff2200a7 - Replace apigen with Sami in CI](https://github.com/phpmyadmin/shapefile/commit/aaff2200a771db797a9abb5ad8f024475fa8dd4c)

## Third week (24)

I added phpstan to the project, with its bootstrap file, configuration and a CI job.
The designer gave me most of the work: a database named `'"><iframe onload=alert(1)>` executed its iframe on the new page, so I escaped the database name in the URLs and used `rawurlencode` and Twig's `url_encode`. I also moved its configuration to JSON, fixed a template loop that ran one iteration too many and handled a database without tables.
I fixed the missing index icon ([#14225](https://github.com/phpmyadmin/phpmyadmin/issues/14225)), made a security fix for the structure page ([#14374](https://github.com/phpmyadmin/phpmyadmin/issues/14374)), fixed the search and insert dropdown broken by an integer foreign key ([#14388](https://github.com/phpmyadmin/phpmyadmin/issues/14388)) and added support for the commondir file in .git directories ([#14391](https://github.com/phpmyadmin/phpmyadmin/issues/14391)).

- [7b13da98cd - Added phpstan](https://github.com/phpmyadmin/phpmyadmin/commit/7b13da98cd008eb4b5b5b5d59639ad2377452ab9)
- [913c28ee32 - Superfluous Whitespace Fix](https://github.com/phpmyadmin/phpmyadmin/commit/913c28ee32df4e05cfbda22f0ac20018ed4369e8)
- [2f82c9c29c - Add --verbose to help debug CI failure](https://github.com/phpmyadmin/phpmyadmin/commit/2f82c9c29c77ae76b0faba456a490944e81474a0)
- [27bd5902ad - Fix issue reported by scrutinizer](https://github.com/phpmyadmin/phpmyadmin/commit/27bd5902addcceabaaf0255a27da507b83aa082b)
- [29eaf86fcc - Fix relations](https://github.com/phpmyadmin/phpmyadmin/commit/29eaf86fcc6c3654a66a01a6f6b6e6a800b51755)
- [24a8518b2a - Fix twig for](https://github.com/phpmyadmin/phpmyadmin/commit/24a8518b2a18a979d662da8cfbedc52c02d1d498)
- [057c6faca2 - Fix errors when database has no tables](https://github.com/phpmyadmin/phpmyadmin/commit/057c6faca2a2f41446f4655a3f2ec8b2ffb43091)
- [04fe7d0da9 - Use php:rawurlencode/twig:url_encode in designer](https://github.com/phpmyadmin/phpmyadmin/commit/04fe7d0da9e5bfa00e3859b7955a503fd793f05c)
- [ce06b9422b - Escape database name in URL](https://github.com/phpmyadmin/phpmyadmin/commit/ce06b9422b5ade2a919cf33ae0ec2ebad66beab7)
- [096d170e04 - Move designer config to javascript w/json](https://github.com/phpmyadmin/phpmyadmin/commit/096d170e0488e86c5a3ceb11924b9da444d7daa8)
- [85bff866d4 - Closes #14225 - missing index icon](https://github.com/phpmyadmin/phpmyadmin/commit/85bff866d4ffbe9b7a4d4f42a0fa41e83a881d14)
- [632309bad8 - Fixes #14370](https://github.com/phpmyadmin/phpmyadmin/commit/632309bad8e4a67c86d1345a369f4420bc54023f)
- [5815c1570e - Closes #14225 - missing index icon](https://github.com/phpmyadmin/phpmyadmin/commit/5815c1570e32506595040d955f4eed9dbc520f92)
- [bdb52e808a - Closes #14374 - Structure broken](https://github.com/phpmyadmin/phpmyadmin/commit/bdb52e808a063dec000004d1c578bfa4282d0871)
- [13e34b400a - Add support for commondir file in .git dir](https://github.com/phpmyadmin/phpmyadmin/commit/13e34b400abb509fd108332a007b2f6638361eb9)
- [81a552cda0 - Closes #14388 - Search and Insert broken](https://github.com/phpmyadmin/phpmyadmin/commit/81a552cda041d61361ac2d159bf7980bcceba687)

## Fourth week (25)

On the website I added the migrate command to the README, test data for #73 and fixed the CVE links. On the main repository I completed the escaping of the database name in URLs.

- [6943fff873 - Escape database name in URL](https://github.com/phpmyadmin/phpmyadmin/commit/6943fff87324bd54c3a37a5160a5fb77498c355e)
- [c0876172e8 - [README] Add migrate command](https://github.com/phpmyadmin/website/commit/c0876172e80b4f6eff2285c064f0db9d77937e4f)
- [fc236b0c2f - Add test data for #73](https://github.com/phpmyadmin/website/commit/fc236b0c2f9231f8abd89f162dc519997c3959c4)
- [bc4db60f26 - Fix CVE link](https://github.com/phpmyadmin/website/commit/bc4db60f26410c778b3942847df44dd2ad786a57)

## Fifth week (26)

I fixed the 2FA QR code generation with PHP GD ([#14171](https://github.com/phpmyadmin/phpmyadmin/issues/14171)), the missing "Visualize GIS data" icon ([#14382](https://github.com/phpmyadmin/phpmyadmin/issues/14382)) and a missed case of passing an extension to `Util::getImage` ([#14390](https://github.com/phpmyadmin/phpmyadmin/issues/14390)). I also reached phpstan level 0, which meant cleaning phpdoc, class names, duplicate array keys and undefined properties.

- [49fae81505 - Fix for #14171 - 2FA QR PHPGD](https://github.com/phpmyadmin/phpmyadmin/commit/49fae815051005779fb283fa404f9153d2c29b1f)
- [b3379d7700 - Fix - #14382 "Visualize GIS data" icon missing](https://github.com/phpmyadmin/phpmyadmin/commit/b3379d77001dbb8a49a9ceaf7bfd5544fa7b3cbc)
- [ff4785cbf2 - Patch - missed instance of 'Avoid passing extension to Util::getImage'](https://github.com/phpmyadmin/phpmyadmin/commit/ff4785cbf281d08fc44f0eb7a7643bd7f99a54c4)
- [e816e45c18 - phpstan level 0 (#14405)](https://github.com/phpmyadmin/phpmyadmin/commit/e816e45c183f49e770b4c36714c509e913d2043c)

## Other projects

Outside phpMyAdmin I fixed a broken link to the Library of Babel on cakenggt/Library-Of-Pybel ([#5](https://github.com/cakenggt/Library-Of-Pybel/pull/5)) and aneopsy/LibraryOfBabel ([#1](https://github.com/aneopsy/LibraryOfBabel/pull/1)), and updated the screenshots of dwyl/learn-travis while migrating it to travis-ci.com ([#44](https://github.com/dwyl/learn-travis/pull/44)).
In June 2018 I worked on the main repository, the website and the small libraries, mostly on CI and static analysis.

