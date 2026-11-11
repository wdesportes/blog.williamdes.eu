+++
title = "Report for July 2024"
date = 2024-07-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for July 2024.

<!-- more -->

In July 2024 I updated the Debian package of mariadb-mysql-kbs to 1.3.0 and merged a small fix on the main repository.

## First week (30)

On mariadb-mysql-kbs I packaged the 1.3.0 upstream version for Debian, adjusted the installed files and the watch file, and sent it to unstable and bookworm. On the main repository I merged a fix for the badges and URLs.

- [e9dad07bda - Merge #19238 - Fix badges and urls](https://github.com/phpmyadmin/phpmyadmin/commit/e9dad07bda7b677570f382d9e0192d4f9ac86f80)
- [2e3a105142 - d/ch](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/2e3a1051422c81c3e7354ed30db57e396ad8e56f)
- [c6745c612c - Do not install merge.php](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/c6745c612c31695955bb23957153cf9a2159d90f)
- [fdbdac00ef - Send 1.3.0-1 to unstable (fix mistake)](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/fdbdac00ef0087bc296cf15e0b6c4cf93f9ed91f)
- [0d19e209ad - Send 1.3.0-1 to bookworm](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/0d19e209ad49f12f75b2283a5f9d307e2504f6c4)
- [5cb67cbff6 - Adjust install of files](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/5cb67cbff6bf52998534e74c6b240451d2b347fe)
- [940df07bf1 - Drop Salsa CI file](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/940df07bf1647065b8aba5828a199b9928fe4212)
- [0b493d740a - Override lintian source-is-missing for HTML files](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/0b493d740a61314acb5c48c0de16137fc757c0cf)
- [3454db62b0 - d/ch](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/3454db62b02dc84dadede04dfa81f3cb3eceb6a6)
- [1044075d38 - Update upstream source from tag 'upstream/1.3.0'](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/1044075d38ad59fabb23c81eb7e5088f87c5e0b8)
- [20c160fe41 - New upstream version 1.3.0](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/20c160fe410d4e4fcdd6a987021f8e914c142584)
- [6aa5db9e64 - Exclude src/rust/data](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/6aa5db9e64c063f47afaadc1846e3565d28a17da)
- [69f0761e1d - d/ch](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/69f0761e1d1e17d069197f42c5883d4a74ebe5b9)
- [5d8995bbe2 - Update upstream source from tag 'upstream/1.3.0'](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/5d8995bbe26a959e02f22f87caaf7456ca60ada0)
- [a11a24caa3 - New upstream version 1.3.0](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/a11a24caa33a2baaa7541e29dda8bec872077c19)
- [987dff61ff - Only exclude variables](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/987dff61ffd96040943e4f8ff465717e2f27ef4c)
- [50459fde6f - Update filter](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/50459fde6f04cc52afeca83dec0e70d4f1a2178e)
- [42db5a8e01 - Update d/ch](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/42db5a8e015b51a3dc88b4b29ebfd444e2df24da)
- [40f6553690 - d/ch](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/40f655369057cac07b1fd663b50358757e14b433)
- [90f68251db - Update upstream source from tag 'upstream/1.3.0'](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/90f68251db59163c12871498bf408c04d9c3eb4a)
- [a9d8bf7810 - New upstream version 1.3.0](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/a9d8bf78100cb1f89821b387a5912111b270be6e)
- [f87382932b - Add filter to remove some files from upstream](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/f87382932bfaf1d9bf7b643cc62b5f4ba0bf9df9)
- [05590284a9 - Use git mode of d/watch](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/05590284a921c102e43dee53b7eff140c232f913)
- [e1aba67e35 - Bump Standards-Version to 4.7.0](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/e1aba67e358968c541d5ed77a9913b0d970b5f9d)

