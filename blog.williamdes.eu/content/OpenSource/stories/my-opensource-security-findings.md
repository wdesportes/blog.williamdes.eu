+++
title = "My open-source security findings from 2018 to 2023"
date = 2026-05-22T12:43:28+02:00
updated = 2026-05-22T12:43:28+02:00
category = "OpenSource - security"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_author = "Claude Opus 4.7 (1M context)"
co_author_url = "https://www.anthropic.com/claude"
headline = "A short tour of the five CVEs I have publicly disclosed in open-source projects, from a 2018 XSS in phpMyAdmin to a 2023 path traversal in resumable.php."
keywords = ["security", "CVE", "phpMyAdmin"]
category = "Security discovery"
images = []

[taxonomies]
tags = ["OSS-security", "OSS-story", "phpMyAdmin"]
+++

<!--
Guidelines for editing this post:
- When a CVE has a vendor advisory (PMASA for phpMyAdmin, GHSA for GitHub-hosted), always pair them on the same line: `**CVE-XXXX-YYYYY** / **[PMASA-YYYY-N](url)** — fixed in phpMyAdmin X.Y.Z.`
- For phpMyAdmin CVEs, always use the full form "fixed in phpMyAdmin X.Y.Z" (with the project name), not just "fixed in X.Y.Z".
- Keep entries chronological (oldest first); one H2 per year (or year-grouped theme).
- Link to other posts on this blog using Zola's `@/path/to/post.md` syntax; full URLs for external sources.
- Dates in DD/MM/YYYY format.
- Update the title's year range and the headline when adding new disclosures; the URL slug stays version-free.
- Always bump the `updated` field in the frontmatter when editing this post; use the current `Europe/Paris` offset (e.g. `2026-05-22T12:40:50+02:00`).
-->

A short tour of the five CVEs I have publicly disclosed in open-source projects, from a 2018 XSS in phpMyAdmin to a 2023 path traversal in resumable.php.

<!-- more -->

I joined the [phpMyAdmin team](https://www.phpmyadmin.net/team/) on the `27/08/2018`. A lot of my early security work is on that codebase, and in particular on one feature: the Designer. I ended up coming back to it more than once.

## 2018 — XSS in the Designer

My first publicly credited disclosure. A specially crafted database name could be reflected in the Designer feature and execute as JavaScript in the browser.

- **CVE-2018-12581** / **[PMASA-2018-3](https://www.phpmyadmin.net/security/PMASA-2018-3/)** — fixed in phpMyAdmin 4.8.2.

## 2019 — Two SQL injections in the Designer

The same surface area came back, this time as something more serious. Both bugs are triggered through crafted database names in the Designer and were rated `serious` by the phpMyAdmin security team.

- **CVE-2019-11768** / **[PMASA-2019-3](https://www.phpmyadmin.net/security/PMASA-2019-3/)** — fixed in phpMyAdmin 4.8.6.
- **CVE-2019-18622** / **[PMASA-2019-5](https://www.phpmyadmin.net/security/PMASA-2019-5/)** — same class of bug but covering a different version range (including the 4.7.x line and 4.9.x prior to 4.9.2); fixed in phpMyAdmin 4.9.2.

To be honest, my method was unscientific: I tested with every weird character I could think of in database names until something broke. It kept breaking.

## 2022 — Two-factor authentication bypass

A sequence of actions an already-authenticated user could perform to circumvent their own 2FA protections. The phpMyAdmin team rated this `low` severity because the attacker needed valid credentials first, but it was still a real bypass and worth fixing.

- **CVE-2022-23807** / **[PMASA-2022-1](https://www.phpmyadmin.net/security/PMASA-2022-1/)** — fixed in phpMyAdmin 4.9.8 and 5.1.2.

## 2023 — Path traversal in dilab/resumable.php

On the `07/12/2023` I reported an arbitrary file write bug in [dilab/resumable.php](https://github.com/dilab/resumable.php), the PHP back-end for resumable.js. I noticed something off in my own unit tests — the code was managing to write outside its test folder — and from there I built a small proof of concept (a path like `../../test-hack.txt` in `resumableFilename` and `resumableRelativePath`) and emailed the author. After the fix, I opened a CVE request via MITRE.

- **CVE-2023-52086** — GitHub advisory: [GHSA-pg6w-hq9f-wfwr](https://github.com/advisories/GHSA-pg6w-hq9f-wfwr).
- Original report: [dilab/resumable.php#34](https://github.com/dilab/resumable.php/issues/34).
- Fix in the upstream: [dilab/resumable.php#27](https://github.com/dilab/resumable.php/pull/27).
- Also fixed in my own fork [code-lts/resumable.php](https://github.com/code-lts/resumable.php) — commits [d3552ef](https://github.com/code-lts/resumable.php/commit/d3552efd403e2d87407934477eee642836cab3b4) ("Fix remote file overwrite and arbitrary file injection in the file system") and [7e7697f](https://github.com/code-lts/resumable.php/commit/7e7697f60f1089f060c87d888c9ef114dfcef00f) ("Security fix n°2 - make chunk names safe too"), both shipped in [v1.0.0](https://github.com/code-lts/resumable.php/releases/tag/v1.0.0).
- I wrote a dedicated post about it: [CVE-2023-52086 - My security gift for the end of the year 2023](@/OpenSource/2023/12/report.md).

Depending on the version of the back-end, the attack could either overwrite existing files or write new files outside the intended directory.

## Closing notes

Five CVEs over five years is not a lot in the grand scheme of bug-hunting, but they are all real bugs in widely-deployed PHP code, fixed by responsive maintainers. To everyone who triaged my reports, replied to my emails, and shipped the fixes: thank you. That responsiveness is what makes coordinated disclosure worth doing.
