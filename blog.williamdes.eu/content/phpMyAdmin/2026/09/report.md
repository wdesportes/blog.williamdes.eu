+++
title = "Report for September 2026"
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

Here is my phpMyAdmin report for September 2026.

<!-- more -->

In September I merged and reviewed a set of contributions, worked on the CI and
code-quality tooling, fixed a couple of search bugs, and did some issues triage.
Two weeks, W38 and W39, were spent entirely on pull-request reviews.

## First week (36)

I merged contributions after reviewing them: fixing an OOM error when creating a
view ([#20426](https://github.com/phpmyadmin/phpmyadmin/pull/20426),
[#20425](https://github.com/phpmyadmin/phpmyadmin/issues/20425)), restoring the
mutation dashboard reporting
([#20431](https://github.com/phpmyadmin/phpmyadmin/pull/20431)), stripping the port
from the host when linking to user privileges in the processes list
([#20315](https://github.com/phpmyadmin/phpmyadmin/pull/20315),
[#19841](https://github.com/phpmyadmin/phpmyadmin/issues/19841)), removing sprintf.js
([#20467](https://github.com/phpmyadmin/phpmyadmin/pull/20467)), fixing an Uncaught
ReferenceError for CodeMirror
([#20471](https://github.com/phpmyadmin/phpmyadmin/pull/20471)) and updating the
.gitignore ([#20472](https://github.com/phpmyadmin/phpmyadmin/pull/20472)).

I reviewed these pull-requests:

- [#20427 - Fix #18749 - Remove the X-XSS-Protection header](https://github.com/phpmyadmin/phpmyadmin/pull/20427)

## Second week (37)

I merged contributions after reviewing them: removing unused getters
([#20480](https://github.com/phpmyadmin/phpmyadmin/pull/20480)), fixing
ServerSettingsTest ([#20482](https://github.com/phpmyadmin/phpmyadmin/pull/20482))
and removing the @see declarations
([#20483](https://github.com/phpmyadmin/phpmyadmin/pull/20483)).

I spent the rest of the week on Scrutinizer: their NVM does not carry the NodeJS
versions I asked for, so I had to downgrade twice (v23.10.0, then v23). I also
added phpstan to the Scrutinizer run, used phpcs directly because "phpcs-run"
crashes there, and backported a fix for the infection reports.

I also fixed the INET4 search — quoting the search term for inet4 fields
([#20398](https://github.com/phpmyadmin/phpmyadmin/pull/20398),
[#20395](https://github.com/phpmyadmin/phpmyadmin/issues/20395)) and fixing the
search with the = operator
([#20474](https://github.com/phpmyadmin/phpmyadmin/pull/20474)).

I reviewed these pull-requests:

- [#20479 - Refactoring of SysInfo](https://github.com/phpmyadmin/phpmyadmin/pull/20479)
- [#20432 - Do not expose the phpMyAdmin version in asset URLs](https://github.com/phpmyadmin/phpmyadmin/pull/20432)

## Third week (38)

I reviewed these pull-requests:

- [#20449 - Fix #20442 - Replace Name with TABLE_NAME](https://github.com/phpmyadmin/phpmyadmin/pull/20449)
- [#20423 - Fix db structure summary timestamp](https://github.com/phpmyadmin/phpmyadmin/pull/20423)
- [#20368 - Use ignore-id instead of deprecated ignore in Composer](https://github.com/phpmyadmin/phpmyadmin/pull/20368)

## Fourth week (39)

I reviewed these pull-requests:

- [#20495 - Use randomizer where possible](https://github.com/phpmyadmin/phpmyadmin/pull/20495)
- [#20494 - Use new in initializers](https://github.com/phpmyadmin/phpmyadmin/pull/20494)
- [#19933 - Don't convert deprecations to exceptions](https://github.com/phpmyadmin/phpmyadmin/pull/19933)

## Fifth week (40)

I merged a pull-request that fixed the jest tests on Windows
([#20500](https://github.com/phpmyadmin/phpmyadmin/pull/20500)).

I reviewed these pull-requests:

- [#20498 - Allow google/recaptcha 2.x](https://github.com/phpmyadmin/phpmyadmin/pull/20498)
- [#20496 - Fix Stryker link](https://github.com/phpmyadmin/phpmyadmin/pull/20496)
- [#197 - Bump actions](https://github.com/phpmyadmin/website/pull/197)
- [#13 - Replace apt with apt-get to fix warning](https://github.com/phpmyadmin/coding-standard/pull/13)
