+++
title = "Report for February 2018"
date = 2018-02-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for February 2018.

<!-- more -->

On phpMyAdmin I only worked on the main repository this month, with a single patch: the first one ever merged there.

## First week (7)

I had reported issue [#13889](https://github.com/phpmyadmin/phpmyadmin/issues/13889) in December 2017 while building an application of my own, WdesMenu, whose id columns were binary: creating or editing a routine, setting a charset on a parameter and then switching its type to binary gave a syntax error, because the charset was still added to BINARY and VARBINARY. My [pull-request #13892](https://github.com/phpmyadmin/phpmyadmin/pull/13892) skips the charset for these types and was merged on 20 February, my first merged patch on the main repository. That binary-column work would keep producing fixes in phpMyAdmin over the following years.

- [71e304720f - Patch for issue #13889](https://github.com/phpmyadmin/phpmyadmin/commit/71e304720f480c2da15ac963453a1c4e117b9054)

## Other projects

I sent links to the used dependencies on radswiat/webpack-auto-inject-version ([#26](https://github.com/radswiat/webpack-auto-inject-version/pull/26)), the removal of the Spongy Castle dependency on SilenceIM/Silence ([#655](https://github.com/SilenceIM/Silence/pull/655)) and an NPE fix on the same fork ([#657](https://github.com/SilenceIM/Silence/pull/657)).

