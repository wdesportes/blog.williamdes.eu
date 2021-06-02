+++
title = "Report for May 2021"
date = 2021-05-01T12:00:00Z
updated = 2021-06-01T11:50:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for May 2021.

<!-- more -->

## First week (18)

_Not working on the project_

Issue and pull request triage.

## Second week (19)

_Not working on the project_

Issue and pull request triage.

## Third week (20)

_Not working on the project_

Issue and pull request triage.

## Fourth week (21)

_Not working on the project_

On the week-end I did the setup of Sentry to manage our error reports.
And finished the code I had prepared on the error reporting server to forward the reports to Sentry.
Also fixed a security issue on the error reporting server that was of no severity since the code was yet not used.
Now it is fixed and used. I built a secure unique ID to identify anonymously our users reports (just to make a near to true counter that says how many users are affected by a bug).
(it's not possible to get back the user IP without the secret that is on our server, and if you had access to the secret stealing it would require more time to get back to the original value, this would just not be worth it for an IP).
