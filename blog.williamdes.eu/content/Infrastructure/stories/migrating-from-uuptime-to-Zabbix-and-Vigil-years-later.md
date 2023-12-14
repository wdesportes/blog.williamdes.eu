+++
title = "Migrating from upptime to Zabbix and Vigil"
date = 2023-10-15T15:00:00+00:02
updated = 2023-11-15T04:18:09+00:01

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "In this story"
keywords = ["monitoring", "upptime", "Zabbix", "Vigil"]
category = "Story"
images = []
draft = true

[taxonomies]
tags = ["infra-story", "monitoring", "Zabbix"]
+++

I decided to end the [upptime](https://upptime.js.org/) monitoring experiment and switch to [Vigil](https://github.com/valeriansaliou/vigil) and [Zabbix](https://www.zabbix.com/).

<!-- more -->

### Some story

This story starts with bugs not getting fixed, me wanting to remove NodeJS and getting rid of the way upptime stored it's data.
They used commits in a Git repository, this is very clever but does not scale very well.

The [repository](https://github.com/wdes/status) got way bigger than expected: 241k commits !
For a diff of 486,889 added lines vs 486,161 removed lines.

It ran from February 2021, to the end of July 2022. I did a [few config commits](https://github.com/wdes/status/commits?author=williamdes) but not much more, [the config file](https://github.com/wdes/status/blob/main/.upptimerc.yml) was in yaml.
My last config adjustment was in July 2021, so the monitoring continue to run for one more year without any config changes.

This monitoring experience lasted 1 year and a half.

### The bad stuff

It ran on NodeJS, that's already quite bad in some ways.
But it required GitHub actions to run, and that's way worse because it asked a runner to run a task every minute or bunch of minutes.
This was wasting the ressources other devs could use at GitHub and got my monthly quota to it's end.
And used GitHub pages to host the built result. And did build graphs frequently.

### The security part

It was not very easy to hide everything in ENVs and to do the configuration.

### The lost history

That's not what I wanted this part to be about, but having all the history in Git commits was not easy to take out.
So it was lost, kind of.

What was actually lost is what is the exact story about this migration, I do not remember everything.
So bits and anecdotes are lost, It took me too long to finally decide to write about all this.

### Vigil, my new status page

I did setup Vigil very easily, and my [config is open-source](https://github.com/datacenters-network/status).
You can see my monitoring has similarities from what it was before with upptime.
But this time, I received notification on my Telegram account !

I had asked upptime for more notification channels, but that never landed.
Nowdays upptime seems to have [quite some nice notifiers](https://upptime.js.org/docs/notifications).

The good news: it is written in Rust and is open-source !
It consumes 9 MB of RAM and 0% CPU.
For the network part, it consumes 5 KB in and 700B out.
I host it at [Railway.app](https://railway.app?referralCode=w6eB63) for free.

#### Examples

- [Crisp.chat's status page](https://status.crisp.chat/)
- [Wdes's status page](https://status.wdes.eu/)

### Zabbix, my daily monitoring tool

Zabbix is fully open-source, very slow to answer new tickets but makes updates in a very regular way.
It is written in PHP and other languages.
I did not know a thing about Zabbix and deployed it in my infrastructure in 30 minutes using their docker-compose examples.
They have examples for a lot of [different docker variants](https://github.com/zabbix/zabbix-docker), Ubuntu, Alpine, CentOS.

You can use PostgresSQL or MySQL/MariaDB to host the database.
Years later (since 2021-07-15) and a bunch of servers monitored, the database is not that big.
The top 3 tables are 1GiB, 1GiB and 650MiB for a total of 3.2 GiB on my current setup.
The 5 tables with more rows are between 2 and 11 million lines. They do drop data at some configured dates, so the database keeps history but not too long.

#### Different monitoring methods

Zabbix can plug into the SNMP port of your server and take out all the data without any config at all.
This is very cool because you can monitor servers without having to write rules or stuff.
It monitors the server out of the box, and warns you about when things go wrong:

- High CPU
- Disk nearly full
- Host was restarted
- More..

You also can install a Zabbix agent on the host to send data to Zabbix.
Not the other way around with SNMP.
With the local Zabbix agent you can even add new values in a very easy way.
For example to add monitoring for an UPS: [reedacus25/zbx-apcupsd on GitHub](https://github.com/reedacus25/zbx-apcupsd#readme).

##### Sending values from code/scripts

If you have an app, and you want some specific metrics: you can use the Zabbix Sender API to send them to Zabbix.
Nothing very complicated, a bunch of lines of code.

For example: `zabbix_sender -z ZabbixHostNameOrIP -k custom-name.key-name -o "value here" -s "ZabbixHostnameNotTheVisibleName"`

### The summary

I am very glad with Vigil and Zabbix, they are two tools that are very easy to use.
And doubt changing tools anytime soon.
