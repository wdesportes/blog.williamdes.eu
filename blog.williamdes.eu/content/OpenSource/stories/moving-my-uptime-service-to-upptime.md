+++
title = "A new uptime service for my infrastructure (upptime)"
date = 2021-02-03T15:00:00Z
updated = 2021-02-24T17:10:00Z

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
retired = true
category = "OpenSource - stories"
headline = "Here is the story of why I did move from my custom made Heroku/Node/TypeScript stats service to upptime."
keywords = ["upptime", "monitoring"]
images = [
    "OpenSource/stories/screenshots/Accueil__wdes-stats___210203_004.jpg",
    "OpenSource/stories/screenshots/Administration___wdes-stats___210203_002.jpg",
    "OpenSource/stories/screenshots/Administration___Serveurs___wdes-stats___210203_003.jpg",
    "OpenSource/stories/screenshots/Statistiques_de_temps_du_serveur__wdes-stats___210203_005.jpg",
    "OpenSource/stories/screenshots/Home_status_Datacenters_network_210203_007.jpg",
    "OpenSource/stories/screenshots/Server_stats_status_Datacenters_network_210203_008.jpg",
]

[taxonomies]
tags = ["OSS-story"]
+++

Here is the story of why I did move from my [custom made](https://github.com/wdes/stats) [Heroku](https://heroku.com)/Node/[TypeScript](https://www.typescriptlang.org/) stats service to [upptime](https://upptime.js.org/).

<!-- more -->

## Some story

Since 2018 I have been using and maintaining my service to monitor my different websites.
My first deploy was on July 2018 and the last one in February 2021, since 2018 I have been maintaining and improving the service.
I flushed the data once and since 2019-02-01 it has been collecting status codes and response times.
Actually 1571311 * 2 rows of data, no downtime. Thank you [Heroku](https://heroku.com) !

Conclusion: this service I built worked quite well and was ugly. I did receive sms notifications when things got up or down.
I am moving to [upptime](https://upptime.js.org/) because it is free, open-source and maintained. And has a very cool UI !

## Technical side

You can find the source code: [here](https://github.com/wdes/stats)

I used [TypeScript](https://www.typescriptlang.org/) over NodeJS with [Sequelize](https://sequelize.org/) as an ORM and migration system.
Also used [node-cron](https://www.npmjs.com/package/node-cron) to make my scheduling work and [twig](https://www.npmjs.com/package/twig) for my templates. And for API docs I used the [apidoc](https://www.npmjs.com/package/apidoc) package that works great.

I was quite pleased about this project and the modules I used, very rarely had bugs.

## Hacky side

I had to prevent the Dyno from sleeping by feeding it requests every 5 minutes using [Uptime Robot](https://uptimerobot.com/).
It is a great tool and I recommend it but having paid features was not for me, so I only kept one for the dyno and built the wdes-stats service.

## Costs side

Total project costs: 0$, 31 months of free Dyno time. Databases for free too.

## Backups

What are you talking about ?? ^^. More seriously I designed a backup button but I never could work because pulling all the data (1.5M rows)was complex on a Dyno and the buffer was quite large and could not handle to keep the data in memory to send it to be my email.
Conclusion: it works on my workstation, not in production.

## Screenshots of the old service

### The homepage

![The wdes-stats homepage](../screenshots/Accueil__wdes-stats___210203_004.jpg "The wdes-stats homepage")

### The admin welcome

(After a GitHub login)

![The wdes-stats admin welcome](../screenshots/Administration___wdes-stats___210203_002.jpg "The wdes-stats admin welcome")

### The servers list

(with a enable/disable button)

![The wdes-stats servers list](../screenshots/Administration___Serveurs___wdes-stats___210203_003.jpg "The wdes-stats servers list")

### A time stats page

(with a pie chart of the status codes)

![The wdes-stats time stats page](../screenshots/Statistiques_de_temps_du_serveur__wdes-stats___210203_005.jpg "The wdes-stats time stats page")

## Mirating to the new service

I did follow the [manual](https://upptime.js.org/docs/get-started) and that was it !
Here it is: [https://status.wdes.eu/](https://status.wdes.eu/)

(did I choose to keep the watermarks, absolutely !)

## Screenshots

### The homepage

![The status upptime homepage](../screenshots/Home_status_Datacenters_network_210203_007.jpg "The upptime homepage")

### A time stats page

(yes, it says it is down and ~~I do not know why for now~~ this is because if you use a custom commit template you can break the parsing, see the issue for that: [here](https://github.com/upptime/upptime/issues/268))

![The upptime time stats page](../screenshots/Server_stats_status_Datacenters_network_210203_008.jpg "The upptime time stats page")
