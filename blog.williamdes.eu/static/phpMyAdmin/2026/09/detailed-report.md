# Consulting Services for phpMyAdmin

## Report - September 2026

## Overview

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

## Third week (40)

I fixed the jest tests on Windows
([#20500](https://github.com/phpmyadmin/phpmyadmin/pull/20500)).

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 36

- [2345f83d7d - Merge #20426 - Fix #20425 - OOM error when creating a view](https://github.com/phpmyadmin/phpmyadmin/commit/2345f83d7dc17a67aa278a0c33bfb8e9cd2bcfd5)
- [99c9da2746 - Merge #20431 - fix: restore mutation dashboard reporting](https://github.com/phpmyadmin/phpmyadmin/commit/99c9da27462cbe576c869dea93aac2cddf96483f)
- [e81c6111e0 - Merge #20315 - Fix #19841 - Strip port from host when linking to user privileges in processes list](https://github.com/phpmyadmin/phpmyadmin/commit/e81c6111e0fbbb7625266b942371ba0a3fb1ae6e)
- [beb068afcb - Merge #20467 - Remove sprintf.js](https://github.com/phpmyadmin/phpmyadmin/commit/beb068afcb8e527776c9c23e95c129a9c53a1453)
- [55d948539f - Merge #20471 - Fix Uncaught ReferenceError: CodeMirror is not defined](https://github.com/phpmyadmin/phpmyadmin/commit/55d948539fc508c24a36b7cadb4eb380528d2bf8)
- [e3b220da46 - Merge #20472 - Update .gitignore](https://github.com/phpmyadmin/phpmyadmin/commit/e3b220da469fea7ba889b8f5e2a2d33db4cb3852)

### Week 37

- [9cb26dd407 - Merge #20480 - Remove unused getters](https://github.com/phpmyadmin/phpmyadmin/commit/9cb26dd40744921dd9a54016dd46c1be373925f8)
- [6cf52f919b - Merge #20482 - Fix ServerSettingsTest](https://github.com/phpmyadmin/phpmyadmin/commit/6cf52f919b1c50ada59b32bb6512c7e7e9a7714b)
- [9c7549d551 - Merge #20483 - Remove @see declarations](https://github.com/phpmyadmin/phpmyadmin/commit/9c7549d551e5cf99f2b2e2ab7d42667491d74dba)
- [089bfe5f52 - Downgrade Scrutinizer NodeJS to v23.10.0,  their NVM does not have v23.11.0 but lists it](https://github.com/phpmyadmin/phpmyadmin/commit/089bfe5f52efa443cdce0207788b150d40447bca)
- [f484d60dc0 - Downgrade Scrutinizer NodeJS to v23,  their NVM does not have v24](https://github.com/phpmyadmin/phpmyadmin/commit/f484d60dc07cb0167e8825577e2527f3c553f51d)
- [9d06d27306 - Also run phpstan on Scrutinizer](https://github.com/phpmyadmin/phpmyadmin/commit/9d06d2730604cb1707b1c8eeb58bf6a937e2ecdc)
- [228b391070 - Use phpcs directly, it crashes when using "phpcs-run" on Scrutinizer](https://github.com/phpmyadmin/phpmyadmin/commit/228b391070039c264ca5e37a6df050bbb0e45b14)
- [af3c8f2316 - Backport cd4e0dae18 for infection reports](https://github.com/phpmyadmin/phpmyadmin/commit/af3c8f23165e06f16ce10e16d46587cb231f230b)
- [725a767cc5 - Merge #20398 - Fix #20395 - quote search term for inet4 fields](https://github.com/phpmyadmin/phpmyadmin/commit/725a767cc5994dae3f95b63f242e27cc01917ee5)
- [3d2594b2d3 - Merge #20474 - Fix search of INET4 with = operator](https://github.com/phpmyadmin/phpmyadmin/commit/3d2594b2d384f87bf395896c95ccc90a6336a671)

### Week 40

- [59cf0a622b - Merge #20500 - Fix jest tests on windows](https://github.com/phpmyadmin/phpmyadmin/commit/59cf0a622b0fe273712c6ddd57e838eedb5f9880)

# Handled issues

## phpmyadmin/phpmyadmin (GitHub)

### Week 36

- [20394 - [Bug]: Mutation score](https://github.com/phpmyadmin/phpmyadmin/issues/20394)

### Week 37

- [19841 - [Bug]: Processes list link to users table does not work](https://github.com/phpmyadmin/phpmyadmin/issues/19841)
- [20425 - [Bug]: Creating or altering a VIEW buffers the view's entire result set into PHP memory, causing a fatal OOM / HTTP 500 after the VIEW was already created](https://github.com/phpmyadmin/phpmyadmin/issues/20425)
- [17112 - Add Infection badge API key to GitHub secrets](https://github.com/phpmyadmin/phpmyadmin/issues/17112)
- [20159 - [Bug]: Various JS errors related to empty user-agent](https://github.com/phpmyadmin/phpmyadmin/issues/20159)

### Week 39

- [20486 - .](https://github.com/phpmyadmin/phpmyadmin/issues/20486)
