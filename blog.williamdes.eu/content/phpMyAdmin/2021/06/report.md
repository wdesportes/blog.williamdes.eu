+++
title = "Report for June 2021"
date = 2021-06-01T12:00:00Z
updated = 2021-06-02T12:05:00Z
category = "phpMyAdmin - reports"
draft = true

[extra]
author = "William Desportes"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for June 2021.

<!-- more -->

## First week (22)

### Monday (01/06/2021)

I added more tags and did some fixes on our Sentry error report forwarder.
Found out on internet someone did a fix without reporting back to us the solution for "Undefined index: utf8mb3 on MySQL 8.0.11+". I wrote tests for this issue and improved our test suite for Database fake query tests.
I also removed mocks for `DatabaseInterfaceTest` and fixed our selenium test suite.
And did some issue and pull-request triage.

### Tuesday

I worked on reproducing and fixing the Google Cloud Engine configuration for one of our users.
This led to some interesting conclusions and findings.
I found out we need to implement `HTTP_X_APPENGINE_HTTPS` and also probably `HTTP_X_APPENGINE_USER_IP`.
On the phpMyAdmin test suite I improved the `RecentFavoriteTable` class code, fixed our multi arch test suite on master branch.
And fixed `testSearchRecords` selenium test. Finally I also did issue and pull-request triage.

### Wednesday

I did infrastructure fixing for the new Sentry server. Backups of the error reporting server data and our CDN contents.

### Thursday

Another infrastructure day, I managed to reclaim most of the space used by the database server.
I also did publish the sources for my extract program writte in Rust and adjusted it.
That allowed me to extract and compress all the new error reports from the error reporting server.
Also moved some bootstrap tests code into our abstract test case class.

### Friday

phpMyAdmin 5.1.1 was released over night.
I packaged phpMyAdmin 5.1.1 on Debian, fixed some tests that where failing and tested the version.
Also fixed our daily composer script.

### Saturday & Sunday

__Week end__

## Second week (23)

### Monday (07/06/2021)

I did some fixes on the release script after that composer released 2.1.2.
Also did pull-request review.

### Tuesday

__off__

### Wednesday

I did fix the 5.2 autoload on the phpunit test suite and made pull-request reviews.

### Thursday

__off__

### Friday

I worked on merging pull-requests and on my pull-request to fix and improve the Designer.
Also made some jsdoc improvements to the javascript designer code using my PR as source.
And finally did a bug fix found while testing the Designer interface.

### Saturday

Today I made fixes because our code relies on `cwd` to work.
Also did issue and error reporting triage and some code search about error reports from Sentry.
Finally I worked on the openlayers PR, added a LICENSE header and improved the sync script.

### Sunday

I worked on Debian packaging to fix the openlayers build, Debian needs to have JS bundles built from source.
I added patches and dependencies in the missing sources folder and re-built openlayers like in the PR.

## Third week (24)

### Monday (14/06/2021)

Today I worked on a configuration issue reported by a user. I also improved the documentation configuration.
Also sent to Debian experimental my changes from yesterday and packaged for Ubuntu focal the 5.1.1 version.

### Tuesday

Today I fixed the package build to Ubuntu bionic (making webpack config work on v3 and make the testsuite phpunit 6 compatible).
Also worked on porting some code out of my Designer PR and improving some code.
I merged my Theme path fix PR and started fixing tests that used a static variable.

### Wednesday

I fixed a bug on a code refactoring and make some issue triage.
Also worked on trying to find a better process for the `daily-composer` script.

### Thursday

I made a working security reset for source files that changed in the composer version.
Also implemented a Cache class and wrote tests for it. And fixed failing unit tests.
And made translation fixes.

### Friday

Today I worked on the Debian packaging to allow symfony v5 to be installed with our package.
And made a PR to remove 2 near to useless symfony dev deps.
Also did some research to use another DI system.

### Saturday

I worked on improving the quality of release bundles by writing a better check script and removing non needed files.
Also updated the CI of shapefile to add PHP 8.1 and removed non needed files from the vendor bundle.

### Sunday

__off__

## Fourth week (25)

### Monday (21/06/2021)

### Tuesday

### Wednesday

### Thursday

### Friday

### Saturday

### Sunday
