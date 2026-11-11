+++
title = "Report for May 2022"
date = 2022-05-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for May 2022.

<!-- more -->

In May 2022 my focus was the Debian packaging and the docker image.

## First week (19)

On the docker repository I changed the config syntax replacement for phpMyAdmin 5.2 to define the configFile directive, and added checks that the line can be found and lint the file afterwards. On the Debian side I worked on phpmyadmin 5.1.4+dfsg1, mariadb-mysql-kbs 1.2.13 and google-recaptcha 1.2.4-4.

- [326191915b - Change the config syntax replacement way for phpMyAdmin 5.2 to define the "configFile" directive](https://github.com/phpmyadmin/docker/commit/326191915b3502f19b331f6961581bfd2f858531)
- [cddd8dda1b - Add commands to check the replaced line can be found and was replaced + lint the file afterwards](https://github.com/phpmyadmin/docker/commit/cddd8dda1b66cf749f804f612a18a07d2a9884a5)
- [a9851bbd0c - Bump actions/checkout to v3](https://github.com/phpmyadmin/docker/commit/a9851bbd0cc6d1c8926b545db119e56a5fc20c58)
- [a502fb030d - Re order composer dependencies like phpabtpl would do](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a502fb030d7487a38cb49e2c78bc77e8e05263b6)
- [b1d62ca648 - Fix a typo](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b1d62ca648d46366a7f2031a9635afe2b7410806)
- [a3fdb5c5e1 - Update Standards-Version to 4.6.1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a3fdb5c5e11cae6167155f5c7490de702aee388a)
- [4fa7a448b2 - Add d/changelog entry for 4:5.1.4+dfsg1-1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/4fa7a448b2bf737b37b6448b35e4ebcd37e3671a)
- [445b298ad4 - Update upstream source from tag 'upstream/5.1.4+dfsg1'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/445b298ad48cbec06de9590c0fb4744166ca687b)
- [cf98ecc245 - Remove js/vendor/jquery/{jquery.svg.js,jquery.mousewheel.js} d/copyright sections](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/cf98ecc24502c758f42118d9930d69ad98869150)
- [f490c7393a - New upstream version 5.1.4+dfsg1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f490c7393a52a85740204b6e5bfaa1a4b97b9cda)
- [2fbc285f36 - Bump Standards-Version to 4.6.1](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/2fbc285f36f2c00445077daaf8a3c3a05dad2760)
- [ff0363c1e4 - Mark d/changelog for 1.2.13-1 for release](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/ff0363c1e4d25bec56c1ec9e107297034eaeb696)
- [584cd19fb3 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/584cd19fb3e6f287dc47bf92e9a7fc0488b7049b)
- [424f60be2b - Mark this package as "Multi-Arch: foreign"](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/424f60be2bdca316c88dfd99463f859c559298be)
- [1465af123b - Bump d/copyright to 2022](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/1465af123b8b87e847f44a3cff239c1431ab36c9)
- [c09f220945 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/c09f2209455351f376d02dad0b0728df81e0e985)
- [aed47aefea - Refresh change_data_dir d/patch file](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/aed47aefea1efc80ac682639f615117544202bb8)
- [d1dcfeaf39 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/d1dcfeaf39eaa5e0c051d2f727f71013816449db)
- [c09cd8f501 - Depend on dh-sequence-phpcomposer](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/c09cd8f501eab5c83a7f3573446de1d2b8971cba)
- [4bd32fa18b - Update Standards-Version to 4.6.1](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/4bd32fa18b9d0fb8dcb004844553da2f39aecafa)
- [4f1b690751 - Add pkg-php-tools Debian autoload override](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/4f1b690751ac4447fca6485bd8fba6c181e79457)
- [04e0445bd6 - Update upstream source from tag 'upstream/1.2.13'](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/04e0445bd653f1654c11d3fa39bf18110449854b)
- [335bb32c2e - New upstream version 1.2.13](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/335bb32c2e2925f993634a4a5beb68c1dfed32a0)
- [a38e83ee91 - Fix pgpsigurlmangle on d/watch file](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/a38e83ee91f614e59af6892d30b720b1629ab426)
- [2890782fc0 - Make watchfile use more strict syntaxes](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/2890782fc06b9a3eefd1e065edb74e744202e75d)
- [e37eb47c08 - Mark 1.2.4-4 for release](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/e37eb47c08d6e640ffed15079c2044e3d31e235c)
- [d8a29668c1 - Update d/changelog](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/d8a29668c1b2ec50a2bbcec3c42302c014d6ba82)
- [c0f7d251f5 - Add php-curl to test dependencies](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/c0f7d251f5f6c89473145edbcce9309906deb703)
- [eb18879acd - Update d/changelog](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/eb18879acdb3f79a5831f2f6b7eb7d69eccab295)
- [71bf2d6116 - Mark the package as "Multi-Arch: foreign"](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/71bf2d6116545e252499b70082ff57a4e00c89d0)
- [b0a5faf054 - Install usr/share/pkg-php-tools overrides](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/b0a5faf0546f46510ae0d255c62fd0637a7fc4dd)
- [d9d839f903 - Fix a typo on a 1.2.4-3 d/changelog entry](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/d9d839f90309f0b4fd0ab3293d152c067671d131)
- [e539e28ff9 - Update d/changelog](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/e539e28ff936cfadf9ab9adeb176f70aedd83db6)
- [9dd77bfaa6 - Relieve Matthias and Felipe from the "Uploaders" field](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/9dd77bfaa6043175be0b1d70d21bee86f53780a9)
- [c4dff28480 - Update d/copyright for Debian files](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/c4dff28480e4196c9bf5960f3e02411ca6a2bf9e)
- [b26325a80e - Depend on dh-sequence-phpcomposer](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/b26325a80e2e11a5b83162139a239b3ec6567735)
- [3d9b281fd9 - Bump Standards-Version to 4.6.1](https://salsa.debian.org/php-team/pear/google-recaptcha/-/commit/3d9b281fd9ce5b91e894de841bf433907d81fad0)

## Second week (20)

More Debian packaging: I marked twig-i18n-extension 3.0.0-3 for release and added a patch to the phpmyadmin package to disable the testDownloadHeader and testDownloadHeader2 tests.

- [d3048ea93e - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d3048ea93e8139dcfbb03605336504edbddb40c7)
- [9e45d0598b - Add a patch to disable testDownloadHeader and testDownloadHeader2 tests](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9e45d0598b19254864367fb3e8dcb5e46db40c14)
- [7f9366d83f - Refresh patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/7f9366d83f66e983c429a4dca2fab1d30c2c2c5f)
- [bcdfb1dca6 - Mark 3.0.0-3 for release](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/bcdfb1dca6113c152ef43d4088c370f7b6f5b7e4)
- [6be75bd9e8 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/6be75bd9e8573ff53ffcfc1aa3cf8102073dc256)
- [1b4cd0fa13 - Refresh pkg-php-tools overrides setup](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/1b4cd0fa13952988d5b91ed720e6fa4446b728fa)
- [256e90563c - Depend on dh-sequence-phpcomposer](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/256e90563c2689691957161c42741cbae5df6b10)
- [eec6a59a7c - Use phpabtpl to generate the autoload template file](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/eec6a59a7c5fa66b4a219f6b2573c115a7f5b78f)
- [c6fa673a6a - Simplify d/tests setup](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/c6fa673a6a68097e4da6ee4b348a691083fdd977)
- [7e60f573ee - Mark this package as "Multi-Arch: foreign"](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/7e60f573eed91b8f1ca7eb3cf9c434e1fdaa4d72)
- [4948ef9733 - Update d/copyright](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/4948ef9733b56bd6d412141aa49d9f610d07a5c8)
- [893b88941c - Relieve Matthias and Felipe from the "Uploaders" field](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/893b88941cff9176ed42219ea1bad2f48d59be81)

## Third week (21)

I marked phpmyadmin 4:5.1.4+dfsg1-1 for unstable and bumped actions/setup-node to v3.

- [43a644e6b1 - Bump actions/setup-node to v3](https://github.com/phpmyadmin/phpmyadmin/commit/43a644e6b1c0754f5ddae25b8dfce29d21206582)
- [2e93cbaa0f - Mark 4:5.1.4+dfsg1-1 for unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2e93cbaa0f705039fb0e16a38bb683239c9ed52d)

