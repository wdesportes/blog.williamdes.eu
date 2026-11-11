+++
title = "Report for May 2018"
date = 2018-05-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for May 2018.

<!-- more -->

In May 2018 I worked on the main repository, on configuration and interface fixes.

## First week (18)

I fixed the DefaultLang and Lang configuration ([#14260](https://github.com/phpmyadmin/phpmyadmin/issues/14260)) and the CodeMirror hints that were hidden ([#14257](https://github.com/phpmyadmin/phpmyadmin/issues/14257)).
The Git commit info was not showing when the repository is a submodule; I fixed that ([#14253](https://github.com/phpmyadmin/phpmyadmin/issues/14253)) and added tests for the revision checks.
I also landed the binary foreign key enhancement ([#13894](https://github.com/phpmyadmin/phpmyadmin/issues/13894)) and a patch for [#14246](https://github.com/phpmyadmin/phpmyadmin/issues/14246).

- [2f84b4034e - #14260 Fixed configuration for DefaultLang and Lang](https://github.com/phpmyadmin/phpmyadmin/commit/2f84b4034e4c423512029534e7a6132e6f8dc4d3)
- [0d2f70c875 - Patch for #14257 CodeMirror hints hidden](https://github.com/phpmyadmin/phpmyadmin/commit/0d2f70c875804fd0a1a1fb951c4916c10a3a056d)
- [24f483793c - Patch for #14257 CodeMirror hints hidden](https://github.com/phpmyadmin/phpmyadmin/commit/24f483793cf6c6857ff856a03ac0c44a71ef7b6c)
- [9687dfbfd2 - #14253 Git commit info not showing when the repository is a submodule](https://github.com/phpmyadmin/phpmyadmin/commit/9687dfbfd2613cf279430b81288d11ee1561826b)
- [e9d3fdd493 - Binary foreign key enhancement #13894](https://github.com/phpmyadmin/phpmyadmin/commit/e9d3fdd493ada8cb7d4103287f17601f6f5fb6f0)
- [8af0343bb2 - Patch for issue #14246](https://github.com/phpmyadmin/phpmyadmin/commit/8af0343bb288784e4c5bef91a2d84c1df5b97d94)

## Second week (19)

I reverted my modifications that caused errors, then cherry-picked the DefaultLang and Lang fix to QA_4_8.
On phpmyadmin/scripts I used Sami to generate the developer documentation ([#13](https://github.com/phpmyadmin/scripts/pull/13)) and sent a small cleanup to Sami itself ([#348](https://github.com/FriendsOfPHP/Sami/pull/348)).

- [c19dec2c47 - Revert modifications/error](https://github.com/phpmyadmin/phpmyadmin/commit/c19dec2c478f04036c34add5d80311d19ef62eb0)
- [8f571f7e9e - #14260 Fixed configuration for DefaultLang and Lang](https://github.com/phpmyadmin/phpmyadmin/commit/8f571f7e9e31743681832297973293422f8744c5)

