+++
title = "Report for August 2026"
date = 2026-10-07T18:00:00+00:01
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for August 2026.

<!-- more -->

In August I did some issues triage, and spent most of the time on the Debian packaging
of phpMyAdmin.

## First week (32)

I worked on the Debian package of phpMyAdmin: bumped the Standards-Version to 4.7.4 and
the copyright years, fixed the snapshot watch file, and relaxed the psr/http-message
dependency so it accepts v1.1 as well as v2.

I also made create-release.sh publish the full version in the daily snapshot JSON,
read from libraries/classes/Version.php. Until then that JSON carried only the date
and the commit, so Debian's snapshot watch file had to hardcode the release number.
It can now take the version from the JSON itself, which lets `uscan` import a
snapshot under the version it really is — 5.2.4-dev+20260809.e0909b211b mangling to
5.2.4~dev~git20260809.e0909b211b+dfsg, below the eventual 5.2.4 but above the
shipped 5.2.3 — and the number follows the branch on its own.

## Second week (33)

I continued on the Debian package. I added a DEP-8 test reproducing the dbconfig-common
password-policy failure and asserted the root cause, imported a new upstream snapshot
(5.2.4~dev) and replaced the bundled jquery.validate.js with node-jquery-validation.

I also did some cleanup on motranslator (Standards-Version, and removing fields that are
now defaults).

## Third week (34)

**Nothing to report**

## Fourth week (35)

**Nothing to report**

## Fifth week (36)

**Nothing to report**
