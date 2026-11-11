+++
title = "Report for June 2026"
date = 2026-06-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for June 2026.

<!-- more -->

In June 2026 I merged a fix on sql-parser and did a merge on the Debian packaging of tcpdf.

## First week (24)

Only a merge on the Debian packaging of tcpdf this week.

- [c05de9904a - Merge branch 'debian/unstable' into 'debian/unstable'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/c05de9904a7c5262e6c2e9517111c736543cb531)

## Second week (26)

On sql-parser I merged a fix to avoid using a null alias as an array offset in `getAliases()`.

- [93eaf8e877 - Merge branch '5.11.x'](https://github.com/phpmyadmin/sql-parser/commit/93eaf8e877d66cb74720188c38800353cd1f8eb9)
- [12287ea0c3 - Merge #658 - Avoid using a null alias as an array offset in getAliases()](https://github.com/phpmyadmin/sql-parser/commit/12287ea0c38708038ff3acba9bc3fba76eedbfd0)

