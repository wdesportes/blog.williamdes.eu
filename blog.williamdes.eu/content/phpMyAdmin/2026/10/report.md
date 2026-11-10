+++
title = "Report for October 2026"
date = 2026-11-09T12:00:00+00:01
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for October 2026.

<!-- more -->

October was the busiest month of the year and the most varied: a sql-parser
release, packaging work on docker and motranslator, documentation and website
fixes, and the bulk of the time on migrating the error-reporting-server to a
newer version.

## First week (42)

The week went on sql-parser packaging: a new upstream version 5.11.2, the Debian
changelog, dropping the phpunit patch that is no longer needed, patching and then
skipping a failing test class, the Standards-Version bump to 4.7.4, and removing
the now-default Rules-Requires-Root and Priority fields. Sent as 5.11.2-1 to
unstable.

## Second week (43)

Most of the week went on packaging. On **docker** I scoped the Docker Hub
credentials to an environment instead of exposing them to every job, and made the
images mirrored into the legacy namespace without creating tags that do not exist
there — plus a GitHub actions bump.

On **motranslator** I worked the 6.0.x and 5.4.x branches: requiring the patched
symfony/expression-language versions, fixing the plural form selection for boolean
plural expressions, an error on translation failure, `Translator::exist` for plural
strings, and the matching CHANGELOG entries.

On the main repository I merged several documentation contributions — detection of
the bundled documentation ([#20564](https://github.com/phpmyadmin/phpmyadmin/pull/20564)),
obsolete browser FAQ entries with a demo fix
([#20573](https://github.com/phpmyadmin/phpmyadmin/pull/20573)), and a FAQ typo plus
the Servers compress option clarified
([#20574](https://github.com/phpmyadmin/phpmyadmin/pull/20574)) — and I dropped the
obsolete FAQ entry about duplicate values.

I also added an `--update` mode to locales-contributors, passed shellcheck on it,
and used it to regenerate the credits. Two bugs surfaced there: the script never
listed a contributor, and the credits carried a Deleted User placeholder.

## Third week (44)

The bulk of this week went to **error-reporting-server**, migrating it to the
**CakePHP 5** skeleton: adapting the layouts, dropping the flash layout that the
new skeleton does not have, removing the declared content type on empty answers,
not testing the query type of a route, and shipping the server setup and GitHub
webhook documentation as separate files under docs/. Around fifty commits.

I also merged contributions on the main repository and fixed an anchor on the
snapshot pages of the website.
