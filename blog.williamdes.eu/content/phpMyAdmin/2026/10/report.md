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

## First week (40)

The week was mostly pull-request reviews.

- [#20500 - Fix jest tests on windows](https://github.com/phpmyadmin/phpmyadmin/pull/20500)
- [#20498 - Allow google/recaptcha 2.x](https://github.com/phpmyadmin/phpmyadmin/pull/20498)
- [#20496 - Fix Stryker link](https://github.com/phpmyadmin/phpmyadmin/pull/20496)
- [#197 - Bump actions](https://github.com/phpmyadmin/website/pull/197)
- [#13 - Replace apt with apt-get to fix warning](https://github.com/phpmyadmin/coding-standard/pull/13)

## Second week (41)

Another week of reviews.

- [#20519 - [6.0] Update create-release.sh](https://github.com/phpmyadmin/phpmyadmin/pull/20519)
- [#636 - Fix error when validating index with sort order](https://github.com/phpmyadmin/sql-parser/pull/636)
- [#635 - UUID column type](https://github.com/phpmyadmin/sql-parser/pull/635)

## Third week (42)

The week went on sql-parser packaging: a new upstream version 5.11.2, the Debian
changelog, dropping the phpunit patch that is no longer needed, patching and then
skipping a failing test class, the Standards-Version bump to 4.7.4, and removing
the now-default Rules-Requires-Root and Priority fields. Sent as 5.11.2-1 to
unstable.

I reviewed these pull-requests:

- [#20532 - Fix failing test](https://github.com/phpmyadmin/phpmyadmin/pull/20532)
- [#657 - fix(builder): preserve whitespace between SELECT and UNION body in CREATE VIEW (#655)](https://github.com/phpmyadmin/sql-parser/pull/657)
- [#652 - Fix #627 - Accept ON as value in SET statements](https://github.com/phpmyadmin/sql-parser/pull/652)
- [#650 - Fix hex string literal (x'...') parsing in CREATE TABLE DEFAULT values](https://github.com/phpmyadmin/sql-parser/pull/650)
- [#632 - Fix lex number at start of name followed by _ or $](https://github.com/phpmyadmin/sql-parser/pull/632)

## Fourth week (43)

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

I reviewed these pull-requests:

- [#20563 - Make hardcoded UI strings translatable](https://github.com/phpmyadmin/phpmyadmin/pull/20563)
- [#67 - Allow checking plural strings with Translator::exists()](https://github.com/phpmyadmin/motranslator/pull/67)
- [#61 - Bump GitHub action](https://github.com/phpmyadmin/scripts/pull/61)
- [#471 - Bump GitHub actions](https://github.com/phpmyadmin/docker/pull/471)
- [#20542 - New respondWithErrorMessage()](https://github.com/phpmyadmin/phpmyadmin/pull/20542)
- [#20138 - Migrate $_REQUEST to ServerRequest in 6 controllers](https://github.com/phpmyadmin/phpmyadmin/pull/20138)
- [#18999 - Export and drop triggers in a single POST request](https://github.com/phpmyadmin/phpmyadmin/pull/18999)

## Fifth week (44)

The bulk of this week went to **error-reporting-server**, migrating it to the
**CakePHP 5** skeleton: adapting the layouts, dropping the flash layout that the
new skeleton does not have, removing the declared content type on empty answers,
not testing the query type of a route, and shipping the server setup and GitHub
webhook documentation as separate files under docs/. Around fifty commits.

I also merged contributions on the main repository and fixed an anchor on the
snapshot pages of the website.
I reviewed these pull-requests:

- [#20575 - Improve ErrorHandlerTest::testUniqueness() test](https://github.com/phpmyadmin/phpmyadmin/pull/20575)
- [#20574 - docs: fix FAQ typo and clarify Servers compress option](https://github.com/phpmyadmin/phpmyadmin/pull/20574)
- [#20573 - docs: withdraw obsolete browser FAQ entries and fix demo link](https://github.com/phpmyadmin/phpmyadmin/pull/20573)
- [#20570 - Fix IPv4 CIDR matching in AllowDeny rules](https://github.com/phpmyadmin/phpmyadmin/pull/20570)
- [#20303 - Fix #20256 - Restore active preferences tab after page refresh](https://github.com/phpmyadmin/phpmyadmin/pull/20303)
