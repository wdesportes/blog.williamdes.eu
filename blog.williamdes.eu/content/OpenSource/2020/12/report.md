+++
title = "Report for December 2020"
date = 2020-12-31T12:00:00Z
updated = 2021-01-15T18:52:00Z
category = "OpenSource - reports"

[extra]
author = "William Desportes"

[taxonomies]
tags = ["OSS-report"]
+++

Here is my OpenSource report for December 2020.

<!-- more -->

## First week (50)

### Monday -> Sunday

__Nothing to report__

#### phpMyadmin

I did merge two very good pull-requests that fixed some previously merged code.

## Second week (51)

### Monday

The [desportes infrastructure](https://github.com/desportes/infrastructure) project was exported as an open-source project.

### Tuesday -> Thursday

__Nothing to report__

### Friday

This is my last day (18/12/2020) at my job, horray !

### Saturday

At [desportes infrastructure](https://github.com/desportes/infrastructure) I adjusted some things.

### Sunday

__Nothing to report__

## Third week (52)

### Monday -> Saturday

__Nothing to report__

### Sunday

At [desportes infrastructure](https://github.com/desportes/infrastructure) I added some fancy things and made the project usable and testable for anyone.

## Fourth week (53)

### Monday

At [desportes infrastructure](https://github.com/desportes/infrastructure) I made sending and receiving work fine.

### Tuesday

At [desportes infrastructure](https://github.com/desportes/infrastructure) I added a phpunit test suite for the mailserver.

### Wednesday

__Nothing to report__

### Thursday

I made a [pull-request](https://github.com/phar-io/phar.io/pull/99) to fix things at phar.io.
And also made a [pull-request](https://github.com/phar-io/phar.io/pull/100) at phar.io to add Doctum and bump copyright years.
At [desportes infrastructure](https://github.com/desportes/infrastructure) I made [user passwords more secure](https://github.com/desportes/infrastructure/commit/81d3f6fe571919a1d23a7283a117a3f4ab5f0b91) by understanding that the sasl plugin does not support more algorithms than `MD5, SMD5, SHA, SSHA, CRYPT`.

### Friday (01/01/2021)

At [desportes infrastructure](https://github.com/desportes/infrastructure) I implemented dynamic domain names.

### Saturday

Upstream `mariadb-mysql-kbs` I released a new version after some fixes where done.
I created a pull-request at [docker-mailserver](https://github.com/tomav/docker-mailserver/pull/1737) to fix shebangs and it got merged.
And another [pull-request](https://github.com/tomav/docker-mailserver/pull/1736) to implement manual DKIM domain lists in the config script.
I also worked at [desportes infrastructure](https://github.com/desportes/infrastructure) to make my external domain sending and receiving work.

### Sunday

I worked at [desportes infrastructure](https://github.com/desportes/infrastructure) and got everything working after I understood the [issue](https://github.com/tomav/docker-mailserver/issues/1694) about my config for postfix `virtual_alias_domains`.
