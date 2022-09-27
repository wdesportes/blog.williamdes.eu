+++
title = "Installing Crowdsec on pfSense"
date = 2022-09-26T00:10:00+00:02
updated = 2022-09-27T00:12:29+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "Installing CrowdSec on pfSense"
keywords = ["bouncer", "crowdsec", "security"]
category = "Tutorial"
images = []


[taxonomies]
tags = ["infra-tutorial", "security"]
+++

Installing [CrowdSec](https://www.crowdsec.net/) on pfSense

<!-- more -->

This is how to install [CrowdSec](https://www.crowdsec.net/) on pfSense running freeBSD 12.3.

You will need to check the freeBSD version on your pfSense home page. Then open this [package list](https://pkgs.org/download/crowdsec) in a new browser tab.

### How to install

#### Add pkg

```sh
pkg add https://pkg.freebsd.org/FreeBSD:12:amd64/quarterly/All/crowdsec-1.3.4_1.pkg
```

Follow the post install instructions.

##### For systems running `/var` on tmpfs

To see what running `/var` on tmpfs is about: [screenshot](https://serverfault.com/a/832036/336084)

You will need to change `data_dir` and `db_path` in `/usr/local/etc/crowdsec/config.yaml`.
Set the folder to `/usr/local/crowdsec/data` and create it: `mkdir -p /usr/local/crowdsec/data/`

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

#### Install the service

```sh
curl -# -L -o crowdsec-blocklist-mirror-freebsd-amd64.tgz https://github.com/crowdsecurity/cs-blocklist-mirror/releases/download/v0.0.1/crowdsec-blocklist-mirror-freebsd-amd64.tgz
tar -xzvf crowdsec-blocklist-mirror-freebsd-amd64.tgz -C /tmp
rm crowdsec-blocklist-mirror-freebsd-amd64.tgz
mv /tmp/crowdsec-blocklist-mirror-v0.0.1/config/crowdsec-blocklist-mirror.yaml /usr/local/etc/crowdsec/bouncers/crowdsec-blocklist-mirror.yaml
mv /tmp/crowdsec-blocklist-mirror-v0.0.1/crowdsec-blocklist-mirror /usr/local/bin/
rm -r /tmp/crowdsec-blocklist-mirror-v0.0.1/
```

##### Edit the config

(Source: `/tmp/crowdsec-blocklist-mirror-v0.0.1/install.sh`)

Fetch an API key:

```sh
cscli bouncers add crowdsec-blocklist-mirror-`tr -dc A-Za-z0-9 < /dev/urandom | head -c 8` -o raw
```

Replace `${API_KEY}` in `/usr/local/etc/crowdsec/bouncers/crowdsec-blocklist-mirror.yaml` with the value.

Replace `${CROWDSEC_LAPI_URL}` in `/usr/local/etc/crowdsec/bouncers/crowdsec-blocklist-mirror.yaml` with the value found in `/usr/local/etc/crowdsec/local_api_credentials.yaml`. Most probably `http://127.0.0.1:8080/`.

Create a file `/usr/local/etc/rc.d/crowdsec_blocklist_mirror` with contents:

(inspired by crowdsec-firewall-bouncer's service file)

```sh
#!/bin/sh
#
# PROVIDE: crowdsec_blocklist_mirror
# REQUIRE: LOGIN DAEMON NETWORKING
# KEYWORD: shutdown
#
# Add the following lines to /etc/rc.conf.local or /etc/rc.conf
# to enable this service:
#
# crowdsec_blocklist_mirror_enable (bool):	Set it to YES to enable crowdsec block list mirror.
#					Default is "NO"
# crowdsec_blocklist_mirror_config (str):	Set the bouncer config path.
#					Default is "/usr/local/etc/crowdsec/bouncers/crowdsec-blocklist-mirror.yaml"
# crowdsec_blocklist_mirror_flags (str):	extra flags to run bouncer.
#					Default is ""

. /etc/rc.subr

name=crowdsec_blocklist_mirror
desc="Crowdsec Blocklist Mirror"
rcvar=crowdsec_blocklist_mirror_enable

load_rc_config $name

: "${crowdsec_blocklist_mirror_enable:=NO}"
: "${crowdsec_blocklist_mirror_config:=/usr/local/etc/crowdsec/bouncers/crowdsec-blocklist-mirror.yaml}"
: "${crowdsec_blocklist_mirror_flags:=}"

pidfile=/var/run/${name}.pid
required_files="$crowdsec_blocklist_mirror_config"
command="/usr/local/bin/crowdsec-blocklist-mirror"
start_cmd="${name}_start"

crowdsec_blocklist_mirror_start() {
    /usr/sbin/daemon -f -p ${pidfile} -t "${desc}" -- \
        ${command} -c "${crowdsec_blocklist_mirror_config}" ${crowdsec_blocklist_mirror_flags}
}

run_rc_command "$1"
```

And make it executable: `chmod +x /usr/local/etc/rc.d/crowdsec_blocklist_mirror`

#### Make then start at boot

Add to `/etc/rc.conf.local`:

```ini
crowdsec_blocklist_mirror_enable="yes"
```

Add to the file `/usr/local/etc/rc.d/crowdsec.sh`:

```sh
service crowdsec_blocklist_mirror start
```

#### Start the services

```sh
service crowdsec_blocklist_mirror start
```

#### Check that it works

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
pkg add https://pkg.freebsd.org/FreeBSD:12:amd64/latest/All/crowdsec-firewall-bouncer-0.0.23.r2_4.pkg
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
