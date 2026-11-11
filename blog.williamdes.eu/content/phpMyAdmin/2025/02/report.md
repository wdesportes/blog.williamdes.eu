+++
title = "Report for February 2025"
date = 2025-02-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for February 2025.

<!-- more -->

In February 2025 I updated the Debian package of tcpdf, and closed a two year old
story about a file that should never have been shipped.

## First week (6)

On the Debian packaging of tcpdf I sent 6.8.2+dfsg-1 to unstable, stopped installing the tcpdf_import.php development file, adjusted the watch file and switched to the git mode.

This closed a long story. I had opened [issue #574](https://github.com/tecnickcom/TCPDF/issues/574) in December 2022 asking upstream to delete that import code, because it is unfinished and should not be used by anyone. Two years later the file was still shipped, so I opened [pull request #785](https://github.com/tecnickcom/TCPDF/pull/785) to remove it upstream, and decided to stop installing it in the Debian package whatever the outcome of that pull request.

- [e335bbdca5 - Translated using Weblate (Tamil)](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e335bbdca526828451b56b48a931182f37891fda)
- [6a5021181d - Send 6.8.2+dfsg-1 to unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/6a5021181da3999ec8c8f48e654edf12df605b24)
- [4a915e06d9 - Fixup the d/watch argument for pgpmode](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/4a915e06d99974df32fc559f66de31fdf97c2095)
- [9a7619401c - Stop installing dev file tcpdf_import.php](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/9a7619401cfa51fdb715e68d4ce7ce5a2fb311a0)
- [98b97a8ccc - d/ch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/98b97a8ccc673a94ba2879ca9cad18b6c5c87d62)
- [57a7c0ea22 - Update upstream source from tag 'upstream/6.8.2+dfsg'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/57a7c0ea22c67b088508f0e6f57b7cba893b5f81)
- [5ede7e991f - New upstream version 6.8.2+dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/5ede7e991f890f18345ea28bf38bb41ea9643132)
- [4b43e78453 - Switch to Git mode](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/4b43e784532c7ddf5b75342969fc7e24931f269f)

