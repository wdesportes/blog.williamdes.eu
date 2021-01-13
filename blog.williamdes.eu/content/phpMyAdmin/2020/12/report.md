+++
title = "Report for December 2020"
date = 2020-12-31T12:00:00Z
update = 2021-01-11T23:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for December 2020.

<!-- more -->

(this was re-build from what I could find)

## First week

### Monday

### Tuesday

### Wednesday

### Thursday

### Friday

### Saturday

### Sunday

## Second week

### Monday

#### Other

The [desportes infrastructure](https://github.com/desportes/infrastructure) project was exported as an open-source project.

### Tuesday

### Wednesday

### Thursday

### Friday

#### Other

This is my last day (18/12/2020) at my job, horray !

### Saturday

#### Other

At [desportes infrastructure](https://github.com/desportes/infrastructure) I adjusted some things.

### Sunday

## Third week

### Monday

### Tuesday

### Wednesday

### Thursday

### Friday

### Saturday

### Sunday

#### Other

At [desportes infrastructure](https://github.com/desportes/infrastructure) I added some fancy things and made the project usable and testable for anyone.

## Fourth week

### Monday

#### Other

At [desportes infrastructure](https://github.com/desportes/infrastructure) I made sending and receiving work fine.

### Tuesday

#### Other

At [desportes infrastructure](https://github.com/desportes/infrastructure) I added a phpunit test suite for the mailserver.

### Wednesday

I worked on the Debian package `google-recaptcha` to make it clean and follow the Debian rules.

### Thursday

#### phpMyadmin

I worked on the Debian package `google-recaptcha` to make it clean and follow the Debian rules.
I did the same on the `mariadb-mysql-kbs` package.

#### Other

I made a [pull-request](https://github.com/phar-io/phar.io/pull/99) to fix things at phar.io.
And also made a [pull-request](https://github.com/phar-io/phar.io/pull/100) at phar.io to add Doctum and bump copyright years.
At [desportes infrastructure](https://github.com/desportes/infrastructure) I made [user passwords more secure](https://github.com/desportes/infrastructure/commit/81d3f6fe571919a1d23a7283a117a3f4ab5f0b91) by understanding that the sasl plugin does not support more algorithms than `MD5, SMD5, SHA, SSHA, CRYPT`.

### Friday (01/01/2021)

#### phpMyadmin

I worked on the Debian package `google-recaptcha` and `1.2.4-2` was released.

#### Other

At [desportes infrastructure](https://github.com/desportes/infrastructure) I implemented dynamic domain names.

### Saturday

#### phpMyadmin

I worked on the Debian package `google-recaptcha` and `1.2.4-3` was released.
Started some cleaning on `jquery-timepicker` to prepare it for an upload.
Some more cleaning and fixing on `mariadb-mysql-kbs` package and `1.2.11-2` was released.

#### Other

Upstream `mariadb-mysql-kbs` I released a new version after some fixes where done.
I created a pull-request at [docker-mailserver](https://github.com/tomav/docker-mailserver/pull/1737) to fix shebangs and it got merged.
And another [pull-request](https://github.com/tomav/docker-mailserver/pull/1736) to implement manual DKIM domain lists in the config script.
I also worked at [desportes infrastructure](https://github.com/desportes/infrastructure) to make my external domain sending and receiving work.

### Sunday

#### phpMyadmin

I finished cleaning and adjusting `jquery-timepicker` and `1.6.3-1` was released.
At `mariadb-mysql-kbs` for Debian, I prepared the next release.

#### Other

I worked at [desportes infrastructure](https://github.com/desportes/infrastructure) and got everything working after I understood the [issue](https://github.com/tomav/docker-mailserver/issues/1694) about my config for postfix `virtual_alias_domains`.
