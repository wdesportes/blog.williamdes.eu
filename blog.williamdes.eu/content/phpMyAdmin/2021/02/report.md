+++
title = "Report for February 2021"
date = 2021-02-01T12:00:00Z
updated = 2021-02-28T17:22:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for February 2021.

<!-- more -->

## First week (05)

### Monday (01/02/2021)

Handled some issues and did some fixes on the Docker repository.

### Tuesday

I did handle a fix that was a left over of the stickfill migration.
And worked on performance improvements.

### Wednesday

_Nothing to report, I worked on my infrastructure_

### Thursday

I did review some pull-requests and hunt for typos in most of our files. I found some and even found a potential bug on a HTML tag that had a typo in it. Also did triage some issues.
And I migrated the website Python CI to GitHub actions with some sed commands to hack a backport Django did not do.

### Friday

I moved the themes, motranslator, shapefile repositories to GitHub actions. Did the milestone process for sql-parser after the release.
Also did fix a bunch of Documentation translations and migrated the repository to GitHub actions.
Did some pull-request review and prepared 2 PRs for the 2 releases done this day of shapefile and motranslator.
On Debian I imported the latest motranslator version and applied some guidelines.

### Saturday

A little bit of infrastructure work for phpMyAdmin and issue triage.

### Sunday

I updated shapefile at Debian and copied all the fixes made earlier on motranslator.
Also merged my shapefile 3 upgrade into 5.2.0-dev and worked on writing tests for the [new feature](https://github.com/phpmyadmin/twig-i18n-extension/pull/5) proposed on the Twig i18n extension.
I continued to work on the extension to bring all changes made at phpMyAdmin into it (translation context functions support).

## Second week (06)

### Monday (08/02/2021)

I did migrate our Selenium test suite to GitHub actions and did some debug improvements for it (screenshots, source code).
And did re-work some selenium scripts and work on making coverage work for E2E tests.
Also did manage some issues.

### Tuesday

I merged a batch of fixes and rebased some PRs, also merged my Selenium PR.
For now pcov coverage will not work for the selenium test suite because it is too slow.
Also tried to reproduce some bugs.

### Wednesday

I worked on performance issues and tracking bugs reported for the Import feature.

### Thursday

Not much to report, a little bit of issue and PR review.

### Friday

I worked on my bot to deploy phpMyAdmin PRs.

### Saturday

I worked on merging work done of the twig i18n extension. Made some bug fixes and reviewed pull-requests.
Also did work on trying to reproduce bugs. Uploaded motranslator Update to the PPA and to buster-backports.
Worked on Selenium tests to fix the errors.

### Sunday

Sent shapefile to buster-backports and to our Ubuntu PPA. Made some stale issue triage and pull-request merging.

Working on a big refactoring of the field flags handling. The code is currently like 2 people using a translator for languages they already know. The code fetches flags, builds a string with an array and all the codebase performs strpos onto the string. Very "stupid", but maybe made sense sometime ago. Anyway it is eating performance and needs to be thrown out. Now only relying on a full typed object. This will bring safety and performance everywhere where field flags did leak.

## Third week (07)

### Monday (15/02/2021)

Worked on finishing my field flags refactoring. Pull-request testing and issue triage as I do everyday ^^
Also did update my PR on the twig i18n extension.

### Tuesday

Merged and reviewed some PRs. Wrote some tests for a PR.
And continued working on my refactoring. Also fixed a Selenium test and a bug found by the test suite.

### Wednesday

Worked on bug fixes, and fixed the Selenium test suite errors. Quite some bugs fixed !
Also had a look to the error reporting server to find bugs to fix.
And finished a JS doc linting PR.

### Thursday

Some issue triage. And worked on reproducing some issues.
Also worked on the INT validation form fixes.

### Friday

Not much, some issue tracking and PR merging.

### Saturday

_A day off._

### Sunday

I made the release script way better by running tests on the "built package" rather than on a vendor folder that was not the one shipped to users. Also wrote a script to find and help remove useless vendor files from release tarballs.
Also did some digging on the new errors found by phpstan. One seems to be true but I could not confirm any PHP warning, I am keeping my fix for later.
And did refactor the route cache handling, now there is two flags. One to define if the routing cache should be skipped and another one to know if the cache can be written.

## Fourth week (08)

### Monday (22/02/2021)

Working on performance improvement to check that my PR does not add some slowness. I found out that calling getters on PHP costs a lot.
I am comparing xhprof results to adjust my code. Also found out where all the performance is eaten on SQL exports.

### Tuesday

Some more work on my refactoring and merging PRs. Getting ready for the 5.1.0 release.
And did research to find out how to cover the last un-covered lines of our i18n extension. 100% coverage, satisfying.
Will do performance benchmarks to find out where I can improve the code before releasing the major version 4.
I removed all the custom code on our main repository and [created a PR](https://github.com/phpmyadmin/phpmyadmin/pull/16675).

### Wednesday

I made some updates to our website after the 5.1 release. Worked on testing in depth the `TODO`s that I have added while doing my refactoring. Had to dig to find why things where added 10 years ago ^^.
Also wrote more tests for our i18n extension and made performance improvements. I released [v4.0.0](https://github.com/phpmyadmin/twig-i18n-extension/releases/tag/v4.0.0) and [updated it upstream](https://github.com/phpmyadmin/phpmyadmin/pull/16675).

### Thursday

I fixed some infrastructure scripts. Did some PR testing and found a very old and not reported bug.
Also did search for bugs that could be solved in the issue base.

### Friday

Started working on packaging phpMyAdmin 5.1 into Debian.

### Saturday

I made some PR reviews.

### Sunday

_A day off._
