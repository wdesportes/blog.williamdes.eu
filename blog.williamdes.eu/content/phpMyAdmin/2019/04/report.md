+++
title = "Report for April 2019"
date = 2019-04-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for April 2019.

<!-- more -->

In April 2019 I worked on the main repository, the website and docker, fixing issues all month. I also rewrote my github-to-mysql tool, moving all the code to a class and adding unit tests, and made it handle several pages of milestones and labels ([wizaplace/github-to-mysql #4](https://github.com/wizaplace/github-to-mysql/pull/4)).

## First week (14)

I fixed a long list of tracker issues: the missing query time and database in the console ([#15159](https://github.com/phpmyadmin/phpmyadmin/issues/15159)), uninterpreted HTML on the Settings export page ([#15119](https://github.com/phpmyadmin/phpmyadmin/issues/15119)) and import page, the input fields missing the MaxSizeForInputField check (#15036), the Export/Import tabs placement (#15152), the import of XML data with leading zeros, the generate password field hidden on the second open of the change password modal ([#15150](https://github.com/phpmyadmin/phpmyadmin/issues/15150)), the empty SQL preview on a relation ([#15010](https://github.com/phpmyadmin/phpmyadmin/issues/15010)), a table structure export that showed the rows fields ([#14334](https://github.com/phpmyadmin/phpmyadmin/issues/14334)), the edit link that stopped working after a failed insert ([#15140](https://github.com/phpmyadmin/phpmyadmin/issues/15140)) and the sticky table header staying over the dropdown menu ([#12729](https://github.com/phpmyadmin/phpmyadmin/issues/12729)). I added the DYNAMIC and COMPRESSED ROW_FORMAT values for InnoDB on MySQL 8 ([#14673](https://github.com/phpmyadmin/phpmyadmin/issues/14673)), made the monitor parameters download work on IE11 and Edge, and fixed several PHP notices (undefined index pma, designer_settings [#15141](https://github.com/phpmyadmin/phpmyadmin/issues/15141)) and a count() warning when exporting a table to XML. On the website I merged two pull-requests improving the English and fixed a missing accent on the docker side.

- [caa2035cc8 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/caa2035cc82ce3b0f887218622071230368ad6e2)
- [91f2c699a0 - Add ChangeLog entry for #15159](https://github.com/phpmyadmin/phpmyadmin/commit/91f2c699a0ea5511ae3a818ed855bf1d46607c62)
- [05c0591c2d - Fix #15159 - Missing query time and database in console](https://github.com/phpmyadmin/phpmyadmin/commit/05c0591c2d5ed4ef56429d887b11aa1462f97585)
- [ea7dbf33da - Add ChangeLog entry for #15119](https://github.com/phpmyadmin/phpmyadmin/commit/ea7dbf33daebeed86b37f96b8f625f5ca6f1e4e9)
- [9c6e2b812d - Fix #15119 - Uninterpreted HTML on Settings->Export page](https://github.com/phpmyadmin/phpmyadmin/commit/9c6e2b812d0ba76dee5e92e4bfa0fe2eef523477)
- [bccfdb1407 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/bccfdb140758effd0d9ac38ba3a4a836e6420744)
- [5413b6c9c0 - Add ChangeLog entry for #15036](https://github.com/phpmyadmin/phpmyadmin/commit/5413b6c9c009e70105a3927c0c91b47f58aeab12)
- [cfc75fd8ce - Fix #15036 - Input fields missing checks for MaxSizeForInputField](https://github.com/phpmyadmin/phpmyadmin/commit/cfc75fd8ce9daecfc3e982d8de3dd72c3b04547c)
- [a7084c2035 - Fix #15152 - [UI] Export/Import tabs placement inconsistency](https://github.com/phpmyadmin/phpmyadmin/commit/a7084c203594ef428d242cd999890b6540fba91c)
- [2609bff627 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/2609bff627afe383810249ed172d96a621f6ba4b)
- [a83947ca70 - Add ChangeLog entry for 2e0821ea](https://github.com/phpmyadmin/phpmyadmin/commit/a83947ca70a628530dfabb636d84d69122c59845)
- [2e0821ea5c - Fix import XML data with leading zeros](https://github.com/phpmyadmin/phpmyadmin/commit/2e0821ea5c7238e67a04702085320f7457204b71)
- [f911595f02 - Fixed php notice undefined index pma on ImportXml](https://github.com/phpmyadmin/phpmyadmin/commit/f911595f02cadbb77a2cb5d3c75dee4912d1a5e0)
- [1024e420e1 - Fixed php warning count(): Parameter ... on export table to XML](https://github.com/phpmyadmin/phpmyadmin/commit/1024e420e1ba00475091a862ef0290f2a47b51e6)
- [67201b5fc3 - Add ChangeLog entry for #15150 and edited entry for 038c654e (5389a26b)](https://github.com/phpmyadmin/phpmyadmin/commit/67201b5fc3a851bcad3c4305dbbb935e3c51a9c9)
- [bb5f64fe02 - Fix #15150 - Generate password hidden on second open of change password modal](https://github.com/phpmyadmin/phpmyadmin/commit/bb5f64fe0295d2582955196eb3e3aae71e0ebc3b)
- [038c654ec4 - Fixed downloading of monitor parameters for IE11 and Edge](https://github.com/phpmyadmin/phpmyadmin/commit/038c654ec493170c449a1005d19102d3be53219c)
- [914756aefc - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/914756aefc16de57b32c9c6ac934a35e81d968db)
- [cae7efe039 - Add ChangeLog entry for d109328](https://github.com/phpmyadmin/phpmyadmin/commit/cae7efe039175e1fe841aa2f9370dded310f89aa)
- [d10932821d - Fix empty success message when adding new INDEX from left panel](https://github.com/phpmyadmin/phpmyadmin/commit/d10932821dc10d3bdd246bf73001e56380b1401e)
- [c3ca45bdee - Remove sourceMappingURL from zxcvbn vendor to avoid 404 errors](https://github.com/phpmyadmin/phpmyadmin/commit/c3ca45bdeefd1117400ab8036f73abd4886081cd)
- [1e403f76d9 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/1e403f76d95f18b0edc07e8d307fc6c1cd0da223)
- [ab748e2fac - Fix some potential php notices after merge of #15040](https://github.com/phpmyadmin/phpmyadmin/commit/ab748e2fac34942857ee450f35264b01c5bce3bd)
- [76dca69460 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/76dca69460c3a2fb356d3a2821131f39a6b1a700)
- [7a8d6c2b9f - Add ChangeLog entry for #14673](https://github.com/phpmyadmin/phpmyadmin/commit/7a8d6c2b9f7dacdefc8c30b742188aa21239cca4)
- [babce812fe - Fix #14673 - innodb & MySQL 8: DYNAMIC & COMPRESSED ROW_FORMAT missing](https://github.com/phpmyadmin/phpmyadmin/commit/babce812fecfcd8ab019c94629a5f812338bc955)
- [f1335afe39 - Add ChangeLog entry for #15010](https://github.com/phpmyadmin/phpmyadmin/commit/f1335afe39fce0453b940c85429c98f3c7345cb1)
- [3d3d1a2b08 - Fix #15010 - Sql preview empty modal on tbl_relation](https://github.com/phpmyadmin/phpmyadmin/commit/3d3d1a2b0846c44bddba9d6a98a2d9f1b67bd754)
- [292d2db727 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/292d2db7272c30ea92302d5994bb96a09ad17d47)
- [fd6907097c - Add ChangeLog entry for #15140 and #14334](https://github.com/phpmyadmin/phpmyadmin/commit/fd6907097cf15f7995eb52142a52700b5e401d53)
- [fa903acfd2 - Fix #14334 - Export table structure shows rows fields](https://github.com/phpmyadmin/phpmyadmin/commit/fa903acfd21ecfddbb729665b98b68239f386b1e)
- [e989e02109 - Fix #15140 - Failing an insert, edit link does not work](https://github.com/phpmyadmin/phpmyadmin/commit/e989e021094b16d8747b71c735ad711ebe310336)
- [b6b9926a08 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/b6b9926a08a32198a8b7f391fde903bf6d69cf14)
- [caffbc3a5e - Add ChangeLog entry for #15141 and #12729](https://github.com/phpmyadmin/phpmyadmin/commit/caffbc3a5e9958513a1d6327572744a876750d8f)
- [73f16986d3 - Fix #12729 - Sticky table header over dropdown menu](https://github.com/phpmyadmin/phpmyadmin/commit/73f16986d39d8aa8adb75741ec0a985ec6a681da)
- [a80785198d - Fix #15141 - php notice Undefined index: designer_settings](https://github.com/phpmyadmin/phpmyadmin/commit/a80785198d6f2a211e7565ffc759b981a5411644)
- [7d35294fc5 - Fixed missing accent](https://github.com/phpmyadmin/docker/commit/7d35294fc583315159751950cd021127bf8ba5fe)
- [ac3ff9f289 - Merge pull request #85 from lem9/patch-5](https://github.com/phpmyadmin/website/commit/ac3ff9f289074e60e83c8de8ae149cf49678e9ce)
- [fc5a18eff8 - Merge pull request #86 from lem9/patch-6](https://github.com/phpmyadmin/website/commit/fc5a18eff8f53bec9296249de957d56521395c74)

## Second week (16)

I fixed the GIS functions on MySQL 8.0 ([#14383](https://github.com/phpmyadmin/phpmyadmin/issues/14383), [#12865](https://github.com/phpmyadmin/phpmyadmin/issues/12865)), which I also proposed as pull-request [#15149](https://github.com/phpmyadmin/phpmyadmin/pull/15149). MySQL 8.0 puts each point of a MULTIPOINT between parentheses, so I corrected the value format, and I fixed the undefined mysqlVersion index that came with the change.

- [ccc82e82b5 - MULTIPOINT now has ( and ) around value](https://github.com/phpmyadmin/phpmyadmin/commit/ccc82e82b5447f558c164552e91487b7b8d0ffbe)
- [c745aab360 - Fix php notice Undefined index: mysqlVersion](https://github.com/phpmyadmin/phpmyadmin/commit/c745aab3600ca4d9b60dda411353af4229b84070)
- [3399e5babd - Fix spatial functions](https://github.com/phpmyadmin/phpmyadmin/commit/3399e5babd7246696e5c29f1e897aa0cdc7a4a64)
- [9ed068aacb - Fix #14383 #12865 - Fix GIS functions for mysql 8.0](https://github.com/phpmyadmin/phpmyadmin/commit/9ed068aacba8744556f4f310a6c18d43768a8f3e)

## Third week (17)

I fixed a large batch of issues: uppercase table and database names ([#13178](https://github.com/phpmyadmin/phpmyadmin/issues/13178)), error reports that could not be sent because too large ([#15146](https://github.com/phpmyadmin/phpmyadmin/issues/15146)), the Processlist sort by time and full query display ([#14800](https://github.com/phpmyadmin/phpmyadmin/issues/14800), [#14833](https://github.com/phpmyadmin/phpmyadmin/issues/14833)), the import of settings ([#14527](https://github.com/phpmyadmin/phpmyadmin/issues/14527)), the designer page that failed to save ([#12900](https://github.com/phpmyadmin/phpmyadmin/issues/12900)), and the MariaDB delete versioning rows privilege that raised an undefined index notice ([#15229](https://github.com/phpmyadmin/phpmyadmin/issues/15229)). I also fixed the Enter key when inserting rows ([#14401](https://github.com/phpmyadmin/phpmyadmin/issues/14401)), the enum value kept when setting null ([#14982](https://github.com/phpmyadmin/phpmyadmin/issues/14982)), useless backquotes in the SQL preview when deleting an index ([#15205](https://github.com/phpmyadmin/phpmyadmin/issues/15205)), the password field not switching in the add user account dialog ([#15219](https://github.com/phpmyadmin/phpmyadmin/issues/15219)), a console height allowing negative values (#15038) and forms submitted multiple times on CTRL+ENTER ([#14460](https://github.com/phpmyadmin/phpmyadmin/issues/14460)). Importing an exported config on the server status monitor page was fixed too, a missing series value was creating a JavaScript error and a NaN on the Y axis. Weblate brought a lot of translations, and I had to revert, merge and re-apply two po files to get around the conflicts.

- [52e63c6974 - Add ChangeLog entry for #13178](https://github.com/phpmyadmin/phpmyadmin/commit/52e63c6974fbbf4963be6939f8ce8e1339d21de1)
- [ca3f027f7e - Fix #13178 - Issues with uppercase table and database names](https://github.com/phpmyadmin/phpmyadmin/commit/ca3f027f7e714df46865d8e8393d94ff535a957d)
- [c6d8fb4573 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/c6d8fb457390f62c4b2ed44cf7472075002c21f0)
- [14e8d5db7e - Add ChangeLog entry for #15205](https://github.com/phpmyadmin/phpmyadmin/commit/14e8d5db7e7ca88c1d30537d773b8ce68ccab369)
- [5a08e12bb6 - Fix #15205 - Useless backquotes, sql preview, delete index](https://github.com/phpmyadmin/phpmyadmin/commit/5a08e12bb6f6897b39b75ecb8f0e062f4687e78f)
- [40fc9a3abc - Improve JSDoc for PMA_confirmPreviewSQL](https://github.com/phpmyadmin/phpmyadmin/commit/40fc9a3abc8868b9267a4ee34ec25a5cdcbdb4e6)
- [947c820fef - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/947c820fef65b2b65baf4569298a00c795458e78)
- [a9f8384afe - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/phpmyadmin/commit/a9f8384afeb1e904a8b405d9f4d2e28d677e0253)
- [6d5481f01e - Add ChangeLog entry for #15146](https://github.com/phpmyadmin/phpmyadmin/commit/6d5481f01e5a1f5f0a5fd1a5349b180b1f63de62)
- [926a9f47bd - Fix #15146 - Error reports can not be sent because too large](https://github.com/phpmyadmin/phpmyadmin/commit/926a9f47bdf54c8da8b87875d55b648135d0c332)
- [ac25f56457 - Add ChangeLog entry for #14401 and #14982](https://github.com/phpmyadmin/phpmyadmin/commit/ac25f56457d85252cc8a6bd41716339e4f47ccbe)
- [2c1b669c1b - Fix #14401 - insert_rows keypress Enter behavior](https://github.com/phpmyadmin/phpmyadmin/commit/2c1b669c1bc783b54c8f76774355f833351cee79)
- [04f641612c - Fix #14982 - setting "null" keep an "enum" value](https://github.com/phpmyadmin/phpmyadmin/commit/04f641612c7326198015697a73d0e1ef8e625b30)
- [1524ec51c8 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/1524ec51c8248d857b2fc9b363fd1d1e8c2221af)
- [a8ac8f04cb - Add ChangeLog entry for #14800 and #14833](https://github.com/phpmyadmin/phpmyadmin/commit/a8ac8f04cbbd6d5c9b5d3fa7a2be25fde22856c8)
- [60564b5d92 - Fix #14800 #14833 - Sort by Time and show full query on Processlist](https://github.com/phpmyadmin/phpmyadmin/commit/60564b5d923a371cf8a15ec34d010d4574f1dfbc)
- [b502a15c94 - Add ChangeLog entry for #14908](https://github.com/phpmyadmin/phpmyadmin/commit/b502a15c94a6f91ccf56fcb26dbe57ec8fe48b75)
- [8d0dacf3f8 - Add ChangeLog entry for #14527 and 98bc51085](https://github.com/phpmyadmin/phpmyadmin/commit/8d0dacf3f8cc00fa5f79236550519f4e222c65b2)
- [2a4729c18e - Fix #14527 - Import Settings function not working](https://github.com/phpmyadmin/phpmyadmin/commit/2a4729c18ea8d04fc29db61b5c20d8d129b7708b)
- [98bc51085d - Fix uninterpreted HTML on Settings->Import (with Missing data)](https://github.com/phpmyadmin/phpmyadmin/commit/98bc51085d957bd8256c53c9f20d0014816e2f3e)
- [ec2dcf1e0b - Merge Weblate into branch 'QA_4_8' and update back kk.po and ru.po](https://github.com/phpmyadmin/phpmyadmin/commit/ec2dcf1e0b8f34447c73d88a21acfeaf530099e2)
- [0888f3ccfa - Revert update of kk.po and ru.po](https://github.com/phpmyadmin/phpmyadmin/commit/0888f3ccfa6e522795589386645cef0bf2e5d927)
- [b3df714784 - Translated using Weblate (West Flemish)](https://github.com/phpmyadmin/phpmyadmin/commit/b3df714784baab3a1825cd3360b519666b5dd6f0)
- [e72e3cc42e - Translated using Weblate (Uzbek (latin))](https://github.com/phpmyadmin/phpmyadmin/commit/e72e3cc42e020dc3abf0020d521395e93ac4d871)
- [fd55a3cb59 - Translated using Weblate (Uzbek)](https://github.com/phpmyadmin/phpmyadmin/commit/fd55a3cb59252c6d77ef21d1ec1e60e0cab9222f)
- [1f9264967f - Translated using Weblate (Urdu)](https://github.com/phpmyadmin/phpmyadmin/commit/1f9264967f81c00fa91ef7dd821f345251e173ec)
- [7b7fb0e0e0 - Translated using Weblate (Turkmen)](https://github.com/phpmyadmin/phpmyadmin/commit/7b7fb0e0e03e5bd3976431c0deca626de575da92)
- [473339cbcf - Translated using Weblate (Tamil)](https://github.com/phpmyadmin/phpmyadmin/commit/473339cbcfbca50c86e480b4e765e288e755d016)
- [c712226764 - Translated using Weblate (Persian)](https://github.com/phpmyadmin/phpmyadmin/commit/c712226764b2fd9c515b5495ec5f75af5b322371)
- [99399c1e29 - Translated using Weblate (Mongolian)](https://github.com/phpmyadmin/phpmyadmin/commit/99399c1e29eb12e4a800fe98b561d98572d1a8c7)
- [f99abf307c - Translated using Weblate (Malay)](https://github.com/phpmyadmin/phpmyadmin/commit/f99abf307cb2f755c78a2291eac49810772f1f99)
- [edd04b2a75 - Translated using Weblate (Kannada)](https://github.com/phpmyadmin/phpmyadmin/commit/edd04b2a7525e0548f330f8f69bd4ea1e1376c1e)
- [1c00b7948d - Translated using Weblate (Gujarati)](https://github.com/phpmyadmin/phpmyadmin/commit/1c00b7948df57fa12d9e5fbd9c81e78a2b3e57e8)
- [cd3be16c6d - Translated using Weblate (Georgian)](https://github.com/phpmyadmin/phpmyadmin/commit/cd3be16c6d2b4d14dbf67501b958da5e2a16dea1)
- [87ec8829e6 - Translated using Weblate (Galician)](https://github.com/phpmyadmin/phpmyadmin/commit/87ec8829e646222a5cf1b64a2705670ee504c36d)
- [2e3cfa9bfe - Translated using Weblate (Esperanto)](https://github.com/phpmyadmin/phpmyadmin/commit/2e3cfa9bfe6e225b066fd0271edd1aceb32c6ab2)
- [294c28f42a - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/phpmyadmin/commit/294c28f42a2d9c9c062215f493937bec7c0fd3dd)
- [b530b3d224 - Translated using Weblate (Danish)](https://github.com/phpmyadmin/phpmyadmin/commit/b530b3d224cd58ef360146ce2862c3e8363a11d7)
- [1c88d437c2 - Translated using Weblate (Colognian)](https://github.com/phpmyadmin/phpmyadmin/commit/1c88d437c2fd8324ef7389a11011a30326f1edc6)
- [6e63806551 - Translated using Weblate (Breton)](https://github.com/phpmyadmin/phpmyadmin/commit/6e638065512f32222fe8e9fde6c1e23946756bbe)
- [68a20481c6 - Translated using Weblate (Armenian)](https://github.com/phpmyadmin/phpmyadmin/commit/68a20481c6fab274f03ab63bbc229ef40867726e)
- [e3381b7282 - Translated using Weblate (Afrikaans)](https://github.com/phpmyadmin/phpmyadmin/commit/e3381b7282a8b467bb7922613a7222ca45a4e763)
- [96a68a9a2b - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/96a68a9a2b26db0816bf0e12e669dffb76cc30ba)
- [e453ad1320 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/e453ad132069db205c207db04f0f24f21b81de04)
- [646668b52d - Fix Unit tests for #15229 ](https://github.com/phpmyadmin/phpmyadmin/commit/646668b52d420b0be3be84b97045e3819f43f152)
- [e651d2ab4f - Translated using Weblate (West Flemish)](https://github.com/phpmyadmin/phpmyadmin/commit/e651d2ab4f7018269c14dd759adbee1bc7d500b0)
- [a8c0a3fa0e - Translated using Weblate (Uzbek (latin))](https://github.com/phpmyadmin/phpmyadmin/commit/a8c0a3fa0ee2d97039da622a2e2b9bf03e36f238)
- [a01658a820 - Translated using Weblate (Uzbek)](https://github.com/phpmyadmin/phpmyadmin/commit/a01658a820c704e21fdc098c5106997fc2f7b881)
- [dc1c2196f4 - Translated using Weblate (Urdu)](https://github.com/phpmyadmin/phpmyadmin/commit/dc1c2196f4f3da22ff42b581a5a3b80fd41bc25d)
- [146a3bdfd2 - Translated using Weblate (Turkmen)](https://github.com/phpmyadmin/phpmyadmin/commit/146a3bdfd26d95c5e63e50db8b8dd2ff5e9a6888)
- [fd8307ce3a - Translated using Weblate (Tamil)](https://github.com/phpmyadmin/phpmyadmin/commit/fd8307ce3af6e501f3991ad1d2b07612cf77b67a)
- [bc8231471c - Translated using Weblate (Persian)](https://github.com/phpmyadmin/phpmyadmin/commit/bc8231471c6006e7f361b6ed5795189248cba87c)
- [4bbc6c680b - Translated using Weblate (Mongolian)](https://github.com/phpmyadmin/phpmyadmin/commit/4bbc6c680be0ce5337087c2aca2df2954fe55124)
- [3bd72d403a - Translated using Weblate (Malay)](https://github.com/phpmyadmin/phpmyadmin/commit/3bd72d403a07985c0fa2b56bc3933bbb4992ed17)
- [921bb9a5f5 - Translated using Weblate (Kannada)](https://github.com/phpmyadmin/phpmyadmin/commit/921bb9a5f5f6f7d5076ae60626f71a6be4257b54)
- [975129f0b7 - Translated using Weblate (Gujarati)](https://github.com/phpmyadmin/phpmyadmin/commit/975129f0b73113c2c2dd2f9d7cb9928eb4dc3a8c)
- [08b28e373f - Translated using Weblate (Georgian)](https://github.com/phpmyadmin/phpmyadmin/commit/08b28e373f3a01cda5049b531464c5819617bdda)
- [b7f5984d9d - Translated using Weblate (Galician)](https://github.com/phpmyadmin/phpmyadmin/commit/b7f5984d9d85c1000fb0121357fe45a459344a54)
- [c9a4ef4ce1 - Translated using Weblate (Esperanto)](https://github.com/phpmyadmin/phpmyadmin/commit/c9a4ef4ce1dd307c6f402b6234b8f2db9f134b98)
- [ee3d47796d - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/phpmyadmin/commit/ee3d47796ddf8ce71f7d9042ab92be569c5e5070)
- [4880e240cd - Translated using Weblate (Danish)](https://github.com/phpmyadmin/phpmyadmin/commit/4880e240cdfed40448fdd4f69c853e9e61522563)
- [3e44953701 - Translated using Weblate (Colognian)](https://github.com/phpmyadmin/phpmyadmin/commit/3e449537013671f6c704063a18f8fb6ca48f615a)
- [738272c431 - Translated using Weblate (Breton)](https://github.com/phpmyadmin/phpmyadmin/commit/738272c4316b35986c7a95a6ee3438721940c9b0)
- [169d1dacab - Translated using Weblate (Armenian)](https://github.com/phpmyadmin/phpmyadmin/commit/169d1dacabd0164b3d6e00f8d31727c5bce8444f)
- [c880a48784 - Translated using Weblate (Afrikaans)](https://github.com/phpmyadmin/phpmyadmin/commit/c880a48784d975fd6e10615ce978394816d3ab45)
- [24878eb234 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/24878eb234efa5e30b80c21466a4cce1f55b5784)
- [9aa035cd5e - Add ChangeLog entry for #15229](https://github.com/phpmyadmin/phpmyadmin/commit/9aa035cd5ef1ffb2faa3f4e46c151f1ffb4997ba)
- [91c758aae4 - Fix #15229 - Notice - Undefined index: strPrivDescDelete versioning rowsTbl](https://github.com/phpmyadmin/phpmyadmin/commit/91c758aae4ec9f10fb32b0d28c395211d4654e0f)
- [e5dd0fdf8d - Add ChangeLog entry for #15228 and #12900](https://github.com/phpmyadmin/phpmyadmin/commit/e5dd0fdf8d64aa7e61e57228b94eac41a32f9a5e)
- [782d9449a2 - Fix #12900 - Designer page saving gives error](https://github.com/phpmyadmin/phpmyadmin/commit/782d9449a20daa5b8fbc7ed79910eec1a1df5806)
- [5566aa6976 - Fix #15228 - Notice - Undefined index: foreign_keys_data](https://github.com/phpmyadmin/phpmyadmin/commit/5566aa69762d98d1791eaf51e5eda526ff2652f7)
- [37bb5907e5 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/37bb5907e58b5249efbedbced1b9bf23a86207e7)
- [836cc74413 - Fix issue reported by scrutinizer](https://github.com/phpmyadmin/phpmyadmin/commit/836cc74413e789d3961e255ca9e939c0402bbbb4)
- [a4cd133778 - Add ChangeLog entry for dd299c7c](https://github.com/phpmyadmin/phpmyadmin/commit/a4cd1337785039b54222996fbfd3b482d7047a75)
- [dd299c7ceb - Fixed importing the exported config on Server status monitor page](https://github.com/phpmyadmin/phpmyadmin/commit/dd299c7ceb0268d9aca8547620cbaea43ed4e39b)
- [1343cf2b84 - Fix lint issues](https://github.com/phpmyadmin/phpmyadmin/commit/1343cf2b8416db17c5de8586cde23bed1d55dce1)
- [52632ca08e - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/52632ca08ee8357cb7a70b8a81270fee64806f31)
- [fcb406937f - Fix #14732 - Can't rename primary key with auto increment](https://github.com/phpmyadmin/phpmyadmin/commit/fcb406937fb9e86a5cc2fefd961cd855ce2c6aa9)
- [937579732c - Fix #15166 - Copy table keeps showing 'loading...' -- When no row is selected.](https://github.com/phpmyadmin/phpmyadmin/commit/937579732c819bbce6b64da8bb96c428c0922f90)
- [1d48d9c1ff - Add ChangeLog entry for #15219](https://github.com/phpmyadmin/phpmyadmin/commit/1d48d9c1ffd7981faccf8e7121f2d041494a318a)
- [adb2228039 - Fix #15219 - 'No Password' Option does not switch automatically to 'Use Text Field' in Add User Account](https://github.com/phpmyadmin/phpmyadmin/commit/adb22280399b47e98390d8292cb21fadd4d66f1a)
- [61e0c0910d - Add ChangeLog entry for #15038](https://github.com/phpmyadmin/phpmyadmin/commit/61e0c0910dcfd592eb601804b6baf3666b0e198c)
- [f9209aeb05 - Fix #15038 - Console height allowing negative values](https://github.com/phpmyadmin/phpmyadmin/commit/f9209aeb0568c3f7e47611d93590548b2a9cc227)
- [738fc3461e - Add ChangeLog entry for #14460](https://github.com/phpmyadmin/phpmyadmin/commit/738fc3461ec3733968b4a0d80f9df5b9c875f335)
- [20f141b291 - Fix #14460 - Do not submit forms multiple times on CTRL + ENTER](https://github.com/phpmyadmin/phpmyadmin/commit/20f141b29196d205999b0394512a39fb73d2c7e2)
- [7f4de0b962 - Translated using Weblate (Czech)](https://github.com/phpmyadmin/sql-parser/commit/7f4de0b96210dd708f7f8a395ce42e5fe52f7e77)
- [446fe20a56 - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/localized_docs/commit/446fe20a56e37df0a3acfb2e1748c91a2adcaa2a)

## Fourth week (18)

I fixed the commands out of sync error on stored procedures ([#14614](https://github.com/phpmyadmin/phpmyadmin/issues/14614)): it came back when a stored procedure does not return any result set, and also with `$cfg['DBG']['sqllog'] = true`. I also completed the French and English (United Kingdom) translations and updated the po files.

- [77fc2c58e9 - Fix #14614 - Commands are out of sync with $cfg['DBG']['sqllog'] = true;](https://github.com/phpmyadmin/phpmyadmin/commit/77fc2c58e902b11c21d4d02d835f3a6167f57739)
- [9178602e6c - Fix #14614 - "# 2014 - Commands out of sync; you can't run this command now" returned when stored procedure does not return any result set](https://github.com/phpmyadmin/phpmyadmin/commit/9178602e6c7537ece7afc3265b70fb854c84bfde)
- [15796f5bed - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/15796f5bed322ab93c66be59b7829fa476ecb20d)
- [97564b24ae - Translated using Weblate (English (United Kingdom))](https://github.com/phpmyadmin/phpmyadmin/commit/97564b24aed15d8398749fcb3f4f65d04c2384c1)

