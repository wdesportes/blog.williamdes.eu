+++
title = "Report for March 2021"
date = 2021-03-01T12:00:00Z
updated = 2021-03-01T21:22:00Z
category = "phpMyAdmin - reports"
draft = true

[extra]
author = "William Desportes"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for March 2021.

<!-- more -->

## First week (09)

### Monday (01/03/2021)

I worked on writing tests and finding out about a very old bug (phpMyAdmin 3.5.1+).

### Tuesday

I removed the last TravisCI config, and worked on migrating the error report server to a newer cake PHP version.

### Wednesday

More work on migrating to cake PHP 4.

### Thursday

A lot of issue triage and test writing.
Also replaced some deprecated code from the test-suite. And worked on more testing code improvements.

### Friday

I did review/fix and test pull-requests.
Write tests for pull-requests and remove some phpunit deprecations.
Removed and improved some code that related to constants.
I moved out some code and wrote tests for it.

### Saturday

I made bug fixes and test writing to cover the fixes.
Also added a bunch of testing methods to create better tests and all the work ended up into a 3% coverage bump.

### Sunday

_Day off_

## Second week (10)

### Monday (08/03/2021)

I finished my migration to Cake PHP.
Everything is working fine and I fixed a bunch of bugs.

### Tuesday

_Day off_

### Wednesday

I did merge all Twig init code in one place and improve the Twig cache warmup.

### Thursday

I worked on the error reporting server to fix some more bugs.
Also did some Twig code fixes on-top of my work of Wednesday.
I wrote some unit tests for cover more code.
Also worked on removing an exit from our code base and wrote a test for the new function.
And to finish the day I got most of the code of `CreateAddField` class [covered](https://github.com/phpmyadmin/phpmyadmin/commit/58d760b213b496ba1b22e27ccd8d0e4ae4ca2fc0) and discovered [a bug](https://github.com/phpmyadmin/phpmyadmin/issues/16728).

### Friday

I did some bug fixing and investigation.
Also searched for files to remove from the final release bundle.
I made [a fix](https://github.com/phpmyadmin/phpmyadmin/commit/c62e27d6505ce22a36b635548e97f644198d6c11) that removed some bad code that was parsing URLs in a very bad way and modifying them. Now the feature to add and remove order by clauses works fine !

### Saturday

Did a fix for the tcpdf cleaning I had did, could not find any coorect solution because the composer lock has saved the autoload list.
Had to revert my fix at the end of the day.
Also worked on bug fixes.

### Sunday

Closed a bunch of issues and merged some PRs. And issue base cleaning.
And did create bug fixes for some old bugs.

## Third week (11)

### Monday (15/03/2021)

I worked on the error reporting JS code and modal handling that is broken in some corner cases and [made a PR](https://github.com/phpmyadmin/phpmyadmin/pull/16736) for some of the changes.

### Tuesday

I fixed a security bug I had found on the error reporting server and continued making bug fixes and searching for issues to close.
Also merged my work from yesterday and made fixes on the error reporting server.

### Wednesday

### Thursday

### Friday

### Saturday

### Sunday

## Fourth week (12)

### Monday (22/03/2021)

### Tuesday

### Wednesday

### Thursday

### Friday

### Saturday

### Sunday
