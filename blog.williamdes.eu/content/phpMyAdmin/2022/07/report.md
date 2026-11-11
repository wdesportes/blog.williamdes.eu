+++
title = "Report for July 2022"
date = 2022-07-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for July 2022.

<!-- more -->

In July 2022 my focus was PHP 8.2 support, mostly on sql-parser.

## First week (27)

A quiet week, only Indonesian translation updates.

- [6279fb2e04 - Translated using Weblate (Indonesian)](https://github.com/phpmyadmin/phpmyadmin/commit/6279fb2e04e48628ac91cfb5b679e6cd2706b2c4)
- [47e7cfe761 - Translated using Weblate (Indonesian)](https://github.com/phpmyadmin/phpmyadmin/commit/47e7cfe761a7ab261028b67734a50e35d0cf51fc)
- [4e08d2933b - Translated using Weblate (Indonesian)](https://github.com/phpmyadmin/phpmyadmin/commit/4e08d2933b72d3615e3c2d8f35262b129a6cd235)

## Second week (28)

I worked on the release bundle: cleaned the paragonie/sodium_compat vendor folder, removed useless files and allowed the composer ca-bundle pem file. I also fixed the deprecated ${var} string interpolation for PHP 8.2 and merged [#17596](https://github.com/phpmyadmin/phpmyadmin/pull/17596) to fix the blob column downloads.

- [f5dac447a0 - Cleanup paragonie/sodium_compat vendor folder](https://github.com/phpmyadmin/phpmyadmin/commit/f5dac447a05aa3b45dbb9cd4c074da15a26304fb)
- [458e7902bc - Remove some useless files from the release bundle](https://github.com/phpmyadmin/phpmyadmin/commit/458e7902bc0ccaad00881c292840b0ae41c98a7f)
- [024b93a441 - Allow composer/ca-bundle pem file in release bundle](https://github.com/phpmyadmin/phpmyadmin/commit/024b93a4413578553a33e0e563232c37410b85c3)
- [3732dec17d - Stop allowing openssl.cnf in check release script](https://github.com/phpmyadmin/phpmyadmin/commit/3732dec17dd179578d27b30cc2373717ab7bfc8b)
- [0fb9f4c266 - Fix PHP 8.2: ${var} deprecated string interpolation syntax on Git class](https://github.com/phpmyadmin/phpmyadmin/commit/0fb9f4c266b51932bc7e9d2ae2295835ec7b2e56)
- [fd006f1555 - Write a test for Git::extractDataFormTextBody](https://github.com/phpmyadmin/phpmyadmin/commit/fd006f155587a04db108b3a934cb6ce9d2d06499)
- [0daa68d85c - Remove ignore config.inc.php for psalm because it fails the CI](https://github.com/phpmyadmin/phpmyadmin/commit/0daa68d85c5538cdc4f6817992d8bba5def62f88)
- [9054339999 - Update psalm baseline and ignore config.inc.php for psalm](https://github.com/phpmyadmin/phpmyadmin/commit/90543399991cdb294185f90e8ae1a45e059c31ab)
- [03e27019ad - Add a ChangeLog entry for 6a69face6c](https://github.com/phpmyadmin/phpmyadmin/commit/03e27019ad9b693995950f09d032349d7e766ce6)
- [6a69face6c - Fix PHP 8.2: ${var} deprecated string interpolation syntax](https://github.com/phpmyadmin/phpmyadmin/commit/6a69face6cb4f9233127795cf0739f89e5036685)
- [af7338f706 - Remove gd extension for PHP 8.2](https://github.com/phpmyadmin/phpmyadmin/commit/af7338f7061419a72d1ae53bafa02a5643201c06)
- [641ba50191 - Merge #17596 - Fix blob column downloads](https://github.com/phpmyadmin/phpmyadmin/commit/641ba501916295d4dd42af5417108d97d100ef59)
- [4341ce4e7a - main/cyrus-sasl: fix sqlite3 build](https://gitlab.alpinelinux.org/alpine/aports/-/commit/4341ce4e7ae76fcbd4cf167185a088ac0f32b669)
- [8909d35c1d - main/cyrus-sasl: remove non existing build option --disable-java](https://gitlab.alpinelinux.org/alpine/aports/-/commit/8909d35c1d71fd3baa5eb171cf9d2749a210ca15)
- [80de3d4717 - community/phpmyadmin: packaging fixes and improvements](https://gitlab.alpinelinux.org/alpine/aports/-/commit/80de3d4717b366d87c1b2c9a0086d7fa5f5cd644)

## Third week (29)

On sql-parser I merged [#381](https://github.com/phpmyadmin/phpmyadmin/pull/381) for the ALTER queries of PARTITIONS, and [#380](https://github.com/phpmyadmin/phpmyadmin/pull/380) and [#382](https://github.com/phpmyadmin/phpmyadmin/pull/382) for the compression support in table structures and CREATE TABLE statements. I also added #[\AllowDynamicProperties] on the Statement and Expression classes for PHP 8.2 support, and prepared the Debian package 5.4.1-3 with a PHP 8.2 patch.

- [22a26fc00f - Add a CHANGELOG entry for #329](https://github.com/phpmyadmin/sql-parser/commit/22a26fc00ffd45e895804ba04ce8f24b932f6629)
- [d94bd98b37 - Merge #381 - Fix #329 Support `ALTER` queries of `PARTITIONS`](https://github.com/phpmyadmin/sql-parser/commit/d94bd98b37e76834b0d4bed4e79140e280d54a71)
- [6ccc9242c0 - Merge #382 - Fix #351 Support the compression options in `CREATE TABLE` statements](https://github.com/phpmyadmin/sql-parser/commit/6ccc9242c0db16deada4f91e9b99a6735213c3b2)
- [e9fa3d21a7 - Update phpstan baseline with PHP 7.4](https://github.com/phpmyadmin/sql-parser/commit/e9fa3d21a7a17bd63660eab4c37eab488ba31236)
- [c6e0123e94 - Change phpstan analyse workflow to use PHP 7.4 for newer phpstan versions](https://github.com/phpmyadmin/sql-parser/commit/c6e0123e94305ac857f230689a50f2c9c5e07170)
- [6789b09c1d - Update phpcs.xml.dist config](https://github.com/phpmyadmin/sql-parser/commit/6789b09c1d2cc44f55bd39fc1de83ce7ddcc041d)
- [a1a8ae3b84 - Change phpstan analyse workflow to use PHP 7.3 for newer phpstan versions](https://github.com/phpmyadmin/sql-parser/commit/a1a8ae3b84d403b62e6da65d5b5de050d976db44)
- [7472462a17 - Add a CHANGELOG entry for 4ee76d9452](https://github.com/phpmyadmin/sql-parser/commit/7472462a17b95e21a244c4462e4523aa9d4dcdc1)
- [4ee76d9452 - Add #[\AllowDynamicProperties] on Statement and Expression classes for PHP 8.2 support](https://github.com/phpmyadmin/sql-parser/commit/4ee76d94525a092df6b6ea1109171bfc9bc73f52)
- [7d341ba4b9 - Change phpstan analyse workflow to use PHP 7.2 for newer phpstan versions](https://github.com/phpmyadmin/sql-parser/commit/7d341ba4b9cc1b1abfa0d2517625e1827c02c8d6)
- [553f3c7c8c - Add a CHANGELOG entry for #351](https://github.com/phpmyadmin/sql-parser/commit/553f3c7c8cd32081669cfacce0b753bf28840779)
- [3837827271 - Merge #380 - Fix #351 Support table structure with COMPRESSED columns](https://github.com/phpmyadmin/sql-parser/commit/3837827271dc2d8c401151c0cdf34b5966671560)
- [467e5f2bdc - Update phpstan baseline](https://github.com/phpmyadmin/sql-parser/commit/467e5f2bdcc51a73cc37a38e11cc2b091bf763b1)
- [5e59a935ff - Add a CHANGELOG entry for a201314874](https://github.com/phpmyadmin/sql-parser/commit/5e59a935ff837b695531fe1a4abac3f1e3aa0617)
- [a201314874 - Exclude from composer vendor bundle /tests and /phpunit.xml.dist](https://github.com/phpmyadmin/sql-parser/commit/a20131487496892d4111c1cbe0025fee35180cce)
- [f804078db0 - Bump GitHub actions to v3](https://github.com/phpmyadmin/sql-parser/commit/f804078db01b0b7915d69641548ace5d0dbbd05a)
- [537fcd02ef - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/537fcd02ef8784d8ceed19a6641dd58819bb6f82)
- [9934d0a5c2 - Merge branch 'php-8.2' into debian/latest](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/9934d0a5c2a26e70d82feeb8ee14f31f2cb2552f)
- [0d4d8e5af7 - Update d/ch for 5.4.1-3 release](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/0d4d8e5af734b2383a73e51e02e7025345e3810b)
- [6371772a7d - Add a patch to support PHP 8.2](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/6371772a7d9b16069f5299765dfce444f0182311)
- [6710b101cb - Fix a typo in d/rules and d/tests/phpunit](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/6710b101cb7a7751be298a0d5c681fe542bdf961)

## Fourth week (30)

I updated the documentation to use the Docker official repository.

- [8ef83c070e - Update the documentation to use the Docker official repository](https://github.com/phpmyadmin/phpmyadmin/commit/8ef83c070ea611320ec8bcee4730e8ae501c690b)
- [f4470d5024 - Translated using Weblate (Berber)](https://github.com/phpmyadmin/phpmyadmin/commit/f4470d5024559c61d4e2886cafc708fcd2d43bae)
- [f0644b394c - Translated using Weblate (Berber)](https://github.com/phpmyadmin/phpmyadmin/commit/f0644b394cd2601a418f60dba5921244e9eb3fa4)
- [d749f090ab - Translated using Weblate (Berber)](https://github.com/phpmyadmin/phpmyadmin/commit/d749f090abe858310a3ca5161b302f0d9b2c40d0)

