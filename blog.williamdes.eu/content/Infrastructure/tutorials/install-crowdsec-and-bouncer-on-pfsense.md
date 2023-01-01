+++
title = "Installing Crowdsec on pfSense"
date = 2022-09-26T00:10:00+00:02
updated = 2023-01-01T14:31:13+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "Installing CrowdSec on pfSense"
keywords = ["bouncer", "crowdsec", "security"]
category = "Tutorial"
images = []
banner_path = "static/Infrastructure/tutorials/crowdsec_logo_large.jpg"

[taxonomies]
tags = ["infra-tutorial", "security"]
+++

Protect pfSense from bad actors/IPs using [CrowdSec](https://www.crowdsec.net/).

<!-- more -->

This is how to install [CrowdSec](https://www.crowdsec.net/) on pfSense running freeBSD 12.3.

To learn more about what is CrowdSec you can look at this [YouTube video from Lawrence Systems](https://www.youtube.com/watch?v=2Ec-FYmK4zg) or look at the [video from CrowdSec](https://www.youtube.com/watch?v=t99cnWYGhdw).

You can find this blog post on [Reddit](https://www.reddit.com/r/PFSENSE/comments/xq6xy6/protect_your_firewall_against_bad_ips_with/) and discuss about it.

### How to install

You will need to check the freeBSD version on your pfSense home page. Then open the [package summary on freshports](https://www.freshports.org/security/crowdsec/#packages) in a new browser tab.

#### Upgrade your setup

If you already did follow my blog post once and want to upgrade crowdsec,
then do: `pkg del crowdsec` and follow the next step below.

#### Add pkg

```sh
pkg add https://pkg.freebsd.org/FreeBSD:12:amd64/latest/All/crowdsec-1.4.3.pkg
```

Follow the post install instructions.

You should adjust `/usr/local/etc/crowdsec/acquis.yaml` and remove non valid files.

##### For systems running `/var` on tmpfs

To see what running `/var` on tmpfs is about: [screenshot](https://serverfault.com/a/832036/336084)

You will need to change `data_dir` and `db_path` in `/usr/local/etc/crowdsec/config.yaml`.
Set the folder to `/usr/local/crowdsec/data/` and create it: `mkdir -p /usr/local/crowdsec/data/`

#### Start the services

```sh
service crowdsec start
```

#### Make it start at boot

Add to `/etc/rc.conf.local`:

```ini
crowdsec_enable="yes"
```

And create a file `/usr/local/etc/rc.d/crowdsec.sh` with contents:

```sh
service crowdsec start
```

Make it executable: `chmod +x /usr/local/etc/rc.d/crowdsec.sh`.

Reference: [pfSense documentation on boot scripts](https://docs.netgate.com/pfsense/en/latest/development/boot-commands.html#shell-script-option)

#### Look at your logs

```sh
tail -f /var/log/crowdsec*
```

(You can logout/login to make cscli work withour the full path needed.)
Find where the CLI is located:

```sh
find / -name cscli
```

#### Enrol the instance using `cscli`.

```sh
/usr/local/bin/cscli console enroll xxxxxxxxxxxxxxxxxx
```

#### See the enrolled instance

![instance on the dashboard at app.crowdsec.net](../crowdsec_dashboard_pfsense_instance.jpg "instance on the dashboard at app.crowdsec.net")

#### Add scenarios

Example:

```sh
cscli scenarios list
cscli scenarios list -a
cscli scenarios install crowdsecurity/postfix-spam
cscli scenarios install crowdsecurity/dovecot-spam
```

### Use the blocklist mirror service

Reference: [official install docs](https://docs.crowdsec.net/docs/bouncers/blocklist-mirror/) and [crowdsec blog](https://www.crowdsec.net/blog/integrating-crowdsec-with-firewall-appliances).

Source code: [GitHub](https://github.com/crowdsecurity/cs-blocklist-mirror)

#### Uninstall the manual method provided by my blog

```sh
service crowdsec_blocklist_mirror stop
rm /usr/local/etc/rc.d/crowdsec_blocklist_mirror
rm /usr/local/etc/crowdsec/bouncers/crowdsec-blocklist-mirror.yaml
rm /usr/local/bin/crowdsec-blocklist-mirror

cscli bouncers list
cscli bouncers remove crowdsec-blocklist-mirror-REPLACE_ME

# Remove the blocklist enable line in /etc/rc.conf.local
# Remove the service line in /usr/local/etc/rc.d/crowdsec.sh
```

#### Install the service

You will need to check the freeBSD version on your pfSense home page. Then open the [package summary on freshports](https://www.freshports.org/security/crowdsec-blocklist-mirror/#packages) in a new browser tab.

##### Add pkg

```sh
pkg add https://pkg.freebsd.org/FreeBSD:12:amd64/latest/All/crowdsec-blocklist-mirror-0.0.1.pkg
```

Follow the post install instructions.

#### Make then start at boot

Add to `/etc/rc.conf.local`:

```ini
crowdsec_mirror_enable="yes"
```

Add to the file `/usr/local/etc/rc.d/crowdsec.sh`:

```sh
service crowdsec_mirror start
```

#### Start the services

```sh
service crowdsec_mirror start
```

#### Check that it works

If there is no IPs, run: `service crowdsec restart` and re-try.

```sh
curl http://127.0.0.1:41412/security/blocklist
```

#### Add a firewall alias

Go to: `Firewall` > `Aliases` > `URLs` and click on `+ Add`.
The type is: `URL Table (IPs)`.

Do like on the screenshot using the URL we tried earlier and the save.

![Adding a firewall URL alias for CrowdSec on pfSense](../crowdsec_pfsense_add_url_alias.jpg "Adding a firewall URL alias for CrowdSec on pfSense")

#### Add a firewall rule

Go to: `Firewall` > `Rules` > `Interface name for Internet` and click on `Add`.
The source is `Single host and alias` and the type the name of the firewall aslias you created earlier.
Do like on the screenshot and save. Then apply the changes.

![Adding a firewall rule on the network interface for CrowdSec on pfSense](../crowdsec_pfsense_add_firewall_rule.jpg "Adding a firewall rule on the network interface for CrowdSec on pfSense")

### Or use the firewall bouncer (does it work on pfSense ?)

This is an alternative to using the blocklist mirror service.
I could not figure out how to know that it actually works.

#### Add pkg

```sh
pkg add https://pkg.freebsd.org/FreeBSD:12:amd64/latest/All/crowdsec-firewall-bouncer-0.0.23.r2_6.pkg
```

Follow the post install instructions.

#### Make then start at boot

Add to `/etc/rc.conf.local`:

```ini
crowdsec_firewall_enable="yes"
```

#### Start the services

```sh
service crowdsec_firewall start
```

Add to the file `/usr/local/etc/rc.d/crowdsec.sh`:

```sh
service crowdsec_firewall start
```
