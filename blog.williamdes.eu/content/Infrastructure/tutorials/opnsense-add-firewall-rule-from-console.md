+++
title = "Add a rule manually to OPNsense firewall"
date = 2024-04-13T11:40:00+00:02
updated = 2024-04-13T11:40:00+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "Add a rule manually to OPNsense firewall"
keywords = ["infra-tutorial", "OPNsense"]
category = "Tutorial"
images = []

[taxonomies]
tags = ["infra-tutorial", "OPNsense"]
+++

Add a rule manually to OPNsense firewall

<!-- more -->

You may be blocked from accessing your OPNsense firewall UI and need to add a rule to list yourself.

Be sure to check out the [BSD pfctl cheatset](https://www.openbsdhandbook.com/pf/cheat_sheet/).

Note: I figured out "quick" is the floating rules table.

```sh
# List all existing rules
pfctl -sr > existingrules.txt
# Replace with your IPv4 or IPv6
echo "pass in quick from 2a01:123:abc:ffff::0777:123 to any" | cat existingrules.txt - | pfctl -f -
# Remove temp file
rm -v existingrules.txt
```

An alternative solution is to disable packet filter:

```sh
# Disable the firewall
pfctl -d
# Enable the firewall (after you added the rules in the UI)
pfctl -e
```
