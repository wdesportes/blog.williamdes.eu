+++
title = "CVE-2023-52086 - My security gift for the end of the year 2023"
date = 2023-12-07T12:00:00Z
updated = 2023-12-31T23:59:00Z
category = "OpenSource - security"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "CVE-2023-52086 - My security gift for the end of the year 2023"
keywords = ["security"]
category = "Security discovery"
images = []

[taxonomies]
tags = ["OSS-security"]
+++

CVE-2023-52086 - My security gift for the end of the year 2023.

<!-- more -->

I discovered this vulnerability in my brain while thinking about what was wrong in my unit tests.
I realized that the code managed to write in the parent folder of my tests folder.
So I made a very simple proof of concept and contacted the author by email.
After a reply and the fixes I did open a CVE request on the MITRE online form.
Some more details can be found on [Vuldb](https://vuldb.com/?id.249067) where I updated the entry.

## The impact

Depending on the version of the PHP back-end used for resumable.js the attacker can write a file on the server if it does not exist.
And if the back-end version of resumable.php is not up to date the attacker can also overwrite any file.
