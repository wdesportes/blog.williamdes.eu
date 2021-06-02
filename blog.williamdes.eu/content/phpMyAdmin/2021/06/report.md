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

### Thursday

### Friday

### Saturday

### Sunday

## Second week (23)

### Monday (07/06/2021)

### Tuesday

### Wednesday

### Thursday

### Friday

### Saturday

### Sunday

## Third week (24)

### Monday (14/06/2021)

### Tuesday

### Wednesday

### Thursday

### Friday

### Saturday

### Sunday

## Fourth week (25)

### Monday (21/06/2021)

### Tuesday

### Wednesday

### Thursday

### Friday

### Saturday

### Sunday
