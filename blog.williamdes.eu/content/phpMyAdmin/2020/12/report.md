+++
title = "Report for December 2020"
date = 2020-12-31T12:00:00Z
updated = 2021-01-13T20:11:45Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for December 2020.

<!-- more -->

(this was re-build from what I could find, the blog did not exist at this time)
(this means some entries could be missing, for ever)

## First week (50)

### Monday

#### phpMyadmin

I did some [code improvement](https://github.com/phpmyadmin/phpmyadmin/commit/0ae5216e283ba80704a34d850ce29a4f690160a1), some bug fixing and [transformed some inline PHP/HTML to twig](https://github.com/phpmyadmin/phpmyadmin/commit/66f38555d4637362082dbe54925261687a5f0fa7).
I removed [a broken link](https://github.com/phpmyadmin/phpmyadmin/commit/f78aa880e7ce614737cba050422ed5f13366b76b) in out documentation and [added PHP typehints](https://github.com/phpmyadmin/phpmyadmin/commit/1d154724a5192addf6015a316b7d7382c77de361).
And some pull-request merging.

### Tuesday -> Wednesday

__Nothing to report__

### Thursday

#### phpMyadmin

I did [sync jqplot plugins from updated-jqplot node package](https://github.com/phpmyadmin/phpmyadmin/commit/a5dc78edac859199b9b9113c02fee810eaca5fe6) and fix out PHP 8.0 testsuite [failing on string vs numbers beeing compared](https://github.com/phpmyadmin/phpmyadmin/commit/4d3ecbe4e71396edc80138202cbfcfa8e5907ef8).

### Friday

#### phpMyadmin

I did [re-build all jqplot files from the updated-jqplot npm package](https://github.com/phpmyadmin/phpmyadmin/commit/afdf57aed25ac54cb48c8d781bd6c512def68bbc), this is very important to have reproductible builds from source. That will help a lot on Debian when we have to re-build files from source to be dfsg compatible. I did some related work on the JS modules management.

### Saturday

#### phpMyadmin

I did fix some PHP 8.0 issues and backports some of my PHP 8.0 fixes. And also made the TravisCI CI go back to green.

### Sunday

#### phpMyadmin

I did merge two very good pull-requests that fixed some previously merged code.

## Second week (51)

### Monday

#### Other

The [desportes infrastructure](https://github.com/desportes/infrastructure) project was exported as an open-source project.

### Tuesday -> Thursday

__Nothing to report__

### Friday

#### phpMyadmin

I made some [phpdoc changes](https://github.com/phpmyadmin/phpmyadmin/commit/fb5d6159af9fd9f7b6859b42d6b31528d89f7514) after running Doctum. And also did fix some [phpstan errors](https://github.com/phpmyadmin/phpmyadmin/commit/b4f1e14e8025def8bb047bdc6797aeeb581e1b0f).

#### Other

This is my last day (18/12/2020) at my job, horray !

### Saturday

#### phpMyadmin

I did some changes on the new `QA_5_1` branch to prepare it as a QA branch and opened an issue at Weblate to warn about some docker issues.

#### Other

At [desportes infrastructure](https://github.com/desportes/infrastructure) I adjusted some things.

### Sunday

#### phpMyadmin

I did merge [a pull-request](https://github.com/phpmyadmin/phpmyadmin/commit/ac7abd86129552dce96c46f9941e1ec86b05d757) to fix the CI after my changes to make 5.2.0-dev the new dev version.

## Third week (52)

### Monday

#### phpMyadmin

At `phpmyadmin/phpmyadmin` I did update CodeMirror to 5.59.0, merge some pull-requests and update some JS dependencies.
Also I upgraded the Doctum version and removed some old tricks in the configuration now that Doctum has fixed that.

### Tuesday -> Friday

__Nothing to report__

### Saturday

#### phpMyadmin

At `phpmyadmin/docker` I did merge all the pull-requests that where open and made some documentation improvements.
Now we are near to only use GitHub actions on this repository.

### Sunday

#### Other

At [desportes infrastructure](https://github.com/desportes/infrastructure) I added some fancy things and made the project usable and testable for anyone.

## Fourth week (53)

### Monday

#### Other

At [desportes infrastructure](https://github.com/desportes/infrastructure) I made sending and receiving work fine.

### Tuesday

#### Other

At [desportes infrastructure](https://github.com/desportes/infrastructure) I added a phpunit test suite for the mailserver.

### Wednesday

#### phpMyadmin

I worked on the Debian package `google-recaptcha` to make it clean and follow the Debian rules.
On `phpmyadmin/twig-i18n-extension` I did [edit the PHP 8.0 constraint](https://github.com/phpmyadmin/twig-i18n-extension/commit/aec9e489c66930be87a67a7b511a01b3e61d1a57).

On `phpmyadmin/phpmyadmin` I did merge a [pull-request](https://github.com/phpmyadmin/phpmyadmin/commit/0747f8aca155acf71c693671fddee34e61082292) that removes some old UI tricks to make gradients and I am very happy about that.
I also [updated the psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/64efdebbd3f0791a79730b92aaf5754c87b431d8).

### Thursday

#### phpMyadmin

I worked on the Debian package `google-recaptcha` to make it clean and follow the Debian rules.
I did the same on the `mariadb-mysql-kbs` package.

#### Other

I made a [pull-request](https://github.com/phar-io/phar.io/pull/99) to fix things at phar.io.
And also made a [pull-request](https://github.com/phar-io/phar.io/pull/100) at phar.io to add Doctum and bump copyright years.
At [desportes infrastructure](https://github.com/desportes/infrastructure) I made [user passwords more secure](https://github.com/desportes/infrastructure/commit/81d3f6fe571919a1d23a7283a117a3f4ab5f0b91) by understanding that the sasl plugin does not support more algorithms than `MD5, SMD5, SHA, SSHA, CRYPT`.

### Friday (01/01/2021)

#### phpMyadmin

I worked on the Debian package `google-recaptcha` and `1.2.4-2` was released.

#### Other

At [desportes infrastructure](https://github.com/desportes/infrastructure) I implemented dynamic domain names.

### Saturday

#### phpMyadmin

I worked on the Debian package `google-recaptcha` and `1.2.4-3` was released.
Started some cleaning on `jquery-timepicker` to prepare it for an upload.
Some more cleaning and fixing on `mariadb-mysql-kbs` package and `1.2.11-2` was released.

#### Other

Upstream `mariadb-mysql-kbs` I released a new version after some fixes where done.
I created a pull-request at [docker-mailserver](https://github.com/tomav/docker-mailserver/pull/1737) to fix shebangs and it got merged.
And another [pull-request](https://github.com/tomav/docker-mailserver/pull/1736) to implement manual DKIM domain lists in the config script.
I also worked at [desportes infrastructure](https://github.com/desportes/infrastructure) to make my external domain sending and receiving work.

### Sunday

#### phpMyadmin

I finished cleaning and adjusting `jquery-timepicker` and `1.6.3-1` was released.
At `mariadb-mysql-kbs` for Debian, I prepared the next release.

#### Other

I worked at [desportes infrastructure](https://github.com/desportes/infrastructure) and got everything working after I understood the [issue](https://github.com/tomav/docker-mailserver/issues/1694) about my config for postfix `virtual_alias_domains`.
