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
Two weeks, W38 and W39, had no activity.

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

## Third week (38)

**Nothing to report**

## Fourth week (39)

**Nothing to report**

## Fifth week (40)

I fixed the jest tests on Windows
([#20500](https://github.com/phpmyadmin/phpmyadmin/pull/20500)).

