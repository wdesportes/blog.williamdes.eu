+++
title = "Report for February 2021"
date = 2021-01-01T12:00:00Z
updated = 2021-01-31T23:41:00Z
category = "phpMyAdmin - reports"
draft = true

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

### Friday

### Saturday

### Sunday

## Third week (07)

### Monday (15/02/2021)

### Tuesday

### Wednesday

### Thursday

### Friday

### Saturday

### Sunday

## Fourth week (08)

### Monday (22/02/2021)

### Tuesday

### Wednesday

### Thursday

### Friday

### Saturday

### Sunday
