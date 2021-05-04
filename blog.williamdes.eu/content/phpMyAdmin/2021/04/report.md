+++
title = "Report for April 2021"
date = 2021-04-01T12:00:00Z
updated = 2021-05-05T01:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for April 2021.

<!-- more -->

## First week (13)

### Monday (29/03/2021)

I worked on bug fixing and reproducing issues.

### Tuesday

I made fixes for reported issues and searched for errors to fix on the error reporting server.

### Wednesday

I continued to work on bug fixes.
And pull-request review and merging.
Today: 477 issues, 141 bugs (133 not waiting on upstream).

### Thursday

I tested all the interface and found some bugs I fixed.
Some of them where UI bugs.
I also worked on a content security policy bug and update the documentation.
And wrote some tests to cover the Sanitize check link function.

### Friday

I worked on bug fixes and issue management.

### Saturday

_Day off_

### Sunday

_Day off_

## Second week (14)

_Not working on the project_

## Third week (15)

### Monday (12/04/2021)

I worked on merging pull-requests, writing tests and searching into Git history to understand a fix.
Also removed dead code (but kept alive by tests). And worked on a PR for tomorrow about URL encoded & chars.

### Tuesday

More work on merging contributions and I finished working on my URL generation fix.
Made more bug fixes and updated translations.
Also did write some test cases and help users on issues.
I also did install `phpbench` and started writing a benchmarks.

### Wednesday

Today I continued reviewing PRs and made some bug fixes after researching on the error reporting server for forgot reports.
I also upgraded the JS lib for datatables on the error reporting server to add new values to the number of reports diplayed.
And continued searching for reproductible issues using the error reporting server.
Also wrote some phpbench code for the import from file but did not see anything alarming.

### Thursday

I did some pair coding with our contractor to fix an issue and continued cleaning up the error reports we receive.
Also made a fix for the search feature and tried to reproduce issues.
I found some interesting issues and reported to upstream CodeMirror.
And made a fix on the error reporting server.

### Friday

Today I did some issue triage and error report triage. Then I merged the pull-request to remove a redundant lib.
And made a bunch of fixes on the GIS feature. Also did check all the occurrences where there was dragging in the UI and found some dead code. Finally I merged my PR to fix URLs after investigating in the GIT history.

### Saturday

Some light issue triage.
_Day off_

### Sunday

_Day off_

## Fourth week (16)

### Monday (19/04/2021)

I reviewed and merged pull-requests and did some research about error reports found on the server.
Also did a fix and coding standard upgrade on the error reporting server.
And wrote test cases for reported issues.

### Tuesday

Today I merged some contributions and made fixes.
Made some code improvements and optimizations.
And wrote some tests after reverting old commits for older php versions.

### Wednesday

_Day off_

### Thursday

I worked on the infrastructure to fix the demo server build failures.
Also did issue triage and pull-request merging. I found two non translated buttons.

### Friday

Today I started with some bash scripting to improve the demo server update script.
And did bug fixes. And fixed the export in PHP format. And the JSON export for binary contents.
I fixed the planet website CSS link and HTTP links. Also fixed the burger menu on planet and website.
Also merged and reviewed pull-requests. And closed issues. Finally I started working on my Sentry migration.
And wrote some test cases.
Open issues: 481, PRs: 18.

### Saturday

I worked on a memory crash issue introduced by a recent fix.
And did testing on Windows using IIS and PHP 8.0.
I wrote some tests for the issue and improved the actual SQL logging.
And finally I reviewed and merged a contribution.

### Sunday

I worked on some issue triage and merged some contributions.
Also did bug fixes on the monitor page.
And did some haproxy configuration to answer a question on the Docker repository.

## Sixth week (17)

### Monday (26/04/2021)

I did review some pull-requests and improved the demo server update script.

### Tuesday

Today I worked on MySQL replication and fixed the setup errors.
Also did pull-request review and code improvement.

### Wednesday

I did some research on Docker signing and found made it work.
Also worked on upload progress classes and trying to make `apcu` work, and made a PR to remove the old code upstream PHP confirmed not working. And cleaned some legacy PHP checks from the code-base.
Did some JS dependencies upgrading. And finally worked on code improvement.
And finally did some else branch removing in the code base.
With some documentation updates.

### Thursday

I fixed bugs on the normalisation process and wrote tests to cover them.
And fixed missing CSS classes on the normalization process buttons.
I also improved the testing code for controllers.
Also did issue triage and pull-request merging and review.

### Friday

I worked on some security research in the code base.

### Saturday

_Day off_

### Sunday

Worked on some bug fixing.

_Day off_
