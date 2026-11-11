+++
title = "Report for April 2022"
date = 2022-04-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for April 2022.

<!-- more -->

In April 2022 most of my work was on the Debian packaging of motranslator and shapefile, with a little work on phpmyadmin/phpmyadmin.

## First week (15)

I bumped actions/checkout to v3 and removed the non needed CI skip code on the workflows.

- [ac5e3c4cc5 - Bump actions/checkout to v3](https://github.com/phpmyadmin/phpmyadmin/commit/ac5e3c4cc58c5c6c11d0f23b6b013ac83e94e452)
- [076a09917d - Remove non needed anymore ci skip code on workflows](https://github.com/phpmyadmin/phpmyadmin/commit/076a09917d1ea159e93b108a21e3c99e18ebe268)

## Second week (17)

On the Debian side I prepared motranslator 5.3.0 and did some cleaning on the shapefile package. I also removed openssl.cnf from the vendor bundles as it is not necessary.

- [124bb336fd - Remove openssl.cnf from vendor bundles as it is not necessary](https://github.com/phpmyadmin/phpmyadmin/commit/124bb336fd3c3e534e3ef1c467368af91264dc36)
- [c4e3e2f5f4 - Mark 5.3.0-1 for release](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/c4e3e2f5f4d0f51ebb99d2b862cb89e0e220cba4)
- [603fb8e001 - Apply "wrap-and-sort"](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/603fb8e0011d8515bcc709482f37f3cc0f3d6390)
- [6409f9a2a6 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/6409f9a2a66ce7a48ec4a147b6286c2d6349d466)
- [424a03b5d9 - Add usr/share/pkg-php-tools overrides](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/424a03b5d9d70074de3acb564c0586b7c7cd1296)
- [5aaccdf1ba - Use phpabtpl to generate the autoload template](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/5aaccdf1baf56971c150be10724dcef082640f1a)
- [2d29200a47 - Bump Standards-Version to 4.6.0](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/2d29200a470e5f2f8ddc959feadac33dea61a6c3)
- [d7cd618494 - Depend on dh-sequence-phpcomposer](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/d7cd6184946a1273b1ef52b355dbc55df0aca330)
- [3370607357 - Update d/copyright](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/337060735731f46f35895a4d840ab334801af8e5)
- [ee43869739 - Add d/changelog](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/ee438697394134260aa5067746f3db6619cd417a)
- [246152698a - Merge branch 'upstream' into debian/latest](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/246152698ab4f11f4070b0c76a49e5fff2156a4c)
- [58e68bd914 - New upstream version 5.3.0](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/58e68bd9142b56fa7f31793b7598cb933320fd3b)
- [31c56bd672 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/31c56bd67295d90f40b9bfe457e3b28821e2321a)
- [cb403ee7f0 - Run "wrap-and-sort"](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/cb403ee7f0f9fc63ec4c474413db88a0251a7cde)
- [b43df7de48 - Depend on dh-sequence-phpcomposer](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/b43df7de484687a9d8ae3be0da6cb29fd21a96a9)
- [e4c7f0c5a5 - Update d/copyright](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/e4c7f0c5a5ffd194a062a8c4d1940307f3ee1925)
- [44a0f82a91 - Bump Standards-Version to 4.6.0](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/44a0f82a91f879efba61b0fd57b4f4557f87b8e5)
- [eeb1f970ed - Add usr/share/pkg-php-tools overrides](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/eeb1f970ed257a636f4c096ac359904caa406e8e)

