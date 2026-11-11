+++
title = "Report for November 2023"
date = 2023-11-12T17:51:00+00:01
updated = 2023-11-12T17:51:00+00:01
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for November 2023.

<!-- more -->

It's been quite a year, I miss how I contributed to phpMyAdmin in a more regular way last year and the previous years.
But that's how it is now, issues have got out of control up to 724 open issues on Sunday 12.
For referenced, I had managed to get them down to `460 issues` in 08/2021, see my report about it.

## First week (44)

I replied to some issues and reviewed some pull-requests.

## Second week (45)

On Sunday I ran into a JS bug when creating tables and ended up fixing 3 bugs in total.
All around changing index type when creating a table.
Then I fixed the number field validation when it is empty or when validating BETWEEN.
When I was at this task I did find a way to remove one more bug when using CTRL+enter on a field.

## Third week (46)

On Thursday, I patched a bad bug caused by the sql-parser update that did now require delimiters.
This was preventing from exporting triggers or functions/procedures.

## Fourth week (47)

**Nothing to report**

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 45

- [b55e20b924 - Add a ChangeLog entry for 85624b9115](https://github.com/phpmyadmin/phpmyadmin/commit/b55e20b924cb1b71f8bd23c9cd7619597814fb89)
- [85624b9115 - Fix JS number validation when the input is empty](https://github.com/phpmyadmin/phpmyadmin/commit/85624b9115691c7a2a6028bd7254ede6d1c48d3d)
- [b5743c691a - Add a ChangeLog entry for 119208b39c](https://github.com/phpmyadmin/phpmyadmin/commit/b5743c691a4083549060cef159caacfda662bf80)
- [119208b39c - Fix BETWEEN search does not validate input since there is a space "1, 2" instead of "1,2"](https://github.com/phpmyadmin/phpmyadmin/commit/119208b39cce4f99d85c18c8d6da3d95ca0e2a74)
- [083fdd8568 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/083fdd8568b9ebaa0041396d140727e90f357c5c)
- [f3e714910e - Add ChangeLog entries for #17381, #14402, #17347](https://github.com/phpmyadmin/phpmyadmin/commit/f3e714910eaa9d7145a88bed7127705ad2349a5f)
- [77820a32b6 - Fix #17347 - TypeErrors in some special cases on index management](https://github.com/phpmyadmin/phpmyadmin/commit/77820a32b6c2250e8dd5d96e6d0719d7cba02690)
- [c2967d6c6a - Fix #14402 - PRIMARY label is not removed when two PRIMARY where defined](https://github.com/phpmyadmin/phpmyadmin/commit/c2967d6c6a3ee548dacebdeb63c7c072dfd419be)
- [0a4c4db504 - Fix #17381, Fix #17347 - TypeError when removing indexes on columns](https://github.com/phpmyadmin/phpmyadmin/commit/0a4c4db50426238bec6b40482c1ca9131708b659)

### Week 46

- [b2a98560f3 - Fix #18495 - PHP 7.2 lint - doc format](https://github.com/phpmyadmin/phpmyadmin/commit/b2a98560f3dc5d5cec34903925563439269223fe)
- [a54e97f63d - Fix #18495 - Coding standard fixes](https://github.com/phpmyadmin/phpmyadmin/commit/a54e97f63d31e800740991921fa6bb96593b4573)
- [fc98aff6d3 - Fix #18495 - Exporting procedures and triggers](https://github.com/phpmyadmin/phpmyadmin/commit/fc98aff6d3b9baee77ade65a15e7505c2c741425)
- [38a4328184 - Fix #18495 - Exporting procedures and triggers](https://github.com/phpmyadmin/phpmyadmin/commit/38a4328184ecd20ee071170efb62f3eb1e5256ae)
- [b8f7d3f5ee - Fix #18792 - Avoid JS crashes when trying to remove rules of a field](https://github.com/phpmyadmin/phpmyadmin/commit/b8f7d3f5ee295dd8fa766bb8c4a92eace5189352)

# Handled issues

## phpmyadmin/phpmyadmin (GitHub)

### Week 44

- [#18784 - Impossible to drop database from UI](https://github.com/phpmyadmin/phpmyadmin/issues/18784)

### Week 45

- [#17381 - Uncaught TypeError: can't access property "columns", sourceArray[previousIndex[1]] is undefined](https://github.com/phpmyadmin/phpmyadmin/issues/17381)
- [#17347 - Uncaught TypeError: Cannot read properties of undefined (reading 'col_index') and Uncaught TypeError: Cannot read properties of undefined (reading 'columns')](https://github.com/phpmyadmin/phpmyadmin/issues/17347)

### Week 46

- [#18792 - Cannot read properties of undefined (reading 'settings')](https://github.com/phpmyadmin/phpmyadmin/issues/18792)

### Week 48

- [#18821 - Uncaught TypeError | PHP 8.3](https://github.com/phpmyadmin/phpmyadmin/issues/18821)

## phpmyadmin/docker (GitHub)

### Week 45

- [#430 - ZIP bomb file detected in phpmyadmin docker](https://github.com/phpmyadmin/docker/issues/430)

