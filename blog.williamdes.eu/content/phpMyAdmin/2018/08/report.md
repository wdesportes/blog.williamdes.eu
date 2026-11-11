+++
title = "Report for August 2018"
date = 2018-08-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for August 2018.

<!-- more -->

In August 2018 I worked on the main repository, on bug fixes and static analysis.

## First week (32)

I fixed the getDatabasesFull query, which was missing a space after the alias, and the table comments that were not showing ([#14422](https://github.com/phpmyadmin/phpmyadmin/issues/14422)).

- [8a7f2c30ef - Fix getDatabasesFull query](https://github.com/phpmyadmin/phpmyadmin/commit/8a7f2c30ef5f8cfc003d0e96746bfe4beffc50f1)
- [b9d0c91350 - Fixes #14422 - table comment not showing](https://github.com/phpmyadmin/phpmyadmin/commit/b9d0c913502adcbb8040b3a706a5d960176f9a5b)

## Second week (33)

I reached phpstan level 1 and added tests for the table comment regression. Sami is now installed globally in the CI to avoid a dependency clash with the project.

- [3dce65d913 - phpstan level 1 (#14472)](https://github.com/phpmyadmin/phpmyadmin/commit/3dce65d913cd95206038e8343ec63c1bbedd46ee)
- [2e6a80c47d - Fix tests for regression #14422](https://github.com/phpmyadmin/phpmyadmin/commit/2e6a80c47d7b02447faf96a22153862ee5b480ff)

## Third week (35)

I backported the fix for [#14295](https://github.com/phpmyadmin/phpmyadmin/issues/14295) and updated the French translation on Weblate, at 100% (3297 strings).

- [a2cdf7f217 - Fix for #14295](https://github.com/phpmyadmin/phpmyadmin/commit/a2cdf7f2176959fd3d010c787d413f9934fe75cb)
- [9079efa09e - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/9079efa09e13956e5f689ef3041083ff2ee4ae87)

