+++
title = "Report for February 2026"
date = 2026-03-07T16:57:00+00:01
updated = 2026-03-07T16:57:00+00:01
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for February 2026.

<!-- more -->

In February I did some server work and merged + reviewed contributions.
I also did some issues triage. And I did a lot of work on the error-reporting server.

## First week (06)

I merged contributions after reviewing them. I also did some issues triage.

## Second week (07)

On the web VM I cleaned up old reports, upgraded the VM to Debian Trixie.
And did back our nginx and PHP configs on a repository. And cleaned up old PHP versions left over.
Upgrading the server meant that I had to upgrade the website to Django 4.2.

I also did sync the code coverage setup across all repositories and did set the token in GitHub actions secrets.

And upgrading the server meant that the error-reporting-server was broken, so I upgraded it to CakePHP 5.0.
The server is now running PHP 7.4.

The phpMyAdmin package on gentoo has more metadata, my pull-request is now merged.

## Third week (08)

I fixed the yarn setup on the web VM. And continued to work on the error reporting server as
there was a lot of broken and deprecated code to fix and migrate.
I merged contributions after reviewing them. I also did some issues triage.

## Fourth week (09)

I merged contributions after reviewing them. I also did some issues triage.
And worked on some fixes and improvements for the error reporting server.
