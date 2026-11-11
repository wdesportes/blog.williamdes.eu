+++
title = "Report for July 2023"
date = 2023-07-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for July 2023.

<!-- more -->

In July 2023 I fixed a good batch of issues on phpmyadmin, and worked on the docker image and docker-library/official-images.

## First week (27)

I merged [#418](https://github.com/phpmyadmin/phpmyadmin/pull/418) on docker to improve the fix made in [#417](https://github.com/phpmyadmin/phpmyadmin/pull/417), and updated phpmyadmin to the latest upstream changes in docker-library/official-images.

- [30db079919 - Merge #418 - improve the fix made in #417](https://github.com/phpmyadmin/docker/commit/30db07991963a86302b87024fb5158a13f2e98f4)
- [c32e5b5c8d - Update phpmyadmin to latest upstream changes](https://github.com/docker-library/official-images/commit/c32e5b5c8d30a64cf7249b423f9551d0c5e81fcc)

## Second week (28)

I implemented the Permissions-Policy security header ([#17009](https://github.com/phpmyadmin/phpmyadmin/issues/17009)) and merged [#18379](https://github.com/phpmyadmin/phpmyadmin/pull/18379) to fix the double tap to edit on mobile ([#14411](https://github.com/phpmyadmin/phpmyadmin/issues/14411)). I also fixed the hex representation of integers ([#18325](https://github.com/phpmyadmin/phpmyadmin/issues/18325)) and stopped reloading the navigation tree when nothing changed ([#17443](https://github.com/phpmyadmin/phpmyadmin/issues/17443)).

- [8355c0ce47 - Add a ChangeLog entry for #17009](https://github.com/phpmyadmin/phpmyadmin/commit/8355c0ce47d7ffbe0593f4019a33089b0e741895)
- [8a9a376fd9 - Fix #17009 - Implement Permissions-Policy security header](https://github.com/phpmyadmin/phpmyadmin/commit/8a9a376fd9989e1c09c12a3c1c206e18367c60c0)
- [a0d30e3de1 - Update broken links in code](https://github.com/phpmyadmin/phpmyadmin/commit/a0d30e3de15bae6fae8d07ae8f1f509bcdae2ff1)
- [e6560607e5 - Add a ChangeLog entry for #14411](https://github.com/phpmyadmin/phpmyadmin/commit/e6560607e5b0c64d1cb41afe161f244cd31858a4)
- [7de25be000 - Merge #18379 - Fix #14411 - Double tap to edit on Mobile](https://github.com/phpmyadmin/phpmyadmin/commit/7de25be000209a2258d4e608e2f93c19dec4baa6)
- [e47f5d9702 - Fix #18325 - Remove the uppercase variant since we match /i](https://github.com/phpmyadmin/phpmyadmin/commit/e47f5d970223bf3cc4c6229f093020305af17bf1)
- [298a7b5d2a - Fix #18325 - Forbid non valid hex chars following valid hex chars](https://github.com/phpmyadmin/phpmyadmin/commit/298a7b5d2a98e35781339b65f664ac8cc12b08e9)
- [11421b4b05 - Fix #18325 - Allow hex representations for integers with letters](https://github.com/phpmyadmin/phpmyadmin/commit/11421b4b05b4cf887abc1656a9dab9f88c88d297)
- [4655646219 - Fix testCheckFavoriteTable](https://github.com/phpmyadmin/phpmyadmin/commit/465564621938fa813b0a8bc93551f91d9a18fe96)
- [234d7dc3e2 - Add a code search hint](https://github.com/phpmyadmin/phpmyadmin/commit/234d7dc3e203a51da72fc5366b80a572761958cb)
- [8b4a158a1b - Ref #16005 - Remove loading on each request favorites and recents](https://github.com/phpmyadmin/phpmyadmin/commit/8b4a158a1b405e24a8109c3272a38880e9e6671d)
- [007036765f - Fix #17443 - stop reloading the navigation tree if nothing changed](https://github.com/phpmyadmin/phpmyadmin/commit/007036765f28d075cf17184e51f3095a6209f485)
- [d4b3f7844c - Fix sending "undefined" to sync favorites](https://github.com/phpmyadmin/phpmyadmin/commit/d4b3f7844cf5bb65dd5e8b78cec249c8e1c85c02)
- [d1019373ce - Fix route /database/structure/favorite-table - it does not require a db name](https://github.com/phpmyadmin/phpmyadmin/commit/d1019373cec82fec564e60b0a08c3ff361f9b062)
- [12c51dfa8e - Fix route display in SQL debug console](https://github.com/phpmyadmin/phpmyadmin/commit/12c51dfa8e5522931e5c8036c109ed15565b4adc)
- [678a9dda42 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/678a9dda42dc678e97ee5a71866d5b39a8c30603)
- [37239d9596 - Add a ChangeLog entry for #18325](https://github.com/phpmyadmin/phpmyadmin/commit/37239d95968cd0df1bfa9d041986a8455d92f54f)
- [6e88cbabd4 - Fix #18325 - Allow hex representations for integers](https://github.com/phpmyadmin/phpmyadmin/commit/6e88cbabd4feeaa4dc2360b7a649a92395d2e333)
- [52c6d12f44 - Move registering validationFunctionForMultipleInt to registerOnload like other ones](https://github.com/phpmyadmin/phpmyadmin/commit/52c6d12f4493f3cdce8da45913b7cb74b6dd1294)

