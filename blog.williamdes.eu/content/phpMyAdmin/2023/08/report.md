+++
title = "Report for August 2023"
date = 2023-08-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for August 2023.

<!-- more -->

In August 2023 my focus was the website and some fixes on phpmyadmin.

## First week (31)

I fixed [#18578](https://github.com/phpmyadmin/phpmyadmin/issues/18578), the PDF export of NULL values that gave a type error, and [#18592](https://github.com/phpmyadmin/phpmyadmin/issues/18592) about the pma_collation_connection cookie instruction that was removed in 4.8.0. On docker I fixed [#287](https://github.com/phpmyadmin/phpmyadmin/pull/287) to verify the version syntax in the shell scripts and avoid a command injection.

- [1f94b4a0bd - Update baselines after #18578](https://github.com/phpmyadmin/phpmyadmin/commit/1f94b4a0bd7ca812849d83317d444cf5cae31276)
- [e69190ff38 - Add a ChangeLog entry for #18578](https://github.com/phpmyadmin/phpmyadmin/commit/e69190ff38de6b46752358d965aabfbbd8c0f311)
- [1259c2638b - Fix #18578 - PDF export NULL values gives a type error](https://github.com/phpmyadmin/phpmyadmin/commit/1259c2638b602c46c02e99bcb01e9edb9e46d36b)
- [e4d75fe3e7 - Merge #18478 - Remove empty option from enum select](https://github.com/phpmyadmin/phpmyadmin/commit/e4d75fe3e7fb607b7e37dec56733e92583a026b9)
- [2ad1339845 - Change `docker-compose` for `docker compose` as it's now part of Docker](https://github.com/phpmyadmin/phpmyadmin/commit/2ad133984582b75a399a89c283f886a4b3fc9759)
- [41d3c52717 - Document Docker ENVs PMA_SOCKET and PMA_SOCKETS](https://github.com/phpmyadmin/phpmyadmin/commit/41d3c52717d4fb975f504d8225ba51b73323e170)
- [eae978f3f3 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/eae978f3f38ea506b8d988c973debc43dd7a579d)
- [7c975030b9 - Fix #18592 - Remove instruction to remove the pma_collation_connection cookie removed in 4.8.0](https://github.com/phpmyadmin/phpmyadmin/commit/7c975030b90f9e9e7d2578d23a6fa11b73ff5bcf)
- [272944cc5a - Fix #287 - Verify the version syntax in *.sh to avoid command injection](https://github.com/phpmyadmin/docker/commit/272944cc5a10f7740acacbe2a35c2c1f6d9a98c7)
- [6517adbfe3 - Fix #421 - Document PMA_SOCKET and PMA_SOCKETS](https://github.com/phpmyadmin/docker/commit/6517adbfe3830627ca14c2671373c5f10e1d11fa)

## Second week (32)

On the website I merged [#136](https://github.com/phpmyadmin/phpmyadmin/pull/136) to upgrade it to be compatible with Python 3, and added testing on Python 3.8 to 3.11. On sql-parser I merged [#494](https://github.com/phpmyadmin/phpmyadmin/pull/494) to allow the COLLATE keyword in WHERE clauses and [#495](https://github.com/phpmyadmin/phpmyadmin/pull/495) to use the PHPUnit attributes over annotations.

- [945a2c2776 - Merge #18610 - Remove optional params](https://github.com/phpmyadmin/phpmyadmin/commit/945a2c2776e415e2a14ff1200d187ff75aaa65c4)
- [41c84321fc - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/41c84321fc224f7221751090b68a3e4174957de5)
- [58570cf4fc - Fix php unlink warnings when the test was skipped in GitTest](https://github.com/phpmyadmin/phpmyadmin/commit/58570cf4fcaa65ad359ecd08d771f10b416f5676)
- [d30f76646c - Fix the RELEASE-DATE- file for snapshots](https://github.com/phpmyadmin/phpmyadmin/commit/d30f76646cf930f25a648199122c002057cadd28)
- [2fc6092867 - Document admin user creation](https://github.com/phpmyadmin/website/commit/2fc60928672ad98cc36d6ebafcdb420f55e964f3)
- [f6d69ec4a2 - Fix a space mistake in the sed command](https://github.com/phpmyadmin/website/commit/f6d69ec4a247a1df06b09c0e6e9989c88ea0d1c1)
- [d4b417116e - Drop Python 3.9 and 3.9, add patches for 3.10 and 3.11](https://github.com/phpmyadmin/website/commit/d4b417116e736ba4066d0527ac4b646af3dc1bfa)
- [6c68b27092 - Also add 3.8 and disable fail fast](https://github.com/phpmyadmin/website/commit/6c68b270927a88d129d0984879f1b121b0fc6430)
- [fdf27dada4 - Also test on 3.9 and 3.10](https://github.com/phpmyadmin/website/commit/fdf27dada4b922ce2ef8612fe10f2707b81c4260)
- [2dffb5b3bf - Test on Python 3.11](https://github.com/phpmyadmin/website/commit/2dffb5b3bfed706a320f41df993a4c77a3e26428)
- [4a1ba42688 - Merge #136 - Upgrade website to be compatible with Python3](https://github.com/phpmyadmin/website/commit/4a1ba42688ba4006e3a822999340ad87d4913ee3)
- [d70e65d88c - Merge branch '5.8.x'](https://github.com/phpmyadmin/sql-parser/commit/d70e65d88cb3972ad041f12e0509c04921fc4a75)
- [e93d9457e3 - Add a CHANGELOG entry for #491](https://github.com/phpmyadmin/sql-parser/commit/e93d9457e3a279b98c75a6a8d9feb92bb923501c)
- [dd614a6670 - Merge #494 - Allow the COLLATE keyword in WHERE clauses](https://github.com/phpmyadmin/sql-parser/commit/dd614a6670b761acf61f15dd5bf531df564c4aad)
- [58e2f307a7 - Merge branch '5.8.x' (#488)](https://github.com/phpmyadmin/sql-parser/commit/58e2f307a7c0b44a863eba0380a955a226a81711)
- [18da8b1899 - Merge #489 - Reset sql mode after context tests](https://github.com/phpmyadmin/sql-parser/commit/18da8b1899349ff153297a710a41a6d2cf1a5149)
- [4843cbb2ac - Merge #495 - Use PHPUnit attributes over annotations](https://github.com/phpmyadmin/sql-parser/commit/4843cbb2accd04216aaaae146454295355131743)

## Third week (33)

Mostly the website: I migrated the translations to the new API ([#100](https://github.com/phpmyadmin/phpmyadmin/pull/100)), bumped Django to 3.2 ([#159](https://github.com/phpmyadmin/phpmyadmin/pull/159)) and fixed the missing theme screenshots ([#139](https://github.com/phpmyadmin/phpmyadmin/pull/139)).

- [0ab0295e25 - Remove the default value, it's not needed anyway](https://github.com/phpmyadmin/website/commit/0ab0295e25b45bd8d4eb630d598a082e6b4defc5)
- [1e2a859dee - Change the model uniqueness to the translation code, not it's url](https://github.com/phpmyadmin/website/commit/1e2a859dee159eb9301c797db6852f7c7bbc9ba0)
- [7b991eebe1 - Fix #100 - Migrate translations to the new API](https://github.com/phpmyadmin/website/commit/7b991eebe1fe2ddd57eaf8d1659f59cbb0a826d9)
- [af13609df4 - Fix #139 - Add some missing screenshots](https://github.com/phpmyadmin/website/commit/af13609df4a867dab64587a51869d0df13322858)
- [40d0a8a98d - Fix #139 - Themes without screenshots should not show the thumbnail](https://github.com/phpmyadmin/website/commit/40d0a8a98d9fef2401e878ec03468ff376bc43fb)
- [3fd3edc7be - Fix #160 - Failed to read configuration file error with "manage.py fetch_versions"](https://github.com/phpmyadmin/website/commit/3fd3edc7bebf44651bf9c33c8f30fa604fd997d6)
- [6e275714a3 - Merge #159 - Bump Django version to 3.2](https://github.com/phpmyadmin/website/commit/6e275714a3d9dfe8cb1e8146fe4c811d4d27704f)
- [52991c173b - Migrate CVE record link to cve.org](https://github.com/phpmyadmin/website/commit/52991c173bfca711b30d3b52ac1b2f3b2370d7c6)
- [97eba8eb4f - Fix demo master-config links](https://github.com/phpmyadmin/website/commit/97eba8eb4fc899f5195359d32c96dde0634c753e)
- [50a3b5fdd1 - Drop Flattr since the link is 404 and the website is paywalled](https://github.com/phpmyadmin/website/commit/50a3b5fdd12605a7a6b8ffb3c1ab32beeae717c7)

## Fourth week (34)

A quiet week on motranslator: I updated the psalm baseline and bumped the actions.

- [7d7f034258 - Update the psalm baseline](https://github.com/phpmyadmin/motranslator/commit/7d7f034258980d82496756f731b8982f4f63b597)
- [6eda4161fb - Merge branch '5.3.x'](https://github.com/phpmyadmin/motranslator/commit/6eda4161fbf2807640ec9b1945afd11beefe347e)
- [e3510360ce - Bump actions](https://github.com/phpmyadmin/motranslator/commit/e3510360ce87c2d732a2ebf4d3dd94d5e82b7fbd)

## Fifth week (35)

I merged [#500](https://github.com/phpmyadmin/phpmyadmin/pull/500) and [#502](https://github.com/phpmyadmin/phpmyadmin/pull/502) on sql-parser to add the remaining native return types.

- [03b0bca3d2 - Merge #502 - Add remaining native return types](https://github.com/phpmyadmin/sql-parser/commit/03b0bca3d25ec83e573c52281366a40fcea4cec2)
- [ea86a5c5d5 - Merge #500 - Add some more return types ](https://github.com/phpmyadmin/sql-parser/commit/ea86a5c5d55600ccfedfcc8ec6a19e1e25c4fa99)

