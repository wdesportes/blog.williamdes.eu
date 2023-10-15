+++
title = "Report for August 2021"
date = 2021-08-01T12:00:00Z
updated = 2021-08-30T13:28:00+02:00
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for August 2021.

<!-- more -->

## First week (31)

__Not working on the project__

I did some issue and pull-request triage.

## Second week (32)

### Monday (09/07/2021)

I worked on merging pull-requests and closing issues.

### Tuesday

I merged pull-requests and worked on fixing issues.
I tried to find the root cause of infinite loop bug on import but I did not find.
Also wrote tests and made a fix for 2FA. Finally I did un-mock the TwoFactor tests class.

478 issues, 21 PRs.

### Wednesday

Today I made some issue and pull-request management.

### Thursday

Today I searched for new bugs in our Sentry instance by filtering on PHP issues for the 5.1.1 release.
I also merged a PR on the docker repo.
And worked on finding out about the unit issue on the Import page. I wrote test cases.
Finally wrote and improved some documentation on the README of the Docker repository.

### Friday

Today I merged a sql-parser PR. And started to work on the issue #335

### Saturday

Today I made a tutorial on how to run phpMyAdmin with a local database using a Unix socket.
I ported fixes from a PR to master and QA. Also reviewed pull-requests.
I also tried to reproduce a navigation tree issue.
Finally I wrote test cases on sql-parser and merged a PR.

### Sunday

Today I researched more about `CREATE VIEW` syntaxes and added more test cases to the sql-parser library.

## Third week (33)

### Monday (16/07/2021)

Today I merged a pull-request into sql-parser and added new MariaDB contexts.
Also improved the phpdoc blocks of generated context files.

### Tuesday

Today I worked on sql-parser on adding more test cases and fixing issues.
Also merged and test pull-requests on the main repository and wrote a fix.
Finally I also improved documentation for the config "DefaultFunctions".

### Wednesday

__off__

### Thursday

I did some Debian packaging, to send 5.1.1 into unstable since Debian is not anymore in freeze mode.
Also reviewed pull-requests. Wrote tests and commented some code.
Finally did some testing of the PR I wrote tests for.

### Friday

Today I merged a sql-parser PR and wrote a test for a new issue.
Also started working on a fix for it.
Finally did some sorting out on the sql-parser issues board.

### Saturday

I worked on sql-parser, wrote tests to fix issues.
I added support for KEY order and added missing KEY options.
Also did some issue triage.
Finally I merged a pull-request into the main repository QA branch.

### Sunday

Today I improved the release script to lock it for a particular series and also removed some old compat lines.
I added one more file to exclude and added a security checkup step to the release script.
On the release and check script I did some adjustments to exclude missed `Test` folders.

## Fourth week (34)

### Monday (23/07/2021)

Today I fixed file exclusions from the Dockerfiles of the docker repository. Upgraded the images to PHP 8.
Fixed LOCAL DATA issues.
I modified our test suite to properly check database selects.
And removed a static property from the Tracking class.

### Tuesday

Today I send into bullseye-backports the phpMyAdmin package.
Sorted out issues and pull-requests.
I worked on reproducibility between bundled releases.
Finally I fixed a public security issue with signon auth.

### Wednesday

Today I sorted out more issues, fixed a reported security issue.
Also worked on supporting expressions in the GUI of phpMyAdmin.
Did some bug fixing and finally I worked on sql-parser to support multiple expressions.

### Thursday

Today I worked on adding support for multiple expressions on KEY statements.
I wrote tests and adjusted support for Expressions in the phpMyAdmin GUI.
Finally I wrote tests for the Relation class.

### Friday

Today I started by writing more tests for the Relation class.
And worked all day on making relation setup work correctly on each different scenario.

460 issues, 27 PRs.

### Saturday & Sunday

__Week end__
