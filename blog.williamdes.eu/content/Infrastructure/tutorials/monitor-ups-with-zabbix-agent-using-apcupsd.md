+++
title = "Monitoring an UPS using Zabbix and Apcupsd"
date = 2024-05-07T16:59:00+00:02
updated = 2026-11-13T00:00:00+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "Monitoring an UPS using Zabbix and Apcupsd"
keywords = ["infra-tutorial", "Zabbix"]
category = "Tutorial"
images = []
banner_path = "static/Infrastructure/tutorials/Zabbix-UPS-Apcupsd-latest-data.jpg"

[taxonomies]
tags = ["infra-tutorial", "Zabbix"]
+++

Monitoring my Eaton Ellipse PRO 650 on Zabbix with Zabbix agent and Apcupsd.

<!-- more -->

This is how to monitor an Eaton Ellipse PRO 650 with Zabbix using Zabbix agent and Apcupsd.

## Required

- Have `zabbix-agent2` installed on your node and you will need a Zabbix server somewhere.
- And also install `jq`.
- And of course you will need a configured `apcupsd`, Ubuntu has a good tutorial for that.

### Check everyting is setup

```sh
$ apcupsd --version
apcupsd 3.14.14 (31 May 2016) debian
$ jq --version
jq-1.6
$ zabbix_agent2 --version
zabbix_agent2 (Zabbix) 6.4.13
```

### Config files

Create `/etc/zabbix/zabbix_agent2.d/userparameter_apcupsd.conf`

With:

```json
UserParameter=apcupsd,apcaccess | jq -s -R -f /etc/zabbix/zabbix_agent2.d/apcupsd_filter.jq
```

Create `/etc/zabbix/zabbix_agent2.d/apcupsd_filter.jq`

```jq
# See https://linux.die.net/man/8/apcaccess
# Newer versions of jq will have `trim` and some of this mess can be cleaned up
# See: https://github.com/jqlang/jq/issues/3078#issuecomment-2018999435
[

    split("\n")[] # transform input into array
    | split(": ") # where first element has key names
    | select(length==2) # check we have a key and a value
    | (
       # If the value contains some string or if the key is NUMXFERS
       if (.[1] | test("Seconds|Volts|Percent|Minutes|Hz"; "x")) or (.[0] | test("NUMXFERS"; "x"))
                      then
                        {(.[0]|split(" ")[0]):.[1]|split(" ")[0]|tonumber}
                      else
                        {(.[0]|split(" ")[0]): .[1]|rtrimstr(" ")|rtrimstr(" ")}
                      end
       )
]
| add
```

### Check that it works

Run:

```sh
apcaccess | jq -s -R -f /etc/zabbix/zabbix_agent2.d/apcupsd_filter.jq
```

It outputs:

