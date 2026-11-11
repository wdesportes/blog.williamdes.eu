+++
title = "Report for January 2023"
date = 2023-01-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for January 2023.

<!-- more -->

In January 2023 my focus was the sql-parser 5.6.0 and 5.7.0 releases and the Debian packages.

## First week (1)

I merged [#18007](https://github.com/phpmyadmin/phpmyadmin/pull/18007) to fix the UUID columns that could not be moved, and updated the sql-parser dependency to 5.6.0. On sql-parser I released 5.6.0 after merging [#385](https://github.com/phpmyadmin/phpmyadmin/pull/385) for the lexer ambiguity on function keywords and [#397](https://github.com/phpmyadmin/phpmyadmin/pull/397) for a performance improvement on nextToken().

- [881dc9ba2c - Add a ChangeLog entry for #18006](https://github.com/phpmyadmin/phpmyadmin/commit/881dc9ba2c4c2278ba3a286943eff0008f38925c)
- [542a96359f - Merge #18007 - Fix #18006 - UUID columns can't be moved](https://github.com/phpmyadmin/phpmyadmin/commit/542a96359ff56b98389e11fe0855f92e769f8a51)
- [7645611e8d - Update sql-parser to 5.6.0](https://github.com/phpmyadmin/phpmyadmin/commit/7645611e8d15e8b8e39ffb23a887df5ff8bbeb35)
- [b163fc1e5f - Drop PHP 7.1 support](https://github.com/phpmyadmin/sql-parser/commit/b163fc1e5f06522e119932406ff4c220597427e4)
- [85369a2ef3 - Add GitHub workflow](https://github.com/phpmyadmin/sql-parser/commit/85369a2ef3ceab9435658de9e4fc37e0392ff63f)
- [e772ddd440 - Adjust .gitattributes](https://github.com/phpmyadmin/sql-parser/commit/e772ddd440eb5aa083c58637c08823a46ae436c8)
- [9d4da7a730 - Add phpbench](https://github.com/phpmyadmin/sql-parser/commit/9d4da7a730b6e96f0abc7f699338b44a2aaba09f)
- [c8a83aaece - Update baselines](https://github.com/phpmyadmin/sql-parser/commit/c8a83aaece057d0214190595992d1e69f0458c5a)
- [603a64aa77 - Always run psalm after phpstan even if phpstan fails](https://github.com/phpmyadmin/sql-parser/commit/603a64aa7765a74f7808ae9b098a8039a0019d1f)
- [7eed57aba7 - Update out files](https://github.com/phpmyadmin/sql-parser/commit/7eed57aba7fd35beec0221981745c58f852ff811)
- [4b237023d8 - Fix parser/parseSelect13 out data](https://github.com/phpmyadmin/sql-parser/commit/4b237023d88ea07188340a0295c41f528409765b)
- [dec0a22f77 - Add a CHANGELOG entry for #385](https://github.com/phpmyadmin/sql-parser/commit/dec0a22f771a76cdbabd61d1e3fcb63b7cea2010)
- [78735ddaec - Merge #385 - Lexer - Solving ambiguity on function keywords](https://github.com/phpmyadmin/sql-parser/commit/78735ddaec45d64a8fdc6906682065c077f18b5e)
- [cca5eb8b11 - Merge #394 - Testing the `contextGenerator` class](https://github.com/phpmyadmin/sql-parser/commit/cca5eb8b11d5124e35f12c7acc28456e2a119f29)
- [fd9e59f268 - Merge #397 - Performance improvement to use less the "nextToken()" function](https://github.com/phpmyadmin/sql-parser/commit/fd9e59f2681a4bf63fa1e89c5f020a496970f855)
- [021cd9f69e - Merge #403 - Fix date in CHANGELOG.md](https://github.com/phpmyadmin/sql-parser/commit/021cd9f69edccd7e6fcf1c7dbc7dc68fe6d8a375)
- [685af46509 - Prepare for the next release](https://github.com/phpmyadmin/sql-parser/commit/685af46509060b1f885d3bcb27727362423cdd3d)
- [63f2f77847 - Release 5.6.0](https://github.com/phpmyadmin/sql-parser/commit/63f2f77847586864a661ef009ae687dbdda0a9f1)
- [5d5fc5c311 - Add funding to composer.json](https://github.com/phpmyadmin/sql-parser/commit/5d5fc5c311c6b6ea7cea1c0cdcb9cd0a52a92d06)
- [9c5f4b99cd - Add FUNDING.yml to .github](https://github.com/phpmyadmin/sql-parser/commit/9c5f4b99cdec469e8178ad6c3faaa178afbe30fa)
- [f771c7fd03 - Remove CONTRIBUTING.md from the vendor bundles](https://github.com/phpmyadmin/sql-parser/commit/f771c7fd03a15ce4ec85560fed633e1ae481541d)
- [13cff23718 - Send 5.6.0-1 to unstable](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/13cff23718c0d5f6e9c8c400b35f55c8ced0c3b5)
- [760b6a9569 - Bump d/copyright years](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/760b6a95696a55d108abce698faeca7420c21f41)
- [b2d6d60fdf - Drop PHP 8.2 compat patch](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/b2d6d60fdf2a4303610cbef44a03adf59ae1fd73)
- [284fa1b53e - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/284fa1b53e5b746327addddf4dcf344ed49db384)
- [09ec1119d1 - Update upstream source from tag 'upstream/5.6.0'](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/09ec1119d1401bee6755309da33766b0ee382a09)
- [4ae9252ced - New upstream version 5.6.0](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/4ae9252ced6dab88821a957e34d390bc02dfa77f)

## Second week (2)

On sql-parser I merged [#408](https://github.com/phpmyadmin/phpmyadmin/pull/408) to implement ALTER EVENT, and [#409](https://github.com/phpmyadmin/phpmyadmin/pull/409) for the tests and keywords around it. I also merged [#352](https://github.com/phpmyadmin/phpmyadmin/pull/352) to add phpbench and drop PHP 7.1.

- [05c5217976 - Fix class comment](https://github.com/phpmyadmin/phpmyadmin/commit/05c521797652f0366ab74f8fbe3db16114f67779)
- [4f9e2f8a6c - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/4f9e2f8a6c0d00c90c6f9b76d0b7545cbe9b3dde)
- [f7d9321d02 - Install infection using shivammathur/setup-php](https://github.com/phpmyadmin/phpmyadmin/commit/f7d9321d02fa91f853ad491d808baad44a097f1d)
- [07bfdd444e - Revert "Revert Node bump in package.json"](https://github.com/phpmyadmin/phpmyadmin/commit/07bfdd444efaea59fc02642e7948a03115c15de5)
- [e6320e98e3 - Merge #352 - Add phpbench and drop PHP 7.1](https://github.com/phpmyadmin/sql-parser/commit/e6320e98e3294fa32e35d54c7c0cb0aa5483e8bc)
- [b86a801c65 - Add a CHANGELOG entry for #404](https://github.com/phpmyadmin/sql-parser/commit/b86a801c653281665ba2c722945bafb46655be10)
- [81c583a7a1 - Merge #408 - Fix #404 - Implement ALTER EVENT](https://github.com/phpmyadmin/sql-parser/commit/81c583a7a136133fea11896f6b45f75c465df038)
- [506d4ae667 - Install infection using shivammathur/setup-php](https://github.com/phpmyadmin/sql-parser/commit/506d4ae667da3eef4a3c59c40edfd8a5abe35466)
- [5d6bb40b27 - Rename Lexer variables to CamelCase](https://github.com/phpmyadmin/sql-parser/commit/5d6bb40b27229daf50637dcef2617e9b5039400b)
- [7213591996 - Merge branch 'master' into 6.0.x](https://github.com/phpmyadmin/sql-parser/commit/7213591996e00897aee5dd3b95823aceefa264ad)
- [9306568dd9 - Merge #409 - Ref #404 - Add ALTER EVENT tests and keywords without parser implementation](https://github.com/phpmyadmin/sql-parser/commit/9306568dd9ff798fb50ef38f1cf6b93ff046bd63)
- [95df5e0702 - Merge branch 'master' into 6.0.x](https://github.com/phpmyadmin/sql-parser/commit/95df5e070288ae6cf4f9a0ec1ede63acb06d290e)

## Third week (3)

I fixed a run of issues on phpmyadmin: [#17398](https://github.com/phpmyadmin/phpmyadmin/issues/17398) where clicking on a JSON column triggered an update query, and [#18019](https://github.com/phpmyadmin/phpmyadmin/issues/18019) with the ONLY_FULL_GROUP_BY SQL mode. I also added spellcheck="false" on the login and password fields, and merged [#410](https://github.com/phpmyadmin/phpmyadmin/pull/410), [#411](https://github.com/phpmyadmin/phpmyadmin/pull/411) and [#414](https://github.com/phpmyadmin/phpmyadmin/pull/414) on sql-parser.

- [04c8ec4674 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/04c8ec4674bf8f1138a74abf2a26c7bbdb90cd46)
- [725e067f6d - Fix tests after full group by changes](https://github.com/phpmyadmin/phpmyadmin/commit/725e067f6d63199f3e6dfd779f3e50baa733bb70)
- [b0b3fcf83d - Fix broken tests after UUID changes](https://github.com/phpmyadmin/phpmyadmin/commit/b0b3fcf83de3e95c6d281c9e54f9244137249af7)
- [bae55da958 - Add a ChangeLog entry for df143fd879](https://github.com/phpmyadmin/phpmyadmin/commit/bae55da958639f4fd6c2f334d4dae9d6aac381c7)
- [df143fd879 - Fix 694d846b64 - JSON parse error on upload progress](https://github.com/phpmyadmin/phpmyadmin/commit/df143fd8796b133f7bdf6bba31ef7cd782681538)
- [e6392b1b93 - Add a ChangeLog entry for #17398](https://github.com/phpmyadmin/phpmyadmin/commit/e6392b1b936befb7dbf10e8db403abc9b2e41645)
- [f0951cb50c - Merge #17976 - Fix #17398 - Fixing clicking on JSON columns triggers update query](https://github.com/phpmyadmin/phpmyadmin/commit/f0951cb50c7f5e7c021d3880ca0807f610b32d04)
- [2846b18c99 - Add a ChangeLog entry for 6d482de7b8](https://github.com/phpmyadmin/phpmyadmin/commit/2846b18c99caed62dffeb1076a6abbbc7486e17e)
- [6d482de7b8 - Add back UUID and UUID_SHORT to functions on MySQL and all MariaDB versions](https://github.com/phpmyadmin/phpmyadmin/commit/6d482de7b8fd79333f3cdce1794e3f69c24600eb)
- [7eec8c18cd - Add a ChangeLog entry for #18019](https://github.com/phpmyadmin/phpmyadmin/commit/7eec8c18cd77fbb81737539d0f371eed34a712aa)
- [305fe52d9e - Fix #18019 - Error: "Call to a member function fetchAssoc() on bool" with SQL mode ONLY_FULL_GROUP_BY](https://github.com/phpmyadmin/phpmyadmin/commit/305fe52d9e52977673ec75913e1371db3f29f729)
- [89adbcfe9b - Fix PSR-7 implementation for GET and test implementation for POST](https://github.com/phpmyadmin/phpmyadmin/commit/89adbcfe9b30e53f3802522c72ce2cefba35bddb)
- [5b5b2ba5e7 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/5b5b2ba5e70bbb53ea2585bf9b5ecedab22a60aa)
- [dba18c65cc - Fix a typo](https://github.com/phpmyadmin/phpmyadmin/commit/dba18c65cc4cf5436c92c8c8c401475b9f0dda04)
- [0963429d36 - Add a ChangeLog entry for #17229](https://github.com/phpmyadmin/phpmyadmin/commit/0963429d362aec20e197682df14d2931342f91ff)
- [6e97614bc3 - Add a ChangeLog entry for f1581cfe9b](https://github.com/phpmyadmin/phpmyadmin/commit/6e97614bc3ab28939b23fc00c15b28c9452c1861)
- [f1581cfe9b - Merge #17995 - Remove non working analyze explain button](https://github.com/phpmyadmin/phpmyadmin/commit/f1581cfe9b7f38770034dc8b9bb8faf4b6c5d121)
- [13bdc6026c - Add new files to check release excludes](https://github.com/phpmyadmin/phpmyadmin/commit/13bdc6026c7b3fc90b8356ca063a119c95e70d37)
- [e5205692bb - Remove rector-migrate-0.7.php from "vendor/thecodingmachine/safe"](https://github.com/phpmyadmin/phpmyadmin/commit/e5205692bb66513097716586da751c4d03a406ab)
- [d0fc1da432 - Add a ChangeLog entry for 2f2f7d4c92db9 and 6d42cd8017](https://github.com/phpmyadmin/phpmyadmin/commit/d0fc1da4327f69454c243b01645e1b93f1a9057b)
- [6d42cd8017 - Add `spellcheck="false"` on some login text fields to avoid data leaks to spell checking services](https://github.com/phpmyadmin/phpmyadmin/commit/6d42cd80172da0a1aef852e553406e6820e2a4f5)
- [2f2f7d4c92 - Add `spellcheck="false"` on password fields to avoid data leaks to spell checking services](https://github.com/phpmyadmin/phpmyadmin/commit/2f2f7d4c92db9796ca88966c581c05c151e7a2b2)
- [f61cfdb793 - Add a CHANGELOG entry for #413](https://github.com/phpmyadmin/sql-parser/commit/f61cfdb793236627c5d5eee1cf2f106b1128813f)
- [e743f9b3e4 - Merge #414 - Fix #413 - Adding guard checks before checking keyword](https://github.com/phpmyadmin/sql-parser/commit/e743f9b3e468c4b33e8939ba0ace4e02f9434d21)
- [dab0f43d70 - Fix a coding style issue](https://github.com/phpmyadmin/sql-parser/commit/dab0f43d70501cca6dc0e33034a8161d9b0ffed8)
- [f792ee8f00 - Update phpstan baseline](https://github.com/phpmyadmin/sql-parser/commit/f792ee8f0013b10ac02c3921535b4345b46ce337)
- [b8fc8b4fee - Add a CHANGELOG entry for #406](https://github.com/phpmyadmin/sql-parser/commit/b8fc8b4feee3cd2a14f36b4c60b087233274f188)
- [c257e210b3 - Merge #411 - Fix #406 - Fixing createStatement function's options](https://github.com/phpmyadmin/sql-parser/commit/c257e210b3c253c0e403c832ead3ed8bc58da7b7)
- [c2e984296e - Update baselines](https://github.com/phpmyadmin/sql-parser/commit/c2e984296e39ab9f68d0a024fedc2c90fda57f81)
- [4035ca8054 - Adjust phpbench expectations and remove progress mode for GitHub actions](https://github.com/phpmyadmin/sql-parser/commit/4035ca8054e7834021b7203fa611c52dac310e6e)
- [517c8606cb - Add a CHANGELOG entry for #405](https://github.com/phpmyadmin/sql-parser/commit/517c8606cba12eae4baf358acf21c4cbf5d38b69)
- [8d22e12190 - Merge #410 - Fix #405 - Fixing the alter operation table options](https://github.com/phpmyadmin/sql-parser/commit/8d22e1219061879a7896ce0bea4d5f1ec0d208f4)
- [752d2048b8 - Remove duplicate patch in d/p/series](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/752d2048b81209091fe29bf531eaa9b6383a5fab)
- [2037694ea5 - Remove dropped patch from d/p/series](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2037694ea5ab8a23325ead61d5a3869105ca40e2)
- [86a6f80551 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/86a6f80551ec62973e34cd7bdc498ab8e37fff4c)
- [569de131be - Merge branch 'debian/latest' into debian/experimental](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/569de131bededa3888a4eecbed10bf2f272ac915)
- [b2b9f48b13 - Send 4:5.1.4+dfsg1-3 to unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b2b9f48b137f6a758c29ae76ef01105c9db4fb48)
- [6ce2c256cc - Install theme.rtl.css files](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6ce2c256cc9ed944744008c62f16198940bd78d4)
- [e262b98a3a - Depend on php-sodium extension](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e262b98a3a004cab589dd4df3bc9c4b0e8b78bc9)
- [a1aae0789d - Adjust lintian-overrides](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a1aae0789dc8a0ca8d0d06b45cd48cd428e470fa)
- [32f3cee71f - Add bootstrap theme to d/rules](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/32f3cee71fa485448369039e8cbf83cd55bc02ea)
- [344fdd75e5 - Add a missing dir_to_symlink for bootstrap theme](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/344fdd75e5e33243dac8a16e4ee3583944acb255)
- [a22e0899b6 - Update autoload template to use Nyholm/Psr7 dependency](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a22e0899b612f43378ca58b8a800a0552f90c376)
- [3b60337e10 - Update composer.json to require another PSR-7 implementation](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/3b60337e10ac17e7b280f22e32c1965f76156540)
- [16c143fec8 - Run wrap-and-sort](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/16c143fec825c379cbfc5045292efbf2d9544c80)
- [277a12477a - Depend on php-nyholm-psr7](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/277a12477a61c2f5fbd79cfb45f17b4e8da15a01)
- [5d3c0b36e3 - Add a patch to enable more PSR-7 packages](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/5d3c0b36e3e5a2ee04e7b7dcc3353a4025a09351)
- [87800e57a9 - Add d/links for bootstrap theme to libjs-jquery-ui](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/87800e57a9e33e40af0fdadcbf1c8ab87498f9b8)
- [c6714a99d1 - Fix replace versionSuffix in libraries/vendor_config.php](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c6714a99d12a9f36641f5ebfd7b1340377e6b4d7)
- [0125362306 - Remove install of .css files as were-build all of them](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/0125362306a368cbed6bc9c9a3567ac63a01d0ef)
- [7c90335ea4 - Make build requirements force the versions in experimental](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/7c90335ea47e9cebc1f7ecd06e2d42d75e4d38f1)
- [ea0037843a - Remove depends on libjs-bootstrap4](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ea0037843a49f54263af5f7d588763c47a0a36ce)
- [a3d86d1969 - Revert "Exclude js/vendor/zxcvbn.js from the vendor tarball because it can not be re-built from source"](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a3d86d196967505d03790a71c5ca7c19576f4b10)
- [450ff5d30e - Revert "Exclude js/vendor/zxcvbn.js.map from the bundle"](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/450ff5d30e5637cd7d1375bc902632cd7c918e41)
- [c666510abc - Drop old js libs](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c666510abce966118bfab3a4ce57af9c5f3aef0e)
- [e85c712d4e - Add new packages to Build-Depends](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e85c712d4ea403ffe82167b499e9f0ef5693d7ab)
- [583484179c - Update autoload template](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/583484179ce934e4ff9184ba8e6db80bbe58dafb)
- [9427574a74 - Add bootstrap 5.1.3 sources](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9427574a74ef42587228b24456a0984353c0606b)
- [9783c084d4 - Update bootstrap patch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9783c084d4cf553330ff3d420af4b2bd34f5a627)
- [355ff69875 - Refresh patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/355ff69875577967f2bafd53e8d79d111f470640)
- [054a3add4e - Refresh 2FA patch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/054a3add4e5f50fe09037856aec24a1e31adcc30)
- [7baf241a27 - Update patch for PHP 8.2 string interpolation](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/7baf241a27a4c87f3670f5f0abb6854b05332acf)
- [8d330f0fae - Change branch to debian/experimental](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/8d330f0fae53c4d599738efa3ee1bfcff5b5f192)
- [bb60e4ae6b - Merge branch 'upstream' into 'debian/experimental'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/bb60e4ae6bb7567aa18eaec80ced13f379724964)
- [ce356de58d - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ce356de58da9b6d0a75af0df6f9ac184ebbad6b5)
- [ae9cbfd162 - Update lintian overrides](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ae9cbfd162a9fed3516833558329fd1db98a5dfd)
- [acabb63c60 - Improve d/rules css building documentation](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/acabb63c60973e23a8e9cd7c5f20809225238068)
- [247134cc3a - Update Standards-Version to 4.6.2](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/247134cc3a924f496f5042eb42f374ac779ed1ae)
- [9ee85e66fb - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9ee85e66fb016839eae67e69166658ee0ca97d37)
- [0605c6ad6e - Update Recommends](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/0605c6ad6ee4c3e690146fba77ccf75ab5bfda84)
- [167674e462 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/167674e462bd526738d3d66a9dacf951b8f3045b)
- [74617d3cfb - Update lintian overrides](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/74617d3cfbe3022a1876022063f451d72ab36ff0)
- [294182f59f - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/294182f59f55bf841b3c72bbab93cddcb198fc48)
- [0a8f53e848 - Add a patch for PHP 8.2 string interpolation](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/0a8f53e8486b19d94c6e641fd6763ef934699221)
- [74c025550a - Update d/README.Debian](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/74c025550a50d738a4c47c91bcbd1f331989775c)
- [094c74e2d5 - Add PHP8 support on apache2.conf](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/094c74e2d59edd772bd1a07254c4aa7f0e1a80c8)
- [61c79b9eeb - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/61c79b9eebfdb047b4fdd40c6ec0bf2b8f72f2a3)
- [446dead441 - Drop Build-Depends on php-phpmyadmin-motranslator](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/446dead44156062b1c852d3f52324b6042848167)
- [67f53c22f6 - Add missing depends on php-symfony-polyfill-php80](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/67f53c22f655f1b60b2b21240a75f2e7f4e2fca4)

## Fourth week (4)

I merged [#18026](https://github.com/phpmyadmin/phpmyadmin/pull/18026) to fix [#17365](https://github.com/phpmyadmin/phpmyadmin/issues/17365), the "regexp too big" uncaught error, and added a TEST_PATH for out of source tests. I released sql-parser 5.7.0, and on the Debian side I packaged phpmyadmin 5.2.0 for experimental and then unstable, and sent sql-parser 5.7.0-1 to unstable.

- [7ec4ea0e66 - Add TEST_PATH for out of source tests](https://github.com/phpmyadmin/phpmyadmin/commit/7ec4ea0e6603f3e02c31f0123c1611ef4a862d25)
- [826ca21e78 - Add a group for tests that require ext-xdebug and do not run well on Debian](https://github.com/phpmyadmin/phpmyadmin/commit/826ca21e78293949b6358c72f10aecd7c470750b)
- [d6b867cd95 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/d6b867cd95cffb5e8716aa42e8deac22d687cd71)
- [912e5dcf9d - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/912e5dcf9d08956a5ce1a3a65602a64d8246ea18)
- [2cbbf36e43 - Add a ChangeLog entry for #17365](https://github.com/phpmyadmin/phpmyadmin/commit/2cbbf36e436a53c9883c3db95908d69512565b69)
- [500b7b4f63 - Merge #18026 - Fix #17365 - Uncaught Error: regexp too big](https://github.com/phpmyadmin/phpmyadmin/commit/500b7b4f63c6dda6a68e059e44888986efefc930)
- [b5985fed01 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/b5985fed019d1b6a1c12b106159a539b25d0a0eb)
- [2d3ad7dee4 - Prepare for the next release](https://github.com/phpmyadmin/sql-parser/commit/2d3ad7dee48803f41833429a48eef34524dc96cc)
- [0f5895aab2 - Release 5.7.0](https://github.com/phpmyadmin/sql-parser/commit/0f5895aab2b6002d00b6831b60983523dea30bff)
- [aeb540cc32 - Send 4:5.2.0+dfsg1-2 to unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/aeb540cc32e1b2d0e36b0f1ffc3573c50bad3ab8)
- [b8b26bd656 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b8b26bd6561a7d4884167665941a3b7640d3361f)
- [50ec7564a4 - Add a missing test (testCheckConfigSource) to a the TEST_PATH patch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/50ec7564a47547b2103a2187723a9fa995d4b18a)
- [36f7216636 - Send 4:5.2.0+dfsg1-2 to unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/36f7216636ce5f79299e17bc0f93a7b87ad9db0f)
- [f8ad8ea00d - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f8ad8ea00da2721ff81b8e0fb76726bfbd242630)
- [764955aed6 - Revert "Remove "Restrictions: allow-stderr" on d/t/control"](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/764955aed68c0ecf87c544cc7ab4517beaa91c9a)
- [f08cd8d3af - Merge remote-tracking branch 'origin/debian/latest' into debian/latest](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f08cd8d3afc60aec6a659552b3e52206da2fe72e)
- [9a7edd8b48 - Remove "Restrictions: allow-stderr" on d/t/control](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9a7edd8b484390af0770421259d40ea31fb3ba7f)
- [9434596819 - Run wrap-and-sort](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/943459681914896e575dda2ce6ee9e7a84facd67)
- [966ac74cb6 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/966ac74cb668c425812b6fd79b7da0f60b0d97fd)
- [8b9ec61357 - Revert "Change branch to debian/experimental"](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/8b9ec6135799303ff7ef4bea0b9e40caa4260ad8)
- [715f4913bd - Revert "Update autoload template to use Nyholm/Psr7 dependency"](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/715f4913bd836d76bcfde9e6107be3cccb629947)
- [e4f4e61761 - Depend on php-slim-psr7 instead of php-nyholm-psr7](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e4f4e61761eea32e086e3f7193145b5c271a34eb)
- [8ca644489b - Refresh a patch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/8ca644489bae674e4c86135510c8a6d8769fecba)
- [0dd7b273b7 - Forward some patches upstream](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/0dd7b273b7414686ef9299b0202cd30a3e2ae2b3)
- [1d0b77f2ec - Drop PSR-7 patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/1d0b77f2ec8e60f7afdc752e0fe48f94d34c4752)
- [45e465e51f - Send 4:5.2.0+dfsg1-1 to experimental](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/45e465e51fca84302fd2e694939f65fbb431e5cd)
- [6f350ba73c - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6f350ba73ce397f104da3deec94a21f92b4a3131)
- [465c572512 - Re-build the bootstrap.bundle.min.js file](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/465c572512eaaa603781f7c235e027dfead91ac3)
- [5cd1b36d4f - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/5cd1b36d4fc0eedb7653f6d345c15270d90ad43c)
- [e5edac132c - Remove d/links that pointed to removed libjs-bootstrap4](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e5edac132c4c086daa5364ab5206438c3756ac6a)
- [e4ff2ceae3 - Fix postinst or postrm errors breaking apt procedures](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e4ff2ceae3be5c45d09d7ad6a9323fc17dce9b70)
- [308c0fa9cd - Send 4.0.1-2 to unstable](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/308c0fa9cd5268fe6c29d2bb857a38d1835cf655)
- [189048a7fc - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/189048a7fcc2e6fe9d934bc451661179e8c7b892)
- [4186a378e8 - Update Standards-Version to 4.6.2](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/4186a378e8225f4dffc62eb1f744982df1d69987)
- [132505fde0 - Send 5.7.0-1 to unstable](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/132505fde013c5558676c492d354445fbc96050c)
- [23146b8cf6 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/23146b8cf610531cce04903f19760abf30bec454)
- [2868ec7fc7 - Update upstream source from tag 'upstream/5.7.0'](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/2868ec7fc7a9e7675f5293b29e0c8e1db91f2331)
- [05f6581d9d - New upstream version 5.7.0](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/05f6581d9daa1d18504d654e1aaccf618216bb40)
- [e1757710cb - Send 3.0.1-2 to unstable](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/e1757710cb48e1f5aa0a2ac76d23de25b8092e3a)
- [1e8c77e16c - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/1e8c77e16c2448d079dc2ba3d62a469a14b7ce9d)
- [358c8837ee - Add DEP-8 test names](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/358c8837ee42fa69106fb5f3f7e787129e3e2a0d)
- [a8055a6679 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/a8055a6679d3161583010d92a5ec0a0da4b102f8)
- [08594e5388 - Revert "Switch branch to debian/experimental"](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/08594e53886db2786f0f5dadfa26ca507370567c)
- [b01c2113ba - Merge branch 'debian/experimental' into debian/latest](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/b01c2113baf39ff9f210f8a12ad20daacc51a179)
- [8b67793620 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/8b677936201742c5e1f308b58da6cfe4b5d37804)
- [fb23c8f4b5 - Update Standards-Version to 4.6.2](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/fb23c8f4b58e36427c23d92a120dacdc5bc4e2eb)
- [2ad4e6c8b0 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/2ad4e6c8b0680befd7e2f3cb9b89fb9bcf345421)

## Fifth week (5)

On the Debian side I added a d/pkg-php-tools-overrides to force the PHP 8.0 polyfill dependency on phpmyadmin and sql-parser, and sent sql-parser 5.7.0-2 to unstable.

- [ae1e6dadbc - Merge #18054 - Remove quotes (typo)](https://github.com/phpmyadmin/phpmyadmin/commit/ae1e6dadbce86928a5398b8d0a6bb8088a5d9337)
- [97edddf1ce - Add TEST_PATH for out of source tests](https://github.com/phpmyadmin/phpmyadmin/commit/97edddf1ce79766c568bac489f71e1dda5d08cf4)
- [e11c385d35 - Add TEST_PATH for out of source tests](https://github.com/phpmyadmin/phpmyadmin/commit/e11c385d359ba2c3ed045b3af6f9a155efd450e4)
- [94fdfc6ecb - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/94fdfc6ecbd6e3bb9a596dce3199388cd4f69392)
- [aaa6a4acd3 - Add a d/pkg-php-tools-overrides to force the PHP 8.0 polyfill dep](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/aaa6a4acd3375a4044ec5838e5f1c1ec85d22761)
- [5cf661e0ba - Send 5.7.0-2 to unstable](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/5cf661e0ba48b79c50747b4b31b909c767c01c84)
- [f40caeb59c - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/f40caeb59c9bc311aee4645c148b9195fe566d4d)
- [57a7e71455 - Remove php-symfony-polyfill-php80 from Depends on d/t/control](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/57a7e714553c158851e3e3c6e553e7d8a85c8245)
- [048d6023fd - Add a d/pkg-php-tools-overrides to force the PHP 8.0 polyfill dependency](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/048d6023fd8a209bc1fe168d58f07b097f4d8573)

## Sixth week (52)

I upgraded the docker image to PHP 8.1 ([#393](https://github.com/phpmyadmin/phpmyadmin/pull/393)) and added a one second reservation to allow the interrupt shutdown code to render.

- [9eec5d8be8 - Add a reservation of 1 second to allow interrupt shutdown code to render](https://github.com/phpmyadmin/phpmyadmin/commit/9eec5d8be874fa53e97f9975694c035c351f940e)
- [d1f327e462 - Fix #393 - Upgrade the image to PHP 8.1](https://github.com/phpmyadmin/docker/commit/d1f327e4627ed01454438844a2c96f075bf2f1e8)

