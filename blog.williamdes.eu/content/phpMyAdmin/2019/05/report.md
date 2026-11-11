+++
title = "Report for May 2019"
date = 2019-05-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for May 2019.

<!-- more -->

In May 2019 I worked on the main repository, sql-parser, docker and the error reporting server. On the side I fixed the time type handling in node-mysql2, '00:00:00' is now returned as a string ([#968](https://github.com/sidorares/node-mysql2/pull/968)), and the JWT expiration on octokit/app.js ([#33](https://github.com/octokit/app.js/pull/33)).

## First week (18)

I fixed a lot of small issues: the authentication failure page that did not consider SignonCookieParams ([#14412](https://github.com/phpmyadmin/phpmyadmin/issues/14412), with a new test for setCookieParams), the unexpected behaviour of the Settings reset button (#15037), the multiple errors printed on the Settings page (#15043) and a JSON response shown when returning back to a Settings form with errors ([#15240](https://github.com/phpmyadmin/phpmyadmin/issues/15240)). I also fixed the JavaScript error when editing a JSON data type column ([#14301](https://github.com/phpmyadmin/phpmyadmin/issues/14301)), a TypeError on textContent ([#15239](https://github.com/phpmyadmin/phpmyadmin/issues/15239)), the password copy when copying a user on Percona Server 5.7 ([#13726](https://github.com/phpmyadmin/phpmyadmin/issues/13726)), the privileges of procedures not shown in 4.8.5 ([#15238](https://github.com/phpmyadmin/phpmyadmin/issues/15238)) and the Settings tab not marked as active on the 2FA page (#15157). The error reports themselves were fixed too: the notices when reporting errors are gone ([#14992](https://github.com/phpmyadmin/phpmyadmin/issues/14992)), the current web page url and the real JavaScript file name are reported again, all JS files used to be reported as index.php, and reports too large to be sent are truncated like the PHP side does ([#15146](https://github.com/phpmyadmin/phpmyadmin/issues/15146)). I back-ported the MySQL 8.0 GIS fix ([#14383](https://github.com/phpmyadmin/phpmyadmin/issues/14383), [#12865](https://github.com/phpmyadmin/phpmyadmin/issues/12865)) and the stored procedure fix ([#14614](https://github.com/phpmyadmin/phpmyadmin/issues/14614)) to the 4.8 branch. On the error reporting server I updated the README, the .gitignore and the configuration setup guide ([#182](https://github.com/phpmyadmin/phpmyadmin/pull/182)).

- [b5245272db - Use ::class for AuthenticationSignon test](https://github.com/phpmyadmin/phpmyadmin/commit/b5245272db3ae66a4aca3b7ee7105bb857424d22)
- [1c55346cdb - Add a test for setCookieParams](https://github.com/phpmyadmin/phpmyadmin/commit/1c55346cdb7551fa5d7ae8216a915a9c04751813)
- [47c3f131b4 - Fix #14412 - AuthenticationSignon.php's showFailure function does not consider SignonCookieParams](https://github.com/phpmyadmin/phpmyadmin/commit/47c3f131b405932a0794d2082544fe23900f3b23)
- [175133d47b - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/175133d47b24662a9851a64ebcd39be520602db1)
- [20227b058d - Add ChangeLog entry for #15157](https://github.com/phpmyadmin/phpmyadmin/commit/20227b058dcbcdc89d0f1933ecdc25c65fa73df3)
- [97ab2953a9 - Fixes #15157 - 'Settings' not marked as active when browsing 2FA settings](https://github.com/phpmyadmin/phpmyadmin/commit/97ab2953a942e30aba3893f81aee9a13a0b9e0fa)
- [62ad886718 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/62ad886718504dbb55e2eb06d432104298fdd9e9)
- [14ddb9a430 - Add ChangeLog entry for #15240 #15043 and #15037](https://github.com/phpmyadmin/phpmyadmin/commit/14ddb9a430e1027d4a5494fd10b8e3eb6da181e1)
- [191a81c9b6 - Fix #15037 - Unexpected behavior of reset button](https://github.com/phpmyadmin/phpmyadmin/commit/191a81c9b64044747017cb0dab1b8159d5db0585)
- [8e20d8cf25 - Fix #15043 - Multiple errors printing on Settings page](https://github.com/phpmyadmin/phpmyadmin/commit/8e20d8cf25ac568ee1b74072a94b4bcb493791cf)
- [6cc7b0f170 - Fix #15240 - Apply a Settings form with errors shows a JSON response after using return back](https://github.com/phpmyadmin/phpmyadmin/commit/6cc7b0f1706aa938efd376e84950bfe5d327e7b3)
- [2ec96f829c - Use [] instead of array()](https://github.com/phpmyadmin/phpmyadmin/commit/2ec96f829c2adc287e5034b830009ad521e6a24d)
- [b851f9d1fc - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/b851f9d1fc20d75e3f08208214e63fb21f81c5a7)
- [67c647eb95 - Add ChangeLog entry for #14301](https://github.com/phpmyadmin/phpmyadmin/commit/67c647eb953475b421688ded66fd9d45583daadc)
- [821dce6c80 - Fix #14301 - Javascript error when editing a JSON data type column](https://github.com/phpmyadmin/phpmyadmin/commit/821dce6c804ab01239eb12bf5dd35c9ca181e454)
- [c3ed3852bc - Add ChangeLog entry for #15239](https://github.com/phpmyadmin/phpmyadmin/commit/c3ed3852bcf80a3e8f0ed6c8733c7e8cf6d3cb77)
- [69e7e59d9b - Fix #15239 - TypeError - Cannot read property 'textContent' of undefined](https://github.com/phpmyadmin/phpmyadmin/commit/69e7e59d9b5821ae1c772a9e901ed0779ed8a02c)
- [42f690455c - Add ChangeLog entry for #13726](https://github.com/phpmyadmin/phpmyadmin/commit/42f690455cebcac49fbef037b0fc95114f093f02)
- [3027f0ef49 - Fix #13726 - Can not copy user on Percona Server 5.7 (password copy)](https://github.com/phpmyadmin/phpmyadmin/commit/3027f0ef493e39c8a7a82c6be7cc49331fb0841a)
- [1f0e34ad07 - Add ; at the end of SET `old_passwords`](https://github.com/phpmyadmin/phpmyadmin/commit/1f0e34ad07c9f54954c55b06a2cebd3f752f4a85)
- [49874c4e28 - Fix #13726 - Can not copy user on Percona Server 5.7](https://github.com/phpmyadmin/phpmyadmin/commit/49874c4e2830d98f119a8d04b4149af6869b5a42)
- [bb66711c6b - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/bb66711c6b9c06d749f4ff17201751f0240590cb)
- [8f7a917f11 - Fix #15237 - [UI] Alignment on login form since merge or #15178](https://github.com/phpmyadmin/phpmyadmin/commit/8f7a917f118b4ffeb42ac17c1415f8173b2a3416)
- [c0d56fa54c - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/c0d56fa54c1825c8a8bf2d99b8012dee8eb7ae73)
- [d6180da08c - Add ChangeLog entry for #15238](https://github.com/phpmyadmin/phpmyadmin/commit/d6180da08c6f1bc342bba311e596a3ecfd9d4f8d)
- [d70d9ecef1 - Fix #15238 - phpMyAdmin 4.8.5 doesn't show privileges of procedures](https://github.com/phpmyadmin/phpmyadmin/commit/d70d9ecef18a7b473b594dff326990091a0dcb29)
- [c94aec8695 - Fix coding standard warning and removed typehint](https://github.com/phpmyadmin/phpmyadmin/commit/c94aec86953f861f19720245f7f9a3d812232f6b)
- [0bdf3486f3 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/0bdf3486f37228cc01ef7090dff683dd98b93e76)
- [07389d12aa - Fixed error reporting (current web page url, JS file name sanitization)](https://github.com/phpmyadmin/phpmyadmin/commit/07389d12aa52d147b4dc37c8fef4dceb3bd0f5c3)
- [a0d091e1f8 - Add test for sanitizeUrl and improve testGetForm with real data ](https://github.com/phpmyadmin/phpmyadmin/commit/a0d091e1f86c858b00a686572a7671fa095b3c3a)
- [fbd89fb882 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/fbd89fb882715cdd08cb24c67a6c8470e1c6285f)
- [a4714b168d - Add ChangeLog entry for #15059 and #14614](https://github.com/phpmyadmin/phpmyadmin/commit/a4714b168d61d486442b5fd0f20f4e61b790243c)
- [5e378298e1 - Add ChangeLog entry for #14383 and #12865](https://github.com/phpmyadmin/phpmyadmin/commit/5e378298e1c95fd3973b512001bd47fa3b97d5f8)
- [89f8b16dcd - Fix #14383 #12865 - Fix GIS functions for mysql 8.0](https://github.com/phpmyadmin/phpmyadmin/commit/89f8b16dcdb007a55586a0bbf26e732d01d4cd5c)
- [e39ae0f989 - Fix #14614 - "# 2014 - Commands out of sync; you can't run this command now" returned when stored procedure does not return any result set](https://github.com/phpmyadmin/phpmyadmin/commit/e39ae0f989f25a812e1ac441ddbd292ccc598e48)
- [8b7db3bd5b - Fix #15059 - Server charset hardcoded in index.php](https://github.com/phpmyadmin/phpmyadmin/commit/8b7db3bd5b6ab93e7fd31125d2d113021bd803fc)
- [4909352c88 - Fix #14992 - Fixed php notices when reporting errors](https://github.com/phpmyadmin/phpmyadmin/commit/4909352c8840399fbfd4137796f5cc1890971be8)
- [3989a1ffe2 - Fix #15146 - Error reports can not be sent because too large](https://github.com/phpmyadmin/phpmyadmin/commit/3989a1ffe22c35f0a825c38d37bd0f38def4ec85)
- [40cc2dc813 - Fix @var comments to match the phpdoc reference](https://github.com/phpmyadmin/phpmyadmin/commit/40cc2dc813468032c12343bb07de1ccaff1da5c1)
- [770e28aaf2 - Updated README.md and .gitignore](https://github.com/phpmyadmin/error-reporting-server/commit/770e28aaf2703dfbba427737bd5dee23c48b1a1b)
- [5b19ce658f - #182 updated configuration setup guide in readme](https://github.com/phpmyadmin/error-reporting-server/commit/5b19ce658fdf5a977a4896b64206d4cbe7a38901)

## Second week (19)

I added auto-increment support for ROCKSDB and fixed the export of all geometry objects as hex, including in ODS and ODT ([#14588](https://github.com/phpmyadmin/phpmyadmin/issues/14588)). I also fixed the designer export, which now uses POST instead of GET, an undefined index when a dialog is requested, and the SQL queries returning more than -1 affected lines that were not shown as errors ([#15251](https://github.com/phpmyadmin/phpmyadmin/issues/15251)).

- [65b619c5a8 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/65b619c5a8833091a6ca65627c812d0bb570e20d)
- [4b2a957123 - Add ChangeLog entry for 47bd88dff](https://github.com/phpmyadmin/phpmyadmin/commit/4b2a95712355d9a367f33f31fc4980aa116017ff)
- [47bd88dffa - Add support for auto-increment on ROCKSDB](https://github.com/phpmyadmin/phpmyadmin/commit/47bd88dffaa8a5e99bec8c6fbfe022b053c26bfd)
- [609f9fd871 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/609f9fd871a5d0bfebbfd6d7bfd4e2169acbfdae)
- [42d36a75f2 - Use exit; instead of exit(); because exit; is most common in codebase](https://github.com/phpmyadmin/phpmyadmin/commit/42d36a75f21b2733ee2907582a59c2043d8bbbd7)
- [450fdab3d0 - Fix export on designer page (use POST instead of GET)](https://github.com/phpmyadmin/phpmyadmin/commit/450fdab3d092fb57687f2d1661d9b805cb1f57f5)
- [31ab2cb4e8 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/31ab2cb4e8531e164377475b25ed9d41569a27ad)
- [3500da154f - Fix undefined index dialog](https://github.com/phpmyadmin/phpmyadmin/commit/3500da154f43b45b4220dc9d407ce5cd4532f887)
- [0b9aad74e4 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/0b9aad74e4251f9b96228cff451b3558d164a76a)
- [3e3a5ce7e2 - Fix failing tests for #14588](https://github.com/phpmyadmin/phpmyadmin/commit/3e3a5ce7e24954f2f979e4b46b84f6d15de20a98)
- [d19bc53626 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/d19bc53626900018c0eeeba01c501d1d155e0c4b)
- [335ae4fe13 - Fix #14588 - export all geometry objects as hex](https://github.com/phpmyadmin/phpmyadmin/commit/335ae4fe13eb264902dfda24a4e4588d38dfe883)
- [b50a85bb04 - Fix #14588 - export all geometry objects as hex (ODS, ODT)](https://github.com/phpmyadmin/phpmyadmin/commit/b50a85bb040f1e3665ddedbb210fedf26056e110)
- [928febd9a3 - Add ChangeLog entry for #14588](https://github.com/phpmyadmin/phpmyadmin/commit/928febd9a3a879f6c481aed69ba2f9c9dd145539)
- [7f454ac590 - Fix #14588 - export all geometry objects as hex](https://github.com/phpmyadmin/phpmyadmin/commit/7f454ac5908e9fb6eb5c90e3a22c4da38b5266d3)
- [bd1a48b3aa - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/bd1a48b3aa99ace35225901c6627d66ad25b5b6e)
- [7233a887da - Fix #15251 - SQL queries > affected lines > -1 > does not show as error](https://github.com/phpmyadmin/phpmyadmin/commit/7233a887da7fb2b5439ba17562bcafbbc4ddba0f)

## Third week (20)

I fixed the column options that were ignored for GENERATED/VIRTUAL/STORED columns ([#13854](https://github.com/phpmyadmin/phpmyadmin/issues/13854)) and added support for virtual columns on PerconaDB. I also fixed the key block size formatting, the Filter method on the server variables page ([#15174](https://github.com/phpmyadmin/phpmyadmin/issues/15174)), the "Propose table structure" entry, now added on MariaDB and removed on MySQL 8.0 ([#14621](https://github.com/phpmyadmin/phpmyadmin/issues/14621)), the database tree list when DisableIS is used ([#14252](https://github.com/phpmyadmin/phpmyadmin/issues/14252), proposed as pull-request [#15269](https://github.com/phpmyadmin/phpmyadmin/pull/15269)) and the missing partitioning on the structure page ([#15276](https://github.com/phpmyadmin/phpmyadmin/issues/15276)).

- [073169f6f3 - Fix key block size (sprintf)](https://github.com/phpmyadmin/phpmyadmin/commit/073169f6f39b083ea19ca6ae365cf5d641c46e92)
- [de4bc0751b - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/de4bc0751b858464d2be14090478e078ef3dc35f)
- [dceac36518 - Add ChangeLog entry for #13854 and 966902b7a5](https://github.com/phpmyadmin/phpmyadmin/commit/dceac36518ce80bdc387b368d7b031e550b03339)
- [d0cb22a819 - Fix #13854 - Column options are ignored for GENERATED/VIRTUAL/STORED columns ](https://github.com/phpmyadmin/phpmyadmin/commit/d0cb22a819879ada8f078c2fdad353e56abbed84)
- [966902b7a5 - Add support for virtual columns on PerconaDB](https://github.com/phpmyadmin/phpmyadmin/commit/966902b7a546adcb71b8eb88ea9c096ede299bde)
- [ae39ea5cbd - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/ae39ea5cbdf4e936667f77190b5a29e9f8a045f4)
- [35fcea7df6 - Fix #14621 - add "Propose table structure" on MariaDB](https://github.com/phpmyadmin/phpmyadmin/commit/35fcea7df661de9af9e47c980b8480c59d08d94a)
- [e18f697f27 - Add ChangeLog entry for #14621](https://github.com/phpmyadmin/phpmyadmin/commit/e18f697f273c8cbbecb3d8ece415d12434415638)
- [1895900e63 - Fix #14621 - remove "Propose table structure" on MySQL 8.0](https://github.com/phpmyadmin/phpmyadmin/commit/1895900e633e4e91fd2b29eb019dbffce886fd05)
- [acfdc0f41a - Add ChangeLog entry for #15174](https://github.com/phpmyadmin/phpmyadmin/commit/acfdc0f41a080e65742922d024ce18227e74b626)
- [8ccb854c5e - Fix #15174 - Improve Filter method in server variables page](https://github.com/phpmyadmin/phpmyadmin/commit/8ccb854c5e22dec78c650b9c56f7a921ca6bb7f9)
- [7b3bfe5c91 - Fix lint error "elseif"](https://github.com/phpmyadmin/phpmyadmin/commit/7b3bfe5c915db98710a13a1c1e0fd02d9b6d7df5)
- [24c1481cac - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/24c1481cac2b2f7accce63c2ef6b75692770883d)
- [cf55db06e2 - Add ChangeLog entry for #14252](https://github.com/phpmyadmin/phpmyadmin/commit/cf55db06e23e93bdd9c4eda08c01ce2ae7aeb80e)
- [8287ab2ba3 - Fix #14252 - DisableIS and database tree list (refresh db list)](https://github.com/phpmyadmin/phpmyadmin/commit/8287ab2ba38a40b16e7dd816777a6e9c58d80524)
- [b7bba700f1 - Add ChangeLog entry for #15276](https://github.com/phpmyadmin/phpmyadmin/commit/b7bba700f1f4472b5b67965274da0f74176b287b)
- [09d20e8c8d - Fix #15276 - Partitioning is missing in Structure page UI](https://github.com/phpmyadmin/phpmyadmin/commit/09d20e8c8d89618a7865b7b7af6a7f76acf3aa6a)
- [6464344618 - Fix #14252 - DisableIS and database tree list (refresh db list)](https://github.com/phpmyadmin/phpmyadmin/commit/64643446183c89bd9c619a6d2a16641655599af7)

## Fourth week (21)

I fixed the incorrect display of the charset column, the `<dfn title=` markup was shown as text ([#15262](https://github.com/phpmyadmin/phpmyadmin/issues/15262)), and merged two docker pull-requests, one to remove the .dockerignore file and one to clean unused files.

- [c1186dcdba - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/c1186dcdbaa3e24de9ff10134027b78ed04cdb0f)
- [3002944e24 - Add ChangeLog entry for #15262](https://github.com/phpmyadmin/phpmyadmin/commit/3002944e2474151491ea47765254bb19d4aaee38)
- [be99ab3a1a - Fix #15262 - Incorrect display of charset column : <dfn title=](https://github.com/phpmyadmin/phpmyadmin/commit/be99ab3a1ac830eab9ae7e03423e8ef763ea56a4)
- [33fc40f4a3 - Merge pull-request #222 (remove .dockerignore)](https://github.com/phpmyadmin/docker/commit/33fc40f4a3e75164258139d67dbcce8841338159)
- [219e173c5e - Merge pull-request #225 (clean unused files)](https://github.com/phpmyadmin/docker/commit/219e173c5ec2ac68be2297c8cfb2a0993bb64649)

## Fifth week (22)

I fixed the collation changes: an empty input is now checked ([#14987](https://github.com/phpmyadmin/phpmyadmin/issues/14987)), the operations page uses POST instead of REQUEST, and phpMyAdmin no longer tries to change the collation on views when changing all tables ([#15283](https://github.com/phpmyadmin/phpmyadmin/issues/15283)). I also fixed the auto_increment field that was too small ([#15287](https://github.com/phpmyadmin/phpmyadmin/issues/15287)) and the logo link for internal links, with the documentation updated (#15041). On sql-parser I reverted most of a cleanup I did not want in that branch: the new array syntax, the strict mode on PHP files and the bump to PHP 7.1. I also removed the coding-standard package, downgraded phpcs from 3.4 to 2.9.x and fixed the CLI test.

- [62d169258e - Fix #14987 - Add check for empty input to change_collation](https://github.com/phpmyadmin/phpmyadmin/commit/62d169258e10593387635846342659223913b3f7)
- [6f534067cc - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/6f534067cc80b8c7649bc27ac2a679c1fdf807d1)
- [d198598b93 - Fix class name](https://github.com/phpmyadmin/phpmyadmin/commit/d198598b93e30f17f051e25988b9a0fba8f56e27)
- [2d4c330b0f - Add ChangeLog entry for #15283](https://github.com/phpmyadmin/phpmyadmin/commit/2d4c330b0fd8d9fdcb696e5b621609c7cd863f02)
- [6d59e25039 - Use _POST instead of _REQUEST for changing collations in Operations](https://github.com/phpmyadmin/phpmyadmin/commit/6d59e250391feae3d2b3e1890f275ba00f55bcc4)
- [fd7f2397d3 - Fix #15283 - phpMyAdmin tries to change collation on Views when changing collation on all tables/fields](https://github.com/phpmyadmin/phpmyadmin/commit/fd7f2397d36fdcbae7123ef078c536e8e197ffc4)
- [9d586fc539 - #15041 - Fix logo link for internal links](https://github.com/phpmyadmin/phpmyadmin/commit/9d586fc539aacd19399df867e9136e7cce250157)
- [2f2c35c0c2 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/2f2c35c0c2bbcf11763fb9d3c3a6e8014f36faff)
- [5d40d309cd - Use spaces instead of a tab for DCO](https://github.com/phpmyadmin/phpmyadmin/commit/5d40d309cd5134f740f4e584c70b86f01c8d1dc5)
- [761a1f623b - Fix #15041 - Update documentation for NavigationLogoLink](https://github.com/phpmyadmin/phpmyadmin/commit/761a1f623b7584a99aacf917858fa9875e1f4168)
- [e723e34e84 - Add ChangeLog entry for #15287](https://github.com/phpmyadmin/phpmyadmin/commit/e723e34e842f03051a19cf9d4665346b2a1f5c06)
- [9393db41e7 - Fix #15287 - Fix auto_increment field is too small](https://github.com/phpmyadmin/phpmyadmin/commit/9393db41e73ed4416d3891bd24c39be3e0c1c533)
- [6bceb49d02 - Change DCO examples to use real world ones](https://github.com/phpmyadmin/phpmyadmin/commit/6bceb49d02defa91336c217b12833e94be20bc12)
- [faebd4d732 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/faebd4d732c77c0ad42937ab53e08f8c64a59088)
- [930444b7bb - Merge #248 'fix-typo-changelog' into QA](https://github.com/phpmyadmin/sql-parser/commit/930444b7bbd3e7ab00ab6c8823875f00ea8039b0)
- [ad831332f9 - Fix CLITest](https://github.com/phpmyadmin/sql-parser/commit/ad831332f9a236bf966f40272e126ab89cc8d29b)
- [92e97d6234 - revert usage of new array syntax []](https://github.com/phpmyadmin/sql-parser/commit/92e97d6234645e65bfafcf4b53d98838e57f2d44)
- [bb6a2b0435 - Downgrade phpcs from 3.4 to to 2.9.x](https://github.com/phpmyadmin/sql-parser/commit/bb6a2b0435ad64c02bd26768f0fddddd2fb27ffe)
- [82cfdff6e6 - Edit CHANGELOG.md](https://github.com/phpmyadmin/sql-parser/commit/82cfdff6e6166cbcca797075c1895cad2e403a24)
- [a5b955658e - Revert "Enable strict mode on PHP files"](https://github.com/phpmyadmin/sql-parser/commit/a5b955658e642652e7b5fc4ae368a6f74ef85411)
- [b988a6ae83 - remove phpmyadmin/coding-standard and add squizlabs/php_codesniffer](https://github.com/phpmyadmin/sql-parser/commit/b988a6ae833e0f01627f57d6b48a2cdfeaebc5e1)
- [930a860bc7 - revert of new array syntax](https://github.com/phpmyadmin/sql-parser/commit/930a860bc7f0684c45babd012070f88a9505d427)
- [5d5089a259 - Revert array syntax](https://github.com/phpmyadmin/sql-parser/commit/5d5089a259d0195c4a1e4aa3588c31c839954067)
- [724b2330dc - Partial revert "Bump minimum version to PHP 7.1"](https://github.com/phpmyadmin/sql-parser/commit/724b2330dc4cb6247aa1649cc1f49fce496f2e3c)

