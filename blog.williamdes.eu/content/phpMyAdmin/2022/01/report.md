+++
title = "Report for January 2022"
date = 2022-01-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for January 2022.

<!-- more -->

In January 2022 my focus was PHP 8.1 compatibility and the Debian packaging.

## First week (1)

I worked on PHP 8.1 compatibility: I bumped Twig and tcpdf, switched PHP 8.1 to a normal tested version on the CI and added a patch to the Debian package of sql-parser for it. On the Debian side I also sent tcpdf 6.4.4+dfsg1-1 to unstable.

- [c294e5359a - Update psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/c294e5359aed4ecd9cb1170b5cd3cd6993de89a2)
- [76113e8f69 - Merge branch 'origin/QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/76113e8f69c859f6ceaafcbd4e39597f626c12de)
- [fca3dfa592 - Require Twig 3.3.5 for PHP 8.1 compatibility](https://github.com/phpmyadmin/phpmyadmin/commit/fca3dfa5920cfb913a003f77d418107c2229b4b7)
- [666f0d6a27 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/666f0d6a274919e7bfe2c6fa19896b94b5a09fe1)
- [58acfdb43b - Use new format for newer PHP versions on composer --ignore-platform-req=php+](https://github.com/phpmyadmin/phpmyadmin/commit/58acfdb43b7419e0b6001ebcbea53649c29af758)
- [6658383b46 - Switch PHP 8.1 to a normal tested PHP version on CI](https://github.com/phpmyadmin/phpmyadmin/commit/6658383b4630098d72879e6ca4693fe2d967df55)
- [f686423da7 - Add ext-ctype for psalm on multi arch CI](https://github.com/phpmyadmin/phpmyadmin/commit/f686423da7d39bef1de64871df5d7fd9cdf9107b)
- [0ff9d908e7 - Add ChangeLog entries for #16746](https://github.com/phpmyadmin/phpmyadmin/commit/0ff9d908e7b1547c13ac746d93b42cb4f668428d)
- [dee420f8b2 - Bump Twig 2.x to 2.14.9 (for a forced PHP 7.1 AND PHP 8.1 compat)](https://github.com/phpmyadmin/phpmyadmin/commit/dee420f8b244ba586d64c73ac03e5f5fbfd6f0ae)
- [796466f8c2 - Update phpstan baselines and psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/796466f8c2014686c4b3895b99316650a9015e37)
- [2c3f587495 - Fix tcpdf setAutoPageBreak not using a boolean](https://github.com/phpmyadmin/phpmyadmin/commit/2c3f5874950d51fc53c66b043212f4c88e20168e)
- [897a4b1bf2 - Upgrade tcpdf to latest 6.4.4 (that has multiple PHP 8.1 bug fixes)](https://github.com/phpmyadmin/phpmyadmin/commit/897a4b1bf264b17e89efd793fe0da42559577810)
- [f3f6112e00 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/f3f6112e00e7a4285a37042f2261e96e4be42f81)
- [4f7c7fe358 - Update d/copyright](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/4f7c7fe358645e20574cddc03d74556eb4662e86)
- [25318c6ae6 - Drop PHP 8.1 patch](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/25318c6ae6d3b8474e7b544f02832cfc04120c5c)
- [d0c0e51444 - Merge branch 'php-8.1' into debian/latest](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/d0c0e514447ee9e91f751a9a3758c47d102cb7f1)
- [7a7ed4161e - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/7a7ed4161ecfdb9bb3d866f3b01ff37a68136ae8)
- [706da31669 - Update d/copyright](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/706da3166973a070c75294d5ff6eaf6caf814981)
- [aa55e5f17b - Update Standards-Version to 4.6.0](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/aa55e5f17b9e3c05b9b4f34f693bb8a353aea5a9)
- [b6de015baf - Update d/changelog for unstable](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/b6de015baf7656c17f40ad34e6ddcbc854cb2be6)
- [0359dfa198 - Add a patch to support PHP 8.1](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/0359dfa198dc207b69630b8c18b54b1e9837cab9)
- [d51ac61345 - Send 6.4.4+dfsg1-1 to unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/d51ac61345e17462895c8fb9b8dff585bea7d55f)
- [73cd344e2b - Update d/s/lintian-overrides](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/73cd344e2b3a468261f0da68c6e537caf2dbf79c)
- [97fb0bf403 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/97fb0bf4034a4a78c59ae39876c8296e65ecd338)
- [1c209393d6 - Update d/s/lintian-overrides](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/1c209393d61c9304961d6eb3931f52f3c74e191b)
- [15038ab33f - Use the debian autoload and not the class file directly](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/15038ab33fb04d68446fadb464c80a8d1a2cc689)
- [b763c3cce8 - Install /u/s/p/{autoloaders,overrides} files](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/b763c3cce8e3a8b27f5a9531a860ac9578266b7a)
- [8f1af9e0bd - Update d/s/lintian-overrides](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/8f1af9e0bd981e0eced5958a4327e708bc783673)
- [ef3d472829 - Fix include path to be only /usr/share/php on tests](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/ef3d4728299f3ed788b921076351c99c273390f3)
- [806f4b8158 - Remove Felipe from Uploaders (no upload needed since 2020)](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/806f4b8158a4469b18709922f1ff8c4b4c6f3b45)
- [04bd4967d9 - Depend on dh-sequence-phpcomposer and remove dh --with phpcomposer](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/04bd4967d955f1cb002bd4313c22cc3148cf7d9b)
- [00ccd70462 - Update d/s/lintian-overrides](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/00ccd7046229a6f979c412cee2d38f43c5c45225)
- [839bff363e - Update test.sh to use the debian include path for tests](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/839bff363ec7c5a05fa99c73cd5c292b0a950bf6)
- [f4242b9fbf - Update d/copyright years](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/f4242b9fbf5c53d8aa201b42cb41ff489c1a550c)
- [4311e1a85f - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/4311e1a85f1fb6102591ba05f29375692cea5e27)
- [5a792f6809 - Update tcpdf test.php from upstream](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/5a792f6809bc5922b3938f0de0b107b55d5011ff)
- [cbab2890e2 - Merge tag 'upstream/6.4.4+dfsg1' into debian/latest](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/cbab2890e2586c366a94e80d183646cdcfd6aa7b)
- [8b26acbe1c - New upstream version 6.4.4+dfsg1](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/8b26acbe1c714066db4b9cc9133ba2c9a765d68a)

## Second week (2)

I fixed a security issue where 2FA/U2F could be disabled without any code change. On the Debian repository I marked phpmyadmin 4:5.1.1+dfsg1-5 for unstable and added patches for the PHP 8.1 deprecations and test failures.

- [ca54f1db05 - security - Fix - 2FA/U2F can be disabled without any code change](https://github.com/phpmyadmin/phpmyadmin/commit/ca54f1db050859eb8555875c6aa5d7796fdf4b32)
- [38f7503cc7 - Translated using Weblate (French)](https://github.com/phpmyadmin/localized_docs/commit/38f7503cc7405c9802702f96a8e2b6ff4f9b8315)
- [a32a2e0d17 - Mark 4:5.1.1+dfsg1-5 for unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a32a2e0d17045bfb2fa7ddddc5fe1f9b46bee6b4)
- [b1a740e1c2 - Fix d/p/series](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b1a740e1c2aafcebd0c6b7e5fe36a2c32eed0f54)
- [8a093a00ed - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/8a093a00ed019fb6d2a92ac6ea7c227f8a8d1eee)
- [6cab5171a3 - Add a patch to remove PHP 8.1 deprecation issues](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6cab5171a38e6e094c88ff4a93732b9c26389b60)
- [bfef669107 - Update d/copyright](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/bfef6691074d06dee9afa897eb148e7a141cc39d)
- [1c74331672 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/1c74331672fa470d4e62e4ea1aff839daa913098)
- [609bef4254 - Add a patch to fix PHP 8.1 test failure](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/609bef425439c78ac1ce8d74dead3d25c92df376)

## Third week (3)

I worked on the Debian package of phpmyadmin 5.1.2+dfsg1, and updated the jquery, bootstrap and openlayers sources it ships.

- [f621ae9167 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f621ae91670dfb86edfdecf092334825eb19c256)
- [899edb4412 - Fix lintian thinking that js/dist/server/status/monitor.js has no source](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/899edb4412b2dfc1813176f2289f2f7895ef4337)
- [0f511089b0 - Update jquery source to 3.6.0](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/0f511089b07aee794095f0c9dbff00e39adac73b)
- [c6fb209933 - Update bootstrap source to 4.6.1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/c6fb20993354288e368e7eecc0b3e41e4b2d5024)
- [75d2ecbdc0 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/75d2ecbdc09399491fe9a08ce6875a953d89691c)
- [e2a3f2ea42 - Make openlayers source compatible with Debian](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e2a3f2ea4217cb470e3899b46a6133636e050a46)
- [455df62322 - Update openlayers source to 6.9.0](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/455df62322cd36a3b3463603de7f9d7bb6b66062)
- [cb9fdfcd3a - Bump d/copyright years](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/cb9fdfcd3a4960c4c499f3b999eadc1d1e01193a)
- [f14168056d - Allow phpmyadmin/sql-parser 5.4](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f14168056dee61d7f29459f1111ca3bbb0d30c74)
- [df9a40683c - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/df9a40683c16a4deb501c9b1b2c1e19f9c481243)
- [4bf0f7ac86 - Refresh Debian patches, remove upstream fixes](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/4bf0f7ac869c195a95f8b41f07ad1e6540891dd0)
- [40d12b114b - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/40d12b114be4a78cf82a4c1f30bd23ada89ebf28)
- [040bfd467d - Update upstream source from tag 'upstream/5.1.2+dfsg1'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/040bfd467d2319ef0673e7bfd9d70ed7b87d7427)
- [9a1e443c81 - New upstream version 5.1.2+dfsg1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9a1e443c8100a4a92c55eb9497486e65d1bc8aed)

