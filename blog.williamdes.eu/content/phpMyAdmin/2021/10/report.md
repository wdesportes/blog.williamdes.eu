+++
title = "Report for October 2021"
date = 2021-10-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for October 2021.

<!-- more -->

In October 2021 I worked on sql-parser only: packaging cleanups, a performance improvement and the OVER keyword.

## First week (39)

A quiet week: I excluded the psalm configs and CODE_OF_CONDUCT.md from the distributions using .gitattributes.

- [7b906abbdf - Exclude psalm configs and CODE_OF_CONDUCT.md using .gitattributes](https://github.com/phpmyadmin/sql-parser/commit/7b906abbdf7aabe0e08f21a6ae5623899ab396a0)
- [baec497cc1 - Add .editorconfig to .gitattributes exclude](https://github.com/phpmyadmin/sql-parser/commit/baec497cc142542d853c954e0648487fb5d1ae4e)

## Second week (41)

I made a performance improvement to use less `ord()` calls in the ascii map.

- [949fb85e76 - Adjust type hint for ascii map](https://github.com/phpmyadmin/sql-parser/commit/949fb85e761f9538417e3135c33506de981a8dca)
- [2e156588dd - Add a ChangeLog entry for #352](https://github.com/phpmyadmin/sql-parser/commit/2e156588ddbb628f006b4fe97a37ea001ade3bfe)
- [79d5db8474 - Ref #352 - Make a performance improvement to use less "ord()" function](https://github.com/phpmyadmin/sql-parser/commit/79d5db8474a029539424f2e643b90a3858862b37)

## Third week (43)

I merged the OVER keyword support in the contexts and added MariaDB testing by context level. I also upgraded psalm and its baseline.

- [7ca76d8d85 - Add a ChangeLog entry for #197](https://github.com/phpmyadmin/sql-parser/commit/7ca76d8d85a4431965c88f54a147e7b5313d37a5)
- [2d7881415e - Update psalm baseline](https://github.com/phpmyadmin/sql-parser/commit/2d7881415e9d87ca01951a3a8ca1118377431895)
- [79f555a501 - Ref #360 - Implement testing MariaDB by context level](https://github.com/phpmyadmin/sql-parser/commit/79f555a501660af1a8238a379db425cd6ad13d97)
- [e98119370a - Upgrade psalm and psalm-baseline](https://github.com/phpmyadmin/sql-parser/commit/e98119370ae2cba8aed1e156b4c4fb3a0f079d97)
- [f4752dc467 - Merge #360 - Fix #197 - Adding over keyword to the contexts and modify the Expression allowed keywords](https://github.com/phpmyadmin/sql-parser/commit/f4752dc46755eef555f7303f071b6333dff1cdc9)

