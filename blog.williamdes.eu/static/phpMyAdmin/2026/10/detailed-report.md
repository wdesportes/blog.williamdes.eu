# Consulting Services for phpMyAdmin

## Report - October 2026

## Overview

October was the busiest month of the year and the most varied: a sql-parser
release, packaging work on docker and motranslator, website fixes, and the bulk
of the time on migrating the error-reporting-server to a newer version.

## First week (42)

The week went on sql-parser packaging: a new upstream version 5.11.2, the Debian
changelog, dropping the phpunit patch that is no longer needed, patching and then
skipping a failing test class, the Standards-Version bump to 4.7.4, and removing
the now-default Rules-Requires-Root and Priority fields. Sent as 5.11.2-1 to
unstable.

## Second week (43)

Most of the week went on packaging. On **docker** I scoped the Docker Hub
credentials to an environment instead of exposing them to every job, and made the
images mirrored into the legacy namespace without creating tags that do not exist
there — plus a GitHub actions bump.

On **motranslator** I worked the 6.0.x and 5.4.x branches: requiring the patched
symfony/expression-language versions, fixing the plural form selection for boolean
plural expressions, an error on translation failure, `Translator::exist` for plural
strings, and the matching CHANGELOG entries.

On the main repository I merged several documentation contributions — detection of
the bundled documentation ([#20564](https://github.com/phpmyadmin/phpmyadmin/pull/20564)),
obsolete browser FAQ entries with a demo fix
([#20573](https://github.com/phpmyadmin/phpmyadmin/pull/20573)), and a FAQ typo plus
the Servers compress option clarified
([#20574](https://github.com/phpmyadmin/phpmyadmin/pull/20574)) — and I dropped the
obsolete FAQ entry about duplicate values.

I also added an `--update` mode to locales-contributors, passed shellcheck on it,
and used it to regenerate the credits. Two bugs surfaced there: the script never
listed a contributor, and the credits carried a Deleted User placeholder.

## Third week (44)

The bulk of this week went to **error-reporting-server**, migrating it to the
**CakePHP 5** skeleton: adapting the layouts, dropping the flash layout that the
new skeleton does not have, removing the declared content type on empty answers,
not testing the query type of a route, and shipping the server setup and GitHub
webhook documentation as separate files under docs/. Around fifty commits.

I also merged contributions on the main repository and fixed an anchor on the
snapshot pages of the website.

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 43

- [60f122d11e - Merge #20564 - Fix detection of the bundled documentation](https://github.com/phpmyadmin/phpmyadmin/commit/60f122d11e79effa4acfb4c3a10e43d7b942e982)
- [c797aa8f62 - docs: update credits using "locales-contributors --update"](https://github.com/phpmyadmin/phpmyadmin/commit/c797aa8f624e9bfcab41158766ed44b76a93e254)
- [9db6360685 - docs: update credits using "locales-contributors --update"](https://github.com/phpmyadmin/phpmyadmin/commit/9db6360685388798c3b21f74c6f86fb258976f0d)
- [d59788207f - locales-contributors: add --update and pass shellcheck](https://github.com/phpmyadmin/phpmyadmin/commit/d59788207f44725ecb1afbf816930a5b1653740a)
- [7b7809fa3a - Fix locales-contributors never listing a contributor](https://github.com/phpmyadmin/phpmyadmin/commit/7b7809fa3a8ce30fce4a53e339a73326f70ec7e5)
- [e2624b5712 - docs: drop the Deleted User placeholder from the credits](https://github.com/phpmyadmin/phpmyadmin/commit/e2624b571219bd04d8e3897039588c8877f4ded5)
- [3f1d573e47 - docs: credit Daniel Hinostroza, MD as a Spanish translator](https://github.com/phpmyadmin/phpmyadmin/commit/3f1d573e4731bbcb95f8d310a7f0c7ae85fbaa3c)

- [221ef75197 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/221ef75197dd36f01c4a53140c495d265d083c4c)
### Week 44

- [7e1292d3d8 - Fix the FAQ 3.10 wording about duplicate values](https://github.com/phpmyadmin/phpmyadmin/commit/7e1292d3d8643cbbf146c85ab2b137f1df9f656c)
- [d5adf4ea29 - Merge #20574 - docs: fix FAQ typo and clarify Servers compress option](https://github.com/phpmyadmin/phpmyadmin/commit/d5adf4ea2970e8395d80986e55ff8d8a298456cc)
- [74f4e04326 - Merge #20573 - docs: withdraw obsolete browser FAQ entries and fix demo link](https://github.com/phpmyadmin/phpmyadmin/commit/74f4e04326fc84fd6c516168544c9a928393a758)

## phpmyadmin/docker (GitHub)

### Week 43

- [4f7341b000 - Scope Docker Hub credentials to an environment](https://github.com/phpmyadmin/docker/commit/4f7341b000fc1baf20b9b561c625ba6ab8870d75)
- [0342fe1801 - Merge #471 - Bump GitHub actions](https://github.com/phpmyadmin/docker/commit/0342fe18018a55a3ae152369677e30e977f0247c)
- [cd129efa25 - Do not create tags that are missing from the legacy namespace](https://github.com/phpmyadmin/docker/commit/cd129efa25afc7373aee8551663ad50ad49add3e)
- [d607ea30bc - Mirror the official images into the legacy namespace](https://github.com/phpmyadmin/docker/commit/d607ea30bc9e4f86994af6213ff20d3fb245d904)
- [0b073f4d8f - Bump GitHub actions](https://github.com/phpmyadmin/docker/commit/0b073f4d8f68d5e7ea21619109da9311c9d58086)

## phpmyadmin/website (GitHub)

### Week 44

- [9a1840a005 - Add an anchor to snapshots `#snapshots` on download page](https://github.com/phpmyadmin/website/commit/9a1840a005292617d3e2b18dbeeffba8dd38f264)

## phpmyadmin/motranslator (GitHub)

### Week 43

- [224ff77a9c - Require patched symfony/expression-language versions](https://github.com/phpmyadmin/motranslator/commit/224ff77a9cdf7b873b77a6571fd7e4b68c47be18)
- [1ba5f5579f - Fix the plural form selection for boolean plural expressions](https://github.com/phpmyadmin/motranslator/commit/1ba5f5579f0f1ba5befd9c975610b304d5494a87)
- [2e84c62eb8 - Require patched symfony/expression-language versions](https://github.com/phpmyadmin/motranslator/commit/2e84c62eb8b10d59ca1698f84c11e0656992e0f8)
- [1020fc1855 - Add a CHANGELOG entry for the merged pull-requests](https://github.com/phpmyadmin/motranslator/commit/1020fc1855cf1acc49ab81e18147feaed03d2109)
- [6de8db131d - Merge #67 - Allow checking plural strings with Translator::exists()](https://github.com/phpmyadmin/motranslator/commit/6de8db131deccca10dc72ff86e3e5795e603dfed)
- [2cdcfc3c24 - Merge #57 - added error on translation fail](https://github.com/phpmyadmin/motranslator/commit/2cdcfc3c24fbab342748da862ebf69e993e29e0d)
- [cae0ec209e - Fix coding standard and add tests for translation errors](https://github.com/phpmyadmin/motranslator/commit/cae0ec209ee09a1f2d2b6fa85b7075169d0f895c)
- [03b6330edf - Remove the stale foreach.valueOverwrite baseline entry](https://github.com/phpmyadmin/motranslator/commit/03b6330edf749b448691f2a3c7a0a9b60b062496)
- [5d62255480 - Fix the PHPStan analyse job by renaming the loop variable so that the parameter is not overwritten](https://github.com/phpmyadmin/motranslator/commit/5d622554809b4def1d4a517b62eea7daa4ab3ec5)

- [3fd7eb15b6 - Merge branch '6.0.x'](https://github.com/phpmyadmin/motranslator/commit/3fd7eb15b61098a7a18015aeb8a3c76c76ab97b9)
- [9bed787b3a - Merge branch '5.4.x' into 6.0.x](https://github.com/phpmyadmin/motranslator/commit/9bed787b3a30f1be4ce4138e408700f1800cb1ae)
- [bb9900f3a0 - Merge branch '5.4.x'](https://github.com/phpmyadmin/motranslator/commit/bb9900f3a0c7954859dd16d2b8f91af889709a0d)
## phpmyadmin/error-reporting-server (GitHub)

### Week 44

- [8b22ef74c2 - Install the development dependencies in the Scrutinizer analysis](https://github.com/phpmyadmin/error-reporting-server/commit/8b22ef74c27038778e997a3b817d6f0eb0f9f109)
- [784da1a324 - Do not test the type of the query of a route](https://github.com/phpmyadmin/error-reporting-server/commit/784da1a324e8dc13a89e0aa5b2cff9bd039f659e)
- [b81ffe5ff2 - Use the layout syntax of the CakePHP 5 skeleton](https://github.com/phpmyadmin/error-reporting-server/commit/b81ffe5ff20153726b41e66804e69b02ac59cda5)
- [a03360cda9 - Remove the flash layout, the CakePHP 5 skeleton does not have it](https://github.com/phpmyadmin/error-reporting-server/commit/a03360cda98dd553c5e42b70c3be41c857933961)
- [415276f06c - Do not ship the docs directory in the distribution archives](https://github.com/phpmyadmin/error-reporting-server/commit/415276f06cd9a908c0762d1251c1b11706844067)
- [e1fdd2031d - Move the web server setup to docs/server-setup.md and one file per server](https://github.com/phpmyadmin/error-reporting-server/commit/e1fdd2031d3248253ea2a6805082c3cd0bd31d3c)
- [a74a99e7ed - Move the GitHub webhook documentation to docs/github-webhook.md](https://github.com/phpmyadmin/error-reporting-server/commit/a74a99e7edd0d171a800e35f7e59c7b21f491967)
- [add2c40d2c - Do not declare a content type for the answers that have no content](https://github.com/phpmyadmin/error-reporting-server/commit/add2c40d2cbec3cc752a2e38eeabe8e228468576)
- [c848805e5d - Check the webhook signature against the request body](https://github.com/phpmyadmin/error-reporting-server/commit/c848805e5dc2cb6228442db65a04664ec05b680f)
- [da8a981738 - Fix the mistakes of the README](https://github.com/phpmyadmin/error-reporting-server/commit/da8a981738c85326b9298e4133917a8a716ed69a)
- [c0a78134b3 - Restore the cron_jobs log scope](https://github.com/phpmyadmin/error-reporting-server/commit/c0a78134b3df0b0ed0419a816b149a3ac03a2b33)
- [53a724f67c - Fix the name of the OAuth example configuration file](https://github.com/phpmyadmin/error-reporting-server/commit/53a724f67cbe4243437f51469a872cd6447499a5)
- [ebd9cb8198 - Document what the GitHub webhook is used for](https://github.com/phpmyadmin/error-reporting-server/commit/ebd9cb8198da703ce1cddc0df98c44ef250f14d9)
- [34991d7fb0 - Ignore the reports of the versions that are not maintained anymore](https://github.com/phpmyadmin/error-reporting-server/commit/34991d7fb012e6ae133418ba35ef2287bf013fd3)
- [d06612dc32 - Set the report and notification fields through the entity API](https://github.com/phpmyadmin/error-reporting-server/commit/d06612dc32b5301c3e02430be09effc27ecbd0dd)
- [1cd1ac67b8 - Make the event id getter return a non null value](https://github.com/phpmyadmin/error-reporting-server/commit/1cd1ac67b8e2b4c7645c199dc336cb6ec5aae35d)
- [2509ac5b31 - Use self for the constant of the command](https://github.com/phpmyadmin/error-reporting-server/commit/2509ac5b3117c183642cb27e0bd59e48550910c6)
- [ebbd9fccc5 - Return an error code instead of exiting the command](https://github.com/phpmyadmin/error-reporting-server/commit/ebbd9fccc5895fb220b006fd0042acf0358074b0)
- [a83970bd5c - Use a docblock the analyzers can read for the signature provider](https://github.com/phpmyadmin/error-reporting-server/commit/a83970bd5c0f119e978cf6b8e1dcca62622892ec)
- [f8759cf74d - Set the developer fields through the entity API](https://github.com/phpmyadmin/error-reporting-server/commit/f8759cf74d2b09d1e74686c07b90831dbef3442c)
- [53c3dd9b1b - Declare the properties of the Report class](https://github.com/phpmyadmin/error-reporting-server/commit/53c3dd9b1bd9f59e851e8221e24aea028e07bb1e)
- [92899d913e - Send the phpstan and phpcs results to Scrutinizer](https://github.com/phpmyadmin/error-reporting-server/commit/92899d913ede253b8c21991f3490f59655646da8)
- [9c128f27b5 - security: Escape the developer name in the header](https://github.com/phpmyadmin/error-reporting-server/commit/9c128f27b512d2b156835109cddd9f7cd0bc2603)
- [25f64143ee - security: Escape the report fields of the report page and its charts](https://github.com/phpmyadmin/error-reporting-server/commit/25f64143eea194212fb83d5a83a07dd053e60fff)
- [c96b5a31f3 - security: Escape the report fields printed by the incident page](https://github.com/phpmyadmin/error-reporting-server/commit/c96b5a31f33eaf0878d62703b5630bd58128a0fb)
- [501ee1e658 - security: Reject the webhook events that are not signed](https://github.com/phpmyadmin/error-reporting-server/commit/501ee1e658c353cc557cb7ee604956767072243a)
- [dc3f00f7ee - security: Do not inject the data tables sort direction into the query](https://github.com/phpmyadmin/error-reporting-server/commit/dc3f00f7eec1b430f04b27e25106737ce5621be1)
- [b3c48c9928 - Remove the unused CakePHP skeleton assets](https://github.com/phpmyadmin/error-reporting-server/commit/b3c48c9928fa669d8b23abcec9bb9fd46ba3a535)
- [12af5b8577 - Remove the obsolete shell instructions from the README](https://github.com/phpmyadmin/error-reporting-server/commit/12af5b85775b9d12277ba47b802e541cd51fd621)
- [8d8f73a2ba - Update the README requirements and test instructions](https://github.com/phpmyadmin/error-reporting-server/commit/8d8f73a2baec19197017f97e7893b2a7c1c1c3eb)
- [c8524257d8 - Test the CI against the MariaDB version of Debian trixie](https://github.com/phpmyadmin/error-reporting-server/commit/c8524257d81544c9fb5ef7a270172790094a94a4)
- [6a3d75c166 - Update the GitHub actions versions](https://github.com/phpmyadmin/error-reporting-server/commit/6a3d75c16615b9c41c42129b9d814b2df1c49395)
- [bd90bcd44b - Fix the configuration file the installer creates](https://github.com/phpmyadmin/error-reporting-server/commit/bd90bcd44b178556d51947a157ba7e1082ded312)
- [bf192fd544 - Remove the duplicate app_example.php configuration file](https://github.com/phpmyadmin/error-reporting-server/commit/bf192fd544a168fa4adb70b53e009be88cf584f1)
- [2b0233ab2d - Use the error handling of the bootstrap shipped by cake](https://github.com/phpmyadmin/error-reporting-server/commit/2b0233ab2df905fd6f6a0f6dd21eed7054b57a48)
- [88eb004787 - Make the related reports test work again](https://github.com/phpmyadmin/error-reporting-server/commit/88eb00478769f7de2e2cc0ce1fb57fba39020be9)
- [45d593d7f7 - Remove the CakePHP 2 leftovers from the reports table](https://github.com/phpmyadmin/error-reporting-server/commit/45d593d7f78bfa4eff5f73199d3b6c4bdd6447a3)
- [4dd52d5a0b - Pass the report id to the reports table methods](https://github.com/phpmyadmin/error-reporting-server/commit/4dd52d5a0bf75beafceac5191e1ebdd0a1cacb85)
- [cff37d9b06 - Do not store the developer id on the table instance](https://github.com/phpmyadmin/error-reporting-server/commit/cff37d9b06db96495e1474a75f33ffd891d77367)
- [3286ea1fe7 - Run the static analysis as part of the check script](https://github.com/phpmyadmin/error-reporting-server/commit/3286ea1fe7bd38481ce9e167980473787058740c)
- [14b07acbe5 - Sync the .gitattributes with the CakePHP app skeleton](https://github.com/phpmyadmin/error-reporting-server/commit/14b07acbe536b40a9deccb800269970e312331c3)
- [00f5537611 - Rename the shell tests to command tests](https://github.com/phpmyadmin/error-reporting-server/commit/00f553761149d0cb795e620008af557a32b135b6)
- [ad9616955e - Update the phpunit configuration to the version 10+ schema](https://github.com/phpmyadmin/error-reporting-server/commit/ad9616955e316e16ebd40c6358e769f2a695d4d9)
- [0cb4b0e675 - Remove the platform requirements check](https://github.com/phpmyadmin/error-reporting-server/commit/0cb4b0e675211d866b5049a033e6a447e85c4c84)
- [790ccf12f4 - Apply the coding standard 5 fixes](https://github.com/phpmyadmin/error-reporting-server/commit/790ccf12f4ab75b52d6ed739cf6e3ef2e3cbe1e0)
- [ea87444607 - Update the coding standard to version 5](https://github.com/phpmyadmin/error-reporting-server/commit/ea8744460750cd6f66ec1530fe48bd045ad0e98e)
- [a20934b500 - Apply the new coding standard fixes](https://github.com/phpmyadmin/error-reporting-server/commit/a20934b5003a1aee50fb5a79edf45e04aae7f279)
- [e2be05e8a5 - Remove the obsolete entries from the phpstan baseline](https://github.com/phpmyadmin/error-reporting-server/commit/e2be05e8a5b3ca67e2e6461f188b2add8cb1684d)
- [5deac56d68 - Fix the phpstan errors detected after the dependency update](https://github.com/phpmyadmin/error-reporting-server/commit/5deac56d68dd63d462f3a4ebfed55d6594b72716)
- [eecc800ca6 - Remove the obsolete BaseApplication generic tag](https://github.com/phpmyadmin/error-reporting-server/commit/eecc800ca6d2d63cabe8cec4c76e26eb347f90e3)
- [60fdeed14c - Update the Composer dependencies](https://github.com/phpmyadmin/error-reporting-server/commit/60fdeed14cb3afcfcad24d504c7de4b24e95141f)

## phpmyadmin-team/sql-parser (GitLab)

### Week 42

- [9dc52be038 - Send 5.11.2-1 to unstable](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/9dc52be03865a8b937081c4deeb10c61e3f8086b)
- [9b2048f55f - Patch failing test](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/9b2048f55fa76885532f099af0f2633dc449f8e8)
- [2bff110a3b - Skip the test class](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/2bff110a3b285d03692c84516b1fb3336d28b15d)
- [8a3890edda - Patch failing test](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/8a3890eddab24ed1cf4ce0a1b5e31675b97f0cdc)
- [77e3433c5f - d/ch](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/77e3433c5f9cdff361d1c1c072ddff7a554c3fd3)
- [c0a8860880 - Drop the phpunit patch](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/c0a8860880f4293ffb5614248ef348ad07d55a16)
- [785dd356ed - Update upstream source from tag 'upstream/5.11.2'](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/785dd356ed2a4d08ed2ae5ad2d40c884a5499d0a)
- [ecbe17914b - New upstream version 5.11.2](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/ecbe17914b04df4d2e92af46cd63dbc346cbdccd)
- [5cf58cbbb9 - Bump Standards-Version to 4.7.4](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/5cf58cbbb9d5f7846f50b21033e1a4abdd152357)
- [29835f34fc - Remove now default Rules-Requires-Root: no](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/29835f34fc049c5dc7014f9d5fea1b6b77cbdc23)
- [3ebc258d04 - Remove now default Priority: optional](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/3ebc258d04df75f0ee10b427936f1639ae1f0e36)

# Handled issues
* [#20550 [Security]: PHP 8.5.12, 8.4.27, 8.3.36 and 8.2.35 fix two critical vulnerabilities that can allow unauthenticated remote code execution. All PHP users are strongly encouraged to update immediately.](https://github.com/phpmyadmin/phpmyadmin/issues/20550)
* [#19561 Outdated info and broken Links in bundled docs](https://github.com/phpmyadmin/phpmyadmin/issues/19561)
* [#19588 more that one column](https://github.com/phpmyadmin/phpmyadmin/issues/19588)
* [#18758 What is the use of $cfg['Servers'][$i]['compress']?](https://github.com/phpmyadmin/phpmyadmin/issues/18758)
* [#470 [Security]: PHP CVE-2026-109618 & CVE-2026-109619](https://github.com/phpmyadmin/docker/issues/470)
* [#469 [security] Update PHP base image to address critical PHP CVE-2026-109618 & CVE-2026-109619](https://github.com/phpmyadmin/docker/issues/469)
* [#58 [6.x] Evaluation incorrect, returning false for 1](https://github.com/phpmyadmin/motranslator/issues/58)
* [#66 PKSA-vq1j-sc3k-jzzk](https://github.com/phpmyadmin/motranslator/issues/66)


## phpmyadmin/phpmyadmin (GitHub)

### Week 43

- [20550 - [Security]: PHP 8.5.12, 8.4.27, 8.3.36 and 8.2.35 fix two critical vulnerabilities that can allow unauthenticated remote code execution. All PHP users are strongly encouraged to update immediately.](https://github.com/phpmyadmin/phpmyadmin/issues/20550)

### Week 44

- [19561 - Outdated info and broken Links in bundled docs](https://github.com/phpmyadmin/phpmyadmin/issues/19561)
- [19588 - more that one column](https://github.com/phpmyadmin/phpmyadmin/issues/19588)
- [18758 - What is the use of $cfg['Servers'][$i]['compress']?](https://github.com/phpmyadmin/phpmyadmin/issues/18758)

## phpmyadmin/docker (GitHub)

### Week 43

- [470 - [Security]: PHP CVE-2026-109618 & CVE-2026-109619](https://github.com/phpmyadmin/docker/issues/470)
- [469 - [security] Update PHP base image to address critical PHP CVE-2026-109618 & CVE-2026-109619](https://github.com/phpmyadmin/docker/issues/469)

## phpmyadmin/motranslator (GitHub)

### Week 43

- [58 - [6.x] Evaluation incorrect, returning false for 1](https://github.com/phpmyadmin/motranslator/issues/58)
- [66 - PKSA-vq1j-sc3k-jzzk](https://github.com/phpmyadmin/motranslator/issues/66)
