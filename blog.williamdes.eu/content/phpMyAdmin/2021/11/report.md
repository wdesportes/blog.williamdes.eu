+++
title = "Report for November 2021"
date = 2021-11-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for November 2021.

<!-- more -->

In November 2021 I worked on the error reporting server.

## First week (47)

I updated the phpstan baseline and applied the automatic coding standard fixes. And I improved the curl error handling for the Sentry forwarding.

- [55aee985ed - Update the phpstan baseline](https://github.com/phpmyadmin/error-reporting-server/commit/55aee985ede22f3ae87b37e0640bed23dbc3e278)
- [6dd97d40e7 - Automatic coding standard fixes](https://github.com/phpmyadmin/error-reporting-server/commit/6dd97d40e7ad80e77b671e5dd737b0dfab3b6625)
- [895bb4bcf4 - Better handle curl errors for Sentry forwarding](https://github.com/phpmyadmin/error-reporting-server/commit/895bb4bcf4b8fe08f0038daaaf65287af4d22d52)