See: [man apcaccess](https://linux.die.net/man/8/apcaccess) for the keys descriptions.

```json
{
  "APC": "001,029,0691",
  "DATE": "2024-04-07 16:38:34 +0200",
  "HOSTNAME": "my-machine",
  "VERSION": "3.14.14 (31 May 2016) debian",
  "UPSNAME": "ET_MYUPS",
  "CABLE": "USB Cable",
  "DRIVER": "USB UPS Driver",
  "UPSMODE": "Stand Alone",
  "STARTTIME": "2024-04-07 14:01:53 +0200",
  "MODEL": "Ellipse PRO",
  "STATUS": "ONLINE",
  "LOADPCT": 10,
  "BCHARGE": 72,
  "TIMELEFT": 34.1,
  "MBATTCHG": 45,
  "MINTIMEL": 30,
  "MAXTIME": 0,
  "OUTPUTV": 233,
  "DWAKE": -1,
  "LOTRANS": 165,
  "HITRANS": 285,
  "ALARMDEL": 30,
  "LINEFREQ": 50,
  "NUMXFERS": 0,
  "TONBATT": 0,
  "CUMONBATT": 0,
  "XOFFBATT": "N/A",
  "STATFLAG": "0x05000008",
  "SERIALNO": "PXXXHXXABD",
  "END": "2024-04-07 16:39:25 +0200"
}
```

### Zabbix setup

Download the template: [Zabbix-UPS-Apcupsd.yaml](../Zabbix-UPS-Apcupsd.yaml)

Import the template in "Data Collection" > "Templates".

Then go to your "Host" and link the template in the "Templates" section.

#### Set the nominal wattage (required)

The template has one required host macro, `{$APC_NOM_WATTS}`. It has no default value on purpose: the watts item stays unsupported until you set it, rather than reporting a plausible but wrong number.

It must be the **watt** rating from the UPS label, not the **VA** rating. A unit sold as "650" is usually 650 VA and 400 W; using 650 over-reports consumption by about 1.6×.

Read it from the device when the driver reports it:

```sh
apcaccess | grep NOMPOWER
```

If your model reports it, the output is in watts:

```
NOMPOWER : 400 Watts
```

If it prints **nothing and exits 1**, the model does not report its rating at all. That is not a broken `apcaccess`: APC's USB HID models, the Ellipse PRO range included, expose 30 fields and `NOMPOWER` is not one of them. Confirm with:

```sh
apcaccess | cut -d: -f1 | tr -s ' '
```

If `NOMPOWER` is absent from that list, the rating cannot be read from the device and must come from the label or the datasheet.

`NOMPOWER` is an apcupsd field, so this only concerns APC units — apcupsd drives APC hardware exclusively. Eaton, MGE and other brands are handled by [NUT](https://networkupstools.org/), where the equivalent value is `ups.realpower.nominal` and is equally absent on many models.

##### Finding it from the UPS display

If the label is out of reach, the display gives it back. `LOADPCT` is measured, so with the watt figure the LCD shows, the nominal is:

```
nominal ≈ LCD watts × 100 / LOADPCT
```

Sample `LOADPCT` over a few seconds before using it, it follows the real load. Without a delay every reading lands in the same second and you get one value repeated:

```sh
for i in 1 2 3 4 5; do
  apcaccess | awk -F: '/^LOADPCT/{gsub(/ /,"",$2); print $2}'
  sleep 2
done
```

On an APC Ellipse PRO 650 the LCD showed 30 W at a steady 8 %: `30 × 100 / 8 = 375`, which is the 400 W rating of that unit — 650 is its VA rating.

Then set it on the host: **Data collection → Hosts → your host → Macros → Inherited and host macros**, and add the macro below:

| measured LCD load | steady `LOADPCT` | set `{$APC_NOM_WATTS}` |
|---|---|---|
| 30 W | 8 % | `400` |
| 100 W | 25 % | `400` |
| 150 W | 37 % | `400` |
| 250 W | 62 % | `400` |

The value is a property of the UPS, not of the load: pick the nominal whose multiplication reproduces the LCD figure, and every row above gives 400.

Check the result against the UPS display. The watts item is `load% × nominal`, rounded by both the device and the LCD, so a few watts of difference is normal:

```
LOADPCT   : 7.0 Percent
7 % × 400 = 28 W        (LCD shows 30 W)
```

If the item shows a number that is far off, the macro is the wrong rating — the load percentage itself is read directly from the device and is reliable.

#### Latest data

Note: some items do not exist on my UPS, they may exist on yours.
Feel free to add some missing [keys](https://linux.die.net/man/8/apcaccess) and contact me to update the template.

An item in the *Not supported* state is not a template bug: `apcupsd` returns only the fields your model exposes, and a dependent item whose JSONPath finds nothing stays unsupported. On an Ellipse PRO, `BATTV` is absent and mains voltage is reported as `OUTPUTV`, not `LINEV`. Disable the items your model does not provide.

![Latest data in Zabbix](../Zabbix-UPS-Apcupsd-latest-data.jpg "Latest data in Zabbix")

### Some notes

I was originally using [cavazquez's Zabbix template](https://github.com/cavazquez/zabbix_template_apcupsd).
