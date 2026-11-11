+++
title = "Report for October 2023"
date = 2023-10-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for October 2023.

<!-- more -->

In October 2023 I worked on the Debian package of phpmyadmin and on the website.

## First week (41)

On the website I fixed [#163](https://github.com/phpmyadmin/phpmyadmin/pull/163) to use the new GitHub API Bearer auth format, and removed GITHUB_USER from the settings. On the Debian package of phpmyadmin I forced the dependency on sql-parser 5.8 and added the patches for it.

- [46fed1accd - Remove GITHUB_USER from settings](https://github.com/phpmyadmin/website/commit/46fed1accd4b7aab6400825adb0a4ef1a398809c)
- [4eab84bb83 - Fix #163 - Use the new GitHub api Bearer auth format](https://github.com/phpmyadmin/website/commit/4eab84bb834d8dca195d42cd2569d348c486bec3)
- [ea08366e43 - Force depends on sql-parser 5.8](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ea08366e43265550ac59251d688ba0518a1a161c)
- [3284549c7c - Add patches for sql-parser 5.8](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/3284549c7c16de2807cee94169fd8c8b301798ec)

## Second week (42)

I sent phpmyadmin 4:5.2.1+dfsg-2 to unstable, with a patch to disable the dark mode so the build works, and imported node-bootstrap 5.3.1.

- [ba9450ced7 - Send 4:5.2.1+dfsg-2 to unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ba9450ced7a6bfdd50a6249c6f6f3013c5fc255b)
- [a67f173d68 - Update d/copyright](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a67f173d687e12c6ae5389d36421be24f19a880b)
- [e5c89709b1 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e5c89709b1790143d54a3a9127490aff72158a39)
- [a8a9ab4bef - Add a patch to disable dark mode and allow the build to work](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a8a9ab4bef47a112a077807690bfbfae108cc647)
- [e9b2e03a5d - Fix scss building](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e9b2e03a5d2e967b92c571715974a6e7d324b9ff)
- [6fac5ffe7e - Import node-bootstrap 5.3.1+dfsg-1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6fac5ffe7eb08bb7453fe7abd18e22398d95e12e)
- [ad00b0da0f - Update phpunit 10 patch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ad00b0da0fd0711ee686c1f3d440b7536faaf008)

