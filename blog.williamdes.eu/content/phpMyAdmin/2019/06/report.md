+++
title = "Report for June 2019"
date = 2019-06-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for June 2019.

<!-- more -->

In June 2019 I worked on the main repository, on security hardening and bug fixes.

## First week (23)

I fixed the "logout and try as another user" link, which no longer uses ajax mode, a case that shows up after a `GRANT PROXY` query. I also fixed the TIMESTAMP columns that could not be edited or exported when their default is CURRENT_TIMESTAMP on MySQL 8.0.13 ([#15315](https://github.com/phpmyadmin/phpmyadmin/issues/15315)), and a TypeError on substring ([#10846](https://github.com/phpmyadmin/phpmyadmin/issues/10846), pull-request [#15284](https://github.com/phpmyadmin/phpmyadmin/pull/15284)).

- [ec74b34010 - Fix "logout and try as another user link"](https://github.com/phpmyadmin/phpmyadmin/commit/ec74b3401078aa73a7596c66e90e191262b17bd3)
- [70b271a491 - Add ChangeLog entry for #15315](https://github.com/phpmyadmin/phpmyadmin/commit/70b271a491ced57e46fbf9449d198efbf969486a)
- [64dc20460e - Fix #15315 - Cannot edit or export TIMESTAMP column with default CURRENT_TIMESTAMP in MySQL >= 8.0.13](https://github.com/phpmyadmin/phpmyadmin/commit/64dc20460ecf6688580f66063174012b75d0f66e)
- [96fc4d45af - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/96fc4d45af90686c7a56c4ccdb89ae9faaa9c082)
- [3a48b985f7 - Add ChangeLog entry for #10846](https://github.com/phpmyadmin/phpmyadmin/commit/3a48b985f7ddada4d2979b7dea03f1d7c9644671)
- [69e08d8503 - Fix #10846 - TypeError: Cannot read property 'substring' of undefined](https://github.com/phpmyadmin/phpmyadmin/commit/69e08d8503082664de600880cc6bbf23d9e9b1d3)

## Second week (24)

I hardened the HMAC secret by using the blowfish_secret and made it a secret for the user. I added unit tests for the session renewal, a key for HHVM, and removed the type hints that HHVM does not support. I also fixed the broken foreign key links: middle-click, Command+Click and the relational links in tables were not working anymore ([#14270](https://github.com/phpmyadmin/phpmyadmin/issues/14270), [#14363](https://github.com/phpmyadmin/phpmyadmin/issues/14363), [#15225](https://github.com/phpmyadmin/phpmyadmin/issues/15225)).

- [fc014c5b72 - Harden the HMAC secret by using the blowfish_secret](https://github.com/phpmyadmin/phpmyadmin/commit/fc014c5b727d45508f248313dd241ba9ae1a84cb)
- [80a7f0a75c - Make the hmac secret a secret for the user](https://github.com/phpmyadmin/phpmyadmin/commit/80a7f0a75c72ec2b92216647ac66890ff58002f8)
- [fb4a8d61b7 - Add Unit test case for session renewal](https://github.com/phpmyadmin/phpmyadmin/commit/fb4a8d61b7cb9e7057dd6b5684d1c3b501a9026b)
- [80d88d2f18 - Add a key for hhvm](https://github.com/phpmyadmin/phpmyadmin/commit/80d88d2f1829f81fdc0d23f8d211378195525bce)
- [c59790b05e - Remove typehints for hhvm](https://github.com/phpmyadmin/phpmyadmin/commit/c59790b05ec193b99f7de2c115d7014086912b33)
- [b61d878ac4 - Add unit tests](https://github.com/phpmyadmin/phpmyadmin/commit/b61d878ac4fbc74a669dfcfa081e62e6ad88b1ec)
- [4bf8bfcaa1 - Fix broken foreign key links](https://github.com/phpmyadmin/phpmyadmin/commit/4bf8bfcaa16dd90d7b36c2c3f5e2d36c7b249bd2)

## Third week (25)

I fixed the export of the GIS visualisation ([#15334](https://github.com/phpmyadmin/phpmyadmin/issues/15334)), after replacing $_REQUEST by $_GET and $_POST, and the weird error on an empty collation ([#14987](https://github.com/phpmyadmin/phpmyadmin/issues/14987)). I merged the phpstan level 3 fixes, which left 21 errors, and removed some excluded patterns from the configuration with a note to revert that once level 3 is complete. I also fixed the multi server setup number of results selector, the broken foreign key links and the Windows CI that exited with a failure because of the GPG agent.

- [b9217146ab - Fix multi server setup number of results selector](https://github.com/phpmyadmin/phpmyadmin/commit/b9217146ab36bbd1fd4caaf0456d2e10a958d22a)
- [942897426b - Merge branch 'QA_4_9'](https://github.com/phpmyadmin/phpmyadmin/commit/942897426bb6dd58f173972d471309f3516e0f13)
- [97d25f4e51 - Fix #15334 - export of GIS visualisation not working](https://github.com/phpmyadmin/phpmyadmin/commit/97d25f4e513ea99f929db0b5aae0537149d757be)
- [860809ea08 - Fix Windows CI exit failure (GPG agent)](https://github.com/phpmyadmin/phpmyadmin/commit/860809ea08f06936ddb796a93dfc28dd734aa7a9)
- [3c74f22e89 - Minor code improvements](https://github.com/phpmyadmin/phpmyadmin/commit/3c74f22e893348ece4bfc20efa649db58a90e767)
- [d9f2428032 - Remove unused imports and fix an error reported by Scrutinizer](https://github.com/phpmyadmin/phpmyadmin/commit/d9f24280327316c575605b05faf74b8f05781d1f)
- [a2268169ae - Use strict compare for count function](https://github.com/phpmyadmin/phpmyadmin/commit/a2268169ae97fc275469a0688ce6108367a2bda5)
- [64c1b26bac - Use strict compare for booleans](https://github.com/phpmyadmin/phpmyadmin/commit/64c1b26bac93b3ec5315dc2957c5c65d9047b12d)
- [996975262f - Improve ConfigFileTest::tearDown](https://github.com/phpmyadmin/phpmyadmin/commit/996975262ffd095bdf10f7000342f1a53dcbc174)
- [1a43a21f56 - Fix ExportOdtTest::testGetTableDefStandIn](https://github.com/phpmyadmin/phpmyadmin/commit/1a43a21f561814f4a2e65df9bf3cab035ea61d54)
- [d0b0ce14c1 - Remove some excluded patterns from phpstan config](https://github.com/phpmyadmin/phpmyadmin/commit/d0b0ce14c15acee62cc80ca82fb1ec745b812ed0)
- [083a46b36d - Merge #15322 - phpstan level 3 fixes](https://github.com/phpmyadmin/phpmyadmin/commit/083a46b36d6bc731db700467c24b034621d6b2da)
- [6cc352ac12 - phpstan level 3 fixes](https://github.com/phpmyadmin/phpmyadmin/commit/6cc352ac1251a693c23ca9b075b4b2a1f5d982ee)
- [418b50dd4e - Merge branch 'QA_4_9'](https://github.com/phpmyadmin/phpmyadmin/commit/418b50dd4e722a9657cb8d48683546364df62ca8)
- [83337ec8c9 - Add ChangeLog entry for #15334](https://github.com/phpmyadmin/phpmyadmin/commit/83337ec8c9c2225f79f66f46f06af66591ee7329)
- [aab50ab37a - Replace $_REQUEST by $_GET and $_POST for GIS visualisation](https://github.com/phpmyadmin/phpmyadmin/commit/aab50ab37a5897a93d4828bfbb361780b1b00455)
- [bbac072fb5 - Fix #15334 - export of GIS visualisation not working](https://github.com/phpmyadmin/phpmyadmin/commit/bbac072fb57e818160e0af754555f1855cebc09a)
- [5e66bdeba2 - Fix coding standard errors and phpdoc](https://github.com/phpmyadmin/phpmyadmin/commit/5e66bdeba2f028a7a2b322575d8da37d0ec9075d)
- [b6a354a843 - Add ChangeLog entries for #14270 #14363 and #14987](https://github.com/phpmyadmin/phpmyadmin/commit/b6a354a843c3cd0376df9b9cf0b8716666af41d9)
- [693ef2e4a8 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/693ef2e4a857c47dd326d38795420dedb5fe2bd1)
- [010df8e4ec - Merge branch 'QA_4_9'](https://github.com/phpmyadmin/phpmyadmin/commit/010df8e4ecb6db79d35e9a4fa9454033034540f7)
- [48bfdebc08 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/48bfdebc08712f10107bf86e3d086ed53a54687e)
- [562ce3a8f6 - Fix #14987 - Weird error for empty collation](https://github.com/phpmyadmin/phpmyadmin/commit/562ce3a8f6c7bc04638495426b3748a942fbcacb)
- [d2caddf5e9 - Fix broken foreign key links](https://github.com/phpmyadmin/phpmyadmin/commit/d2caddf5e9deebfe7e22fe6c32fdef9860d19d07)
- [35c721d291 - Merge branch 'QA_4_8' into QA_4_9](https://github.com/phpmyadmin/phpmyadmin/commit/35c721d291e32543072569610a61596d0c779de7)

## Fourth week (26)

I replaced the session token with a hexadecimal one ([#14918](https://github.com/phpmyadmin/phpmyadmin/issues/14918)) and fixed most of the deprecated jQuery calls ([#15355](https://github.com/phpmyadmin/phpmyadmin/pull/15355)), the event shortcuts that jQuery 3 deprecates ([#13173](https://github.com/phpmyadmin/phpmyadmin/issues/13173)). I also fixed a column misalignment ([#15230](https://github.com/phpmyadmin/phpmyadmin/issues/15230)), improved the code of `_getFieldVisibilityParams`, merged the CodeTriage badge and added a FAQ entry about the country_code column.

- [1890e75035 - Merge #15301 - Add CodeTriage badge](https://github.com/phpmyadmin/phpmyadmin/commit/1890e750355881004545f4e62f116dc45754de16)
- [f58a86aa4d - Merge branch 'QA_4_9'](https://github.com/phpmyadmin/phpmyadmin/commit/f58a86aa4d94f3c2c287117aaf596af7a5f6e247)
- [3f45d364a1 - Add ChangeLog entry for #14918](https://github.com/phpmyadmin/phpmyadmin/commit/3f45d364a147225dfecac194ceecb23279f9a90e)
- [70e6e0b660 - Fix #14918 - Use hex for the session token](https://github.com/phpmyadmin/phpmyadmin/commit/70e6e0b6601bdb091ac061b806f836af92c509e7)
- [a12012b7ae - Merge #15355 - Fix most of deprecated Jquery calls](https://github.com/phpmyadmin/phpmyadmin/commit/a12012b7ae1894b4315f9ff4dfc9e76e3cf835bb)
- [cc73250b43 - Fix #14918 - Use hex for the session token](https://github.com/phpmyadmin/phpmyadmin/commit/cc73250b439321c59eb03358c7eab9ccc462fe94)
- [6ecf6ec93e - Fixed most of deprecated Jquery calls](https://github.com/phpmyadmin/phpmyadmin/commit/6ecf6ec93e43d798d8ae56145830cf3d3566a0af)
- [bc585d97f7 - Merge branch 'QA_4_9'](https://github.com/phpmyadmin/phpmyadmin/commit/bc585d97f7b3b868c58b4c42f0bd856b263fcc89)
- [26373240cd - [FAQ] Merge #15349 - country_code is defined as NOT NULL, yet INSERT lacks a value!](https://github.com/phpmyadmin/phpmyadmin/commit/26373240cdf112bec3862f4a1c5b9dba705c6e1e)
- [e0889beb52 - Improve code and readability of _getFieldVisibilityParams](https://github.com/phpmyadmin/phpmyadmin/commit/e0889beb52e67cbbec0d610eec4d209fe2448c9f)
- [180b45f225 - Fix #15230 - Column misalignment](https://github.com/phpmyadmin/phpmyadmin/commit/180b45f22509de436d599ff9ca052cafb532600e)

## Other projects

On the packaging side I updated the Homebrew formula of phpMyAdmin from 4.8.6 to 4.9.0.1 ([homebrew-core #40809](https://github.com/Homebrew/homebrew-core/pull/40809)), added real name checking for the sign-off on phpmyadmin/scripts ([#19](https://github.com/phpmyadmin/scripts/pull/19)), fixed the urls on octokit.js ([#1401](https://github.com/octokit/octokit.js/pull/1401)) and added support for contexts in sentry-php ([#839](https://github.com/getsentry/sentry-php/pull/839)).

