+++
title = "Report for August 2025"
date = 2025-09-10T20:26:00+00:02
updated = 2025-10-29T10:33:00+00:01
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for August 2025.

<!-- more -->

I only did Docker repository updates.

## First week (32)

**Nothing to report**

## Second week (33)

On the web VM I cleaned up some space, and I manually ran the `daily-snapshots` script.
On the demo VM I cleaned up some space, because the `pma-demo-update` script was failing.

## Third week (34)

**Nothing to report**

## Fourth week (35)

I fixed the `generate-stackbrew-library.sh` from the Docker repository and then updated the official docker image.
They needed to remove an old CPU arch: `mips64le` and add support for `riscv64`.

- [0c64340e5d - Update generate-stackbrew-library.sh to understand the new ENV separator](https://github.com/phpmyadmin/docker/commit/0c64340e5d8cbae534b84c4820e0f38d28f44081)
- [677fbdab92 - Update phpMyAdmin image Architectures](https://github.com/docker-library/official-images/commit/677fbdab92b605207ae2c729ce0b77d1479dcf5e)
