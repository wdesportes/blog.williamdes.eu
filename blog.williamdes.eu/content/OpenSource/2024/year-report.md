+++
title = "My open-source contributions in 2024"
date = 2024-12-16T20:47:00Z
updated = 2025-01-04T23:38:00Z
category = "OpenSource - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "My open-source contributions in 2024"
keywords = []
category = "Reports"
images = []

[taxonomies]
tags = ["OSS-report"]
+++

My open-source contributions in 2024

<!-- more -->

This a summary of my main open-source activities and contributions in 2024.

## January

I was one of the first users to build [Zed](https://zed.dev) on Linux.
That needed quite some work that awesome contributors did.
But I made a small one line PR to help: [#6866](https://github.com/zed-industries/zed/pull/6866)

[Zed](https://zed.dev) is now my full time IDE, I never open vscode anymore.

I also updated some repositories at sudo-bot:
- [New docker version of openldap v2.2.6](https://github.com/sudo-bot/docker-openldap/releases/tag/v2.2.6-1)
- [New docker version of phpldapadmin v1.2.6.7](https://github.com/sudo-bot/docker-phpldapadmin/releases/tag/v1.2.6.7-1)

At phpMyAdmin the only commits where two PR merges: [January commits](https://github.com/phpmyadmin/phpmyadmin/commits?author=williamdes&since=2024-01-01&until=2024-02-01)

## February

I contributed to [obliviate](https://github.com/pmarino90/obliviate/pulls?q=is%3Apr+author%3Awilliamdes+is%3Aclosed) with some code improvements, updates and performance fixes. Obliviate is a tool to delete files based on some simple criteria. You can use it to remove old Downloaded files.
That tool was needed to help self hosting Sentry. I needed to deleted millions of outdated files on a cron task.

I also managed to push some fixes to my project [wdes/mail-autodiscover-autoconfig](https://github.com/wdes/mail-autodiscover-autoconfig/releases/tag/v1.6.1) and get them released.

## March

On the security side, I decided to move my project into my `@wdes` org: [discussions](https://github.com/wdes/security/discussions/224)

At phpMyAdmin the only commit was to fix a small bug in the cURL detection: [March commits](https://github.com/phpmyadmin/phpmyadmin/commits?author=williamdes&since=2024-03-01&until=2024-04-01)

## April

The payment provider a client uses can not get their code right, so I fixed it: [commits](https://github.com/Mangopay/mangopay2-php-sdk/commits?author=williamdes&since=2024-04-01&until=2024-05-01)

At phpMyAdmin I pushed quite some PR merges and some small fixups: [April commits](https://github.com/phpmyadmin/phpmyadmin/commits?author=williamdes&since=2024-04-01&until=2024-05-01)
I also did some work on the phpMyAdmin docker repo: [April commits](https://github.com/phpmyadmin/docker/commits?author=williamdes&since=2024-04-01&until=2024-05-01)
And also phpMyAdmin some website fixes: [April commits](https://github.com/phpmyadmin/website/commits?author=williamdes&since=2024-04-01&until=2024-05-01)

## May

At RoundCube I did more fixing for the auto install of composer dependencies: [PR #250](https://github.com/roundcube/roundcubemail-docker/pull/250).
And improved their docker layers with a bit more security: [PR #251](https://github.com/roundcube/roundcubemail-docker/pull/251)

At phpMyAdmin the only commit was a sql-parser PR merge: [May commits](https://github.com/phpmyadmin/sql-parser/commits?author=williamdes&since=2024-05-01&until=2024-06-01)

At Wdes I built [a new tool](https://github.com/wdes/ipmitool-dcmi-power-reading) for my servers, using `DCMI` to read their power consumption: [May commits](https://github.com/wdes/ipmitool-dcmi-power-reading/commits?author=williamdes&since=2024-05-01&until=2024-06-01).
The tool that I was using: `racadm` was quite too much to read power consumption, it was slow and did errors when a session was already open.

## June

At Wdes I improved my `wdes/simple-php-model-system` project: [June commits](https://github.com/wdes/simple-php-model-system/commits?author=williamdes&since=2024-06-01&until=2024-07-01).
This is a quite simple implementation of the active record pattern.

And also improved `wdes/dns-ptr-resolver`: [June commits](https://github.com/wdes/dns-ptr-resolver/commits?author=williamdes&since=2024-06-01&until=2024-07-01).
This tool is very easy to use when you need to reverse DNS some IPs.

## July

To refresh the tool kcov in Debian I made upstream contributions to [SimonKagstrom/kcov](https://github.com/SimonKagstrom/kcov/pulls?q=is%3Apr+author%3Awilliamdes+is%3Aclosed). Simon was very nice and PRs got merged quickly. This ride started on another repo I was depending on, where [I updated the docker image](https://github.com/shellspec/kcov-docker/pull/1). I was also able to update: [sudo-bot/action-kcov](https://github.com/sudo-bot/action-kcov/commits?author=williamdes&since=2024-07-01&until=2024-08-01) since that was my main goal.

I also started contributing to [stalwartlabs/mail-server](https://github.com/stalwartlabs/mail-server/pull/598), this will soon be my main mailserver.

And I did some Debian work, that required that I update PHPUnit on upstream repositories. More PRs got merged.

## August

The payment provider a client uses can still not get their code right, so I fixed it: [PR #654](https://github.com/Mangopay/mangopay2-php-sdk/pull/654). That was quite a nasty bug in producton, and they where slow to ACK & merge it.

For phpMyAdmin I worked on updating our official Docker image: [PR #17398 (docker-library)](https://github.com/docker-library/official-images/pull/17398)

For acme.sh I did a small fix that was merged very quickly: [PR #5252](https://github.com/acmesh-official/acme.sh/pull/5252).
It will help users that use the `--stateless` mode find their `ACCOUNT_THUMBPRINT`.

## September

I made [some contrbutions](https://github.com/bladestan/bladestan/pulls?q=is%3Apr+author%3Awilliamdes+is%3Aclosed) to bladestan.
An extension of phpstan for blade templates. I made it learn some news syntaxes. This was my first phpstan related contribution.

At Wdes I made quite some work on [wdes/security](https://github.com/wdes/security/commits?author=williamdes&since=2024-09-01&until=2024-10-01) where I tried to re-write my code to Actix.

I also did setup Gotify, and made a PR to [zabbix-to-gotify-alert](https://github.com/denisgolius/zabbix-to-gotify-alert/pull/2) to only rely on existing Zabbix features.

## October

For phpMyAdmin I made a small website fix: [October commits](https://github.com/phpmyadmin/website/commits?author=williamdes&since=2024-10-01&until=2024-11-01)

## November

For phpMyAdmin I did get back our documentation building and working with the pretty read the docs theme: [November commits](https://github.com/phpmyadmin/phpmyadmin/commits?author=williamdes&since=2024-11-01&until=2024-12-01)

## December

For Debian I did upstream some work to get Matomo packaged into Debian. That required some fixes to be sent upstream: [matomo PRs](https://github.com/matomo-org/matomo/pulls?q=is%3Apr+author%3Awilliamdes+is%3Aclosed).
And for the package I maintain and to help the PHP 8.4 transition in Debian, I did some fixes to `zumba/json-serializer` [PR #62](https://github.com/zumba/json-serializer/pull/62).

For phpMyAdmin I worked on making the demo server install from a release bundle.
And added revision info to the `revision-info.php` file so it could handle what was stored in the `.git` folder.
Now demo server deployments do not need git have a git folder in the deployed result.

[December commits for phpMyAdmin](https://github.com/phpmyadmin/phpmyadmin/commits?author=williamdes&since=2024-12-01&until=2025-01-01) and [phpmyadmin/scripts commits](https://github.com/phpmyadmin/scripts/commits?author=williamdes&since=2024-12-01&until=2025-01-01).
