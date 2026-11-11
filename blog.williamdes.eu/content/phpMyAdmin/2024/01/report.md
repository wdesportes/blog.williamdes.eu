+++
title = "Report for January 2024"
date = 2024-01-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for January 2024.

<!-- more -->

In January 2024 I worked on the main repository. I merged a fix for adding columns to an index and another one for the timestamps columns, and updated the phpstan baseline.

## First week (2)

I merged a fix for the "Add n column(s) to index" dialog that was not working, and a fix to keep the timestamps columns from wrapping. I also updated the phpstan baseline and merged the QA_5_2 branch back.

- [141a936e47 - Merge #18866 - Fix #18504 - Add n column(s) to index doesn't work](https://github.com/phpmyadmin/phpmyadmin/commit/141a936e4726eb3ce67efc5ee75b2a946efb4cde)
- [c3e5c9711c - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/c3e5c9711c1999dc57870c88bc14ca72cc496b23)
- [6081306e61 - Add a ChangeLog entry for #18865](https://github.com/phpmyadmin/phpmyadmin/commit/6081306e6141369f478d6ff85a6b467e7cbfe96b)
- [a58479fa88 - Update the phpstan baseline](https://github.com/phpmyadmin/phpmyadmin/commit/a58479fa882005bf69b3cac32c961cec33cc6e2d)
- [b82d4e9326 - Merge #18883 - Fix #18865 - text-nowrap for timestamps columns](https://github.com/phpmyadmin/phpmyadmin/commit/b82d4e9326fbd028b47d8f1309b00117401af531)

