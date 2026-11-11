+++
title = "Report for April 2024"
date = 2024-04-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for April 2024.

<!-- more -->

In April 2024 I worked on the Docker image, the main repository, and the Debian packaging of sql-parser, tcpdf, phpmyadmin and twig-i18n-extension.

## First week (14)

On the Docker image I made the custom ini files writable in rootless mode, and moved the tests to Alpine 3.19 and the compose plugin. On the Debian side I uploaded sql-parser 5.9.0 and tcpdf 6.7.4.

- [2335c3151b - Ref #187 - Make custom ini files writable in rootless mode](https://github.com/phpmyadmin/docker/commit/2335c3151b93ea6a4cf8779c4c90cb21572b6c50)
- [6a687794c6 - Ref #187 - Also test with another user](https://github.com/phpmyadmin/docker/commit/6a687794c6c5857e37866de5c39eba50a7bc82ca)
- [6d69b7796b - Ref #187 - Make all the data www-data:www-data](https://github.com/phpmyadmin/docker/commit/6d69b7796b970039b725ec8937433eb68148f5f9)
- [6070d87f73 - Use Alpine 3.19 for testing](https://github.com/phpmyadmin/docker/commit/6070d87f732b0fb9eb198a8341568bfaa0458d28)
- [50b7203dbf - Merge #434 - Enable remoteip mod for Apache](https://github.com/phpmyadmin/docker/commit/50b7203dbf0e254b23fd5e53509680fa67b5e8ec)
- [aa656af9c5 - Bump GitHub actions](https://github.com/phpmyadmin/docker/commit/aa656af9c51ac1e3804c60d820394a318541e40f)
- [79a51154c1 - Use docker compose plugin instead of the old binary](https://github.com/phpmyadmin/docker/commit/79a51154c1d7edcf5b45740cc306e6aa5ce42e4e)
- [02dfc1f9fb - Send 5.9.0-1 to unstable](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/02dfc1f9fba55bab262c78acf5988f97e22e3c42)
- [b3453e0368 - Force dependencies loading from /usr/share/php/](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/b3453e03687b122b75d0005683c8845e65c021bd)
- [2ddbcc6a1a - Refresh patches](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/2ddbcc6a1acdafaf97d8e99448b5fa88b539dd7c)
- [297e20deb0 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/297e20deb09ae36c6fa3575a6cc4015fab466f23)
- [48fd44ddb9 - Update upstream source from tag 'upstream/5.9.0'](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/48fd44ddb95120c8f9da88dc9db68f89292810d4)
- [f97cefb559 - New upstream version 5.9.0](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/f97cefb5595cf582a82a721cff92ccfd46babc24)
- [ee15ed2f43 - Send 6.7.4+dfsg-1 to unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/ee15ed2f4354be9f39edebbf23e05ea8b9b312eb)
- [3fc9935c20 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/3fc9935c20875a31ce58bab580274992c49efcbe)
- [8806bcf809 - Update example_066 patch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/8806bcf8094ef71f9a7832a8dbb5dffcbf7f1e82)
- [55c2c83093 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/55c2c83093c632adcb09a63a4edca51810bb532d)
- [4924da4eda - Update upstream source from tag 'upstream/6.7.4+dfsg'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/4924da4eda69260bbafd69b3bf6d3e28cec3b60f)
- [0d01530fd7 - New upstream version 6.7.4+dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/0d01530fd70f6697d1d2dcf305e27cf5c94968f8)

## Second week (16)

I prevented the upgrade to Twig 3.9.0 on the main repository and merged a fix for the export of triggers. On Debian I sent phpmyadmin, twig-i18n-extension and tcpdf updates to unstable, with patches for PHP 8.3 and Twig 3.9.0.

- [add463dfe0 - Ref #19112, #19114 - Prevent upgrade to Twig 3.9.0](https://github.com/phpmyadmin/phpmyadmin/commit/add463dfe0852e400dfddc5c82b7f64ef961bc30)
- [ec78dfd088 - Merge #19090 - Fix #18495 - exporting of triggers](https://github.com/phpmyadmin/phpmyadmin/commit/ec78dfd088b13a8ab84829f2bfc4115f69338305)
- [99ce3b614d - Merge pull request #161 - 4.9: Change PHP Version in Supported Version to match other info](https://github.com/phpmyadmin/website/commit/99ce3b614da530bc9f8e42e64307a9d3c657dd4b)
- [cee56575b5 - Merge pull request #174 - Update Composer notice saying PMA is not on Packagist](https://github.com/phpmyadmin/website/commit/cee56575b559338bd29258602cd0b7bb421de922)
- [b03afa7515 - Send 4:5.2.1+dfsg-3 to unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b03afa751572b5ab0fc72c35c52486c9533ad37c)
- [aed4ece688 - Revert changelog compression](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/aed4ece68861cad70a825153b1add4463a14069e)
- [3d6c93705b - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/3d6c93705b12af51488ae0029416036acc46fb26)
- [6cf1809d3f - Remove suggests of non existing webauthn lib in Debian](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6cf1809d3ff0f76bc55511243761a1b361767899)
- [885df4fbcc - Force dependencies loading to use /usr/share/php/](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/885df4fbccb0229cf7ad6ce86ce222a7e50afa11)
- [96f61c904c - Send Standards-Version 4.7.0](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/96f61c904c73348f50e9bcc1fa79cea799f6275a)
- [3069ed2519 - Mark d/news for unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/3069ed25197f9affcc2e0a214c58244fa2714085)
- [055e20acdf - Fix a typo in the PHP 8.3 patch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/055e20acdfed8c984a8119fe50822ceb29a63ee6)
- [1469cfbe80 - Re-word my d/NEWS entry](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/1469cfbe80c9b6ac84b8c24235fc7956deb6de2f)
- [0b80f35587 - Do not compress the upstream ChangeLog file](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/0b80f355872f12a8547735d2c29de6483155524d)
- [83d8b189b6 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/83d8b189b64d2b4025e1c70727266a0f8b0cb78e)
- [d78814194c - Use LP: #2016016 for the Launchpad link](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d78814194cfe0804870701badb77a7870753c7b6)
- [726fae00e8 - Re-write the Ubuntu Jammy d/NEWS entry](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/726fae00e83eb6994b13740d1554c2ce0a0a80d7)
- [4bec471fbc - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/4bec471fbc9308b79f9445078732cd9cc3dec553)
- [7320f10d11 - Add a patch to require PHP 8.2](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/7320f10d11d953e11c50aa8864d401320cea4575)
- [407b0ae632 - Remove the Symfony polyfill in the PHP 8 patch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/407b0ae632bfebcc014c0b5e28a3b115643e10ec)
- [decbd0b83f - Import Ubuntu patch for PHP 8.0](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/decbd0b83ff35bb7ae01258dfcbbdaa616dec773)
- [eb11b03e96 - Import one more fix for sql-parser 5.8 for Triggers export](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/eb11b03e96f17d34bc2770a1a53cb81b4d6d12c6)
- [9427e6cd70 - Add a patch to avoid Twig 3.9.0](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9427e6cd70e2cd29d5b37042856f576604dcb9ff)
- [869f0032c0 - Send 4.1.1-1 to unstable](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/869f0032c0fe3f3905579ea287f769e2b76a62fa)
- [a259162d33 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/a259162d3357e5f3179f0f9a0189e2eac84d423f)
- [aabb0e2166 - Drop Twig 3.9.0 patch](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/aabb0e21668eea3ab01daba5663f36e6a514b5b7)
- [63d0b38b6e - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/63d0b38b6e16e465f7628a8a5eec254370920d98)
- [ceb99848f6 - Update upstream source from tag 'upstream/4.1.1'](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/ceb99848f658f7378c76902764d727b94ac68344)
- [6538fbcb45 - New upstream version 4.1.1](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/6538fbcb45ada0345cdecf9a1e3f9c3da97ade3b)
- [797f78bb11 - Send 4.1.0-2 to unstable](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/797f78bb11893e4f7be489ee08c8e5691a0b1315)
- [c8c3f86656 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/c8c3f8665687b0d68a250d9c253eaf638972aab1)
- [7206efa30b - Conflict with Twig 3.9.0](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/7206efa30b74c57c3f7c99e6f14f5620bdd7f13c)
- [8819ed3630 - Bump Standards-Version to 4.7.0](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/8819ed36302ed7b53d947dcb9972d0c00a91c333)
- [d4cb5e42f5 - Send 6.7.5+dfsg-1 to unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/d4cb5e42f54044321148264c1da3c1bc65bbbd04)
- [3f9b0b7099 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/3f9b0b709901b46f460e87aa8bdad6be37b197e7)
- [fdefe8f6af - Update upstream source from tag 'upstream/6.7.5+dfsg'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/fdefe8f6afdedc33342dfdf8e4c3bd4a36b4552a)
- [43a10f0b19 - New upstream version 6.7.5+dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/43a10f0b19768b28c92ac3062a62db2c42a4c395)

## Third week (17)

I merged quite a bunch of pull-requests on the main repository: check constraints preserved during a column move, the SQL linter for multiple statements, the import of an exported view with a USE INDEX hint, virtual columns, and the copy to clipboard for the export as text.

- [1f47fc6da8 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/1f47fc6da8dbe6826edfc545dacaae641a94b123)
- [69d9b8b85c - Add a ChangeLog entry for #19041](https://github.com/phpmyadmin/phpmyadmin/commit/69d9b8b85ce12c58c440085d6791dc7914d3f69a)
- [892dda0f04 - Fix #19041 - footer.twig gets printed to Binary File Download](https://github.com/phpmyadmin/phpmyadmin/commit/892dda0f04ceb6c830900b1d426b87d2029a5bce)
- [50eb1e533c - Remove stale.yml on QA](https://github.com/phpmyadmin/phpmyadmin/commit/50eb1e533cf253c49932bc9ca9a40e63feb313fa)
- [241506fb77 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/241506fb77fa2662fe0d8170ed0d1b10dd4a7c4b)
- [09f1c4e020 - Add a ChangeLog entry for #18210](https://github.com/phpmyadmin/phpmyadmin/commit/09f1c4e0205760068d0ddd7536ccec6469a73e49)
- [cbad7c9198 - Merge #18316 - Fix #18210 - Add replica replication user on MariaDB doesn't work](https://github.com/phpmyadmin/phpmyadmin/commit/cbad7c9198a82153ecaf73145d66b247115a1734)
- [6d83fa6626 - Add a ChangeLog entry for #18674](https://github.com/phpmyadmin/phpmyadmin/commit/6d83fa66268be8b641907fa5157a665e22a70060)
- [55a60c019e - Merge #19136 - Fix #18674 - formatted sql in grid should be inline text](https://github.com/phpmyadmin/phpmyadmin/commit/55a60c019e0ab169422d0e17c23e5c8505fbfda3)
- [11fb621a89 - Ignore Generic.Files.LineLength.TooLong for providerForTestGenerateAlterTableSql](https://github.com/phpmyadmin/phpmyadmin/commit/11fb621a89ed863f41c5f246612ebacf5d797e19)
- [e2872e3e15 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/e2872e3e1582060f24fefdbd86cfb7bc5f43a6b4)
- [fe8a1f90d7 - Add ChangeLog entries for #18240 and #19125](https://github.com/phpmyadmin/phpmyadmin/commit/fe8a1f90d72b9af883271dba688668cf155cdaf2)
- [8aa9c11469 - Merge #19129 - Fix #19125 - CodeMirror tooltip is below modals](https://github.com/phpmyadmin/phpmyadmin/commit/8aa9c114698157ad9d7881a5a98c878c5ff619ce)
- [f7dbfdd499 - Merge #19131 - Fix #18240 - inserting value with UNIX_TIMESTAMP() without param](https://github.com/phpmyadmin/phpmyadmin/commit/f7dbfdd499daee7a20fac472dac35eac872da24b)
- [a2ae0e7619 - Add a ChangeLog entry for #18276](https://github.com/phpmyadmin/phpmyadmin/commit/a2ae0e76190bdebb63b6250fed9a501deb439c2c)
- [298b01aaf8 - Merge #18991 - Fix #18276 - changing column with `on update CURRENT_TIMESTAMP` active](https://github.com/phpmyadmin/phpmyadmin/commit/298b01aaf8f7b71bd5375ee083a9a25a2ba115ef)
- [0d0e381551 - Add a ChangeLog entry for #18529](https://github.com/phpmyadmin/phpmyadmin/commit/0d0e3815511429a004c9ac53571625236ca89388)
- [e1845d3bc9 - Merge #18537 - Fix #18529 - Add copy to clipboard for export as text](https://github.com/phpmyadmin/phpmyadmin/commit/e1845d3bc95186b03448c9c3ff492c993e3a0b17)
- [a440a35f86 - Fix coding standard on structure.ts](https://github.com/phpmyadmin/phpmyadmin/commit/a440a35f86a1f836015aaeda41c4de39336362cc)
- [c2909c260d - Merge #18534 - Improve copy to clipboard code](https://github.com/phpmyadmin/phpmyadmin/commit/c2909c260d56c708c605c58616fb0f860c153e2f)
- [f3919aa0b5 - Fix testWithSqlErrors after #19121](https://github.com/phpmyadmin/phpmyadmin/commit/f3919aa0b576edcfaa4fae9a93d0e48d71f28c83)
- [f665e5037a - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/f665e5037a11cea627cddcc091118b83546d25a0)
- [9584a4b1c2 - Merge remote-tracking branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/9584a4b1c22067de1b74d6d337db353b5b1875c0)
- [b415422e6a - Add a ChangeLog entries for #17920, #18006 and #18962](https://github.com/phpmyadmin/phpmyadmin/commit/b415422e6a9a98a21f57114d2cc66050ad04869d)
- [0bcc3e402d - Merge #19105 - Fix #17920, Fix #18006, Fix #18962 - Preserve check constraint during column move](https://github.com/phpmyadmin/phpmyadmin/commit/0bcc3e402df4a707f42352a44ad8078f1194ed45)
- [8345da88f6 - Add a ChangeLog entry for #18566](https://github.com/phpmyadmin/phpmyadmin/commit/8345da88f6174ed92afc2f8ad59a20b75e07a6cc)
- [40d5b6dd57 - Merge #19135 - Fix #18389, Fix #18487, Fix #18511 - Fix linter for sql query box with multiple statements](https://github.com/phpmyadmin/phpmyadmin/commit/40d5b6dd57bfa915f328516d35f5d651d5c07ca9)
- [a07507d4e8 - Merge #19135 - Fix #18566 - Error when importing exported view with USE INDEX hint](https://github.com/phpmyadmin/phpmyadmin/commit/a07507d4e8f0896e306664e40eb6ab290703a2fc)
- [0c1bd41e88 - Add a ChangeLog entry for #19117](https://github.com/phpmyadmin/phpmyadmin/commit/0c1bd41e88c1d2c799de2f76548bde464ed9310d)
- [7b6aba7940 - Merge #19122 - Fix #19117 - Changing a colum to a virtual column](https://github.com/phpmyadmin/phpmyadmin/commit/7b6aba7940dbaaa907782035cfd651d255fe3f88)
- [67c42eee91 - Merge #19039 - Fix #19037 - Link to privilege on table or db without an existing grant](https://github.com/phpmyadmin/phpmyadmin/commit/67c42eee91923280e1db729e470cf8bb3e621c44)
- [8598c9784c - Add a ChangeLog entry for #17951](https://github.com/phpmyadmin/phpmyadmin/commit/8598c9784cd58c07f9b2adb395710ead320c5f92)
- [53aeb8c0ef - Merge #18349 - Allow rollbacking SET queries](https://github.com/phpmyadmin/phpmyadmin/commit/53aeb8c0eff0aa2be20534f68c4aadc99b656746)
- [0d27683e94 - Merge #17662 - Add a GitHub action to close stale issues](https://github.com/phpmyadmin/phpmyadmin/commit/0d27683e941aca2556edc225cc51f6026d3644ae)
- [23ca0c1032 - Merge #19077 - Fix process list toggle of full sql](https://github.com/phpmyadmin/phpmyadmin/commit/23ca0c1032ab429721703bf959963bbc8006d77d)

