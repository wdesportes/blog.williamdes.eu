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
