# Consulting Services for phpMyAdmin

## Report - October 2025

## Overview

In October I worked on updating phpMyAdmin to 5.2.3 in different distributions.

## First week (40)

**Nothing to report**

## Second week (41)

phpMyAdmin 5.2.3 was released, I worked on updating our Docker image:
- Installed the `uploadprogress` PHP extension
- Updated to PHP 8.3

Then I packaged phpMyAdmin 5.2.3 into Debian.

## Third week (42)

Debian is migrating to PSR/http-message v2, I made the patch in phpMyAdmin and imported it into Debian.

## Fourth week (43)

**Nothing to report**

## Fifth week (44)

**Nothing to report**

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 42

- [66b797e199 - Migrate psr/http-message to v2](https://github.com/phpmyadmin/phpmyadmin/commit/66b797e1996aa30bc53561d36300b507e47d65f6)
- [c784570216 - Merge #19868 - Improve documentation about PHP extensions](https://github.com/phpmyadmin/phpmyadmin/commit/c7845702164250e17911eccb25528bea460f70e9)

## phpmyadmin/docker (GitHub)

### Week 41

- [452a995fe6 - Install the extension from the folder directly](https://github.com/phpmyadmin/docker/commit/452a995fe6c90b96473fc17c3d704786c33d42bc)
- [fc38d23ff1 - Enable the uploadprogress extension](https://github.com/phpmyadmin/docker/commit/fc38d23ff1f946b497ed756d3c5116e8aea3aaed)
- [739bbbbe8c - Add CHANGELOG entries](https://github.com/phpmyadmin/docker/commit/739bbbbe8cafd1684d3aef3bcc16d04d9033b861)
- [6bfaf085b4 - Enable the uploadprogress extension](https://github.com/phpmyadmin/docker/commit/6bfaf085b446254da3c16994244431a239d7f512)
- [04b3786429 - Update to 5.2.3 release](https://github.com/phpmyadmin/docker/commit/04b37864299e965801df9540531d8b128fdd328c)
- [5e91d468ca - Update to PHP 8.3](https://github.com/phpmyadmin/docker/commit/5e91d468ca68f639e72dd51ca62860756eee07ae)

## docker-library/official-images (GitHub)

### Week 41

- [43fb1ae8d5 - Update phpMyAdmin to 5.2.3 (#20045)](https://github.com/docker-library/official-images/commit/43fb1ae8d56190425a2107a228598ad4570dc158)

## macports/macports-ports (GitHub)

### Week 41

- [e3e98677cd - phpMyAdmin: update to 5.2.3](https://github.com/macports/macports-ports/commit/e3e98677cdb02f7890aa54d4fdff98df26b7275b)

## termux/termux-packages (GitHub)

### Week 41

- [3648672be0 - phpMyAdmin: Adjust the settings (#26822)](https://github.com/termux/termux-packages/commit/3648672be02a472c0189a57273076d6b3e535177)
- [5a2f7a5af3 - Remove Indexes option for Apache and remove deprecated PHP options and add PHP open_basedir](https://github.com/termux/termux-packages/commit/5a2f7a5af3713f87ac7a59cc75a00436fe8751b0)
- [d6d2c82359 - Update phpMyAdmin to 5.2.3](https://github.com/termux/termux-packages/commit/d6d2c82359180a5dc972cc4fa516fae083fb75aa)

## phpmyadmin-team/phpmyadmin (GitLab)

### Week 41

- [d5dd212ab0 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d5dd212ab032e791984ca58169cfef8cb3df2a57)
- [b1b5e729db - Allow Symfony 7](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b1b5e729dbec70c8a2944bd2b59e5c2da0cb2bb8)
- [b548a5ec2f - Use PHPUnit --do-not-cache-result --fail-on-empty-test-suite](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b548a5ec2fc57a9ff99ee9382d8732554da46c59)
- [15ed8eeb38 - Drop the custom separator logic for old PHPUnit 11](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/15ed8eeb3840db1f9b5cd3bd699540c01f60e4c2)
- [13e3fd79eb - Refresh patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/13e3fd79ebbf7f0baa051afbb092105b1ebb438a)
- [f987b9fadb - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f987b9fadbb1466397b91797733b48114d9bb2e7)
- [ec49ed0e82 - Update upstream source from tag 'upstream/5.2.3+dfsg'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ec49ed0e82c783a72de10b5c32a69327402d1a27)
- [271761e928 - New upstream version 5.2.3+dfsg](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/271761e928267a4a2f1438f1671ad324a0aa805c)
- [d4966639ce - Fix d/copyright backtick ends](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d4966639ced0387c9df6f626c6b931f938e165a0)
- [f30f52b08b - Remove now default Priority: optional](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/f30f52b08bd9167227b77ab1e9ad750ef89f08f1)
- [b304950d99 - Remove now default Rules-Requires-Root: no](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b304950d99a01e4a49d8df919d0a8a869b91f677)

### Week 42

- [531e301648 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/531e3016488202a4644a4ba8fc14a63edba1158a)
- [7f13e830dd - Allow PSR/http-message v2](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/7f13e830dd0a1b8b0b7d8edca2685a77fcdc5615)
- [85b77e3f82 - Send 4:5.2.3+dfsg-1 to unstable](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/85b77e3f82b530ee4e56cc1812c0a1660a4115f1)

# Handled issues

## phpmyadmin/phpmyadmin (GitHub)

### Week 40

- [19662 - .](https://github.com/phpmyadmin/phpmyadmin/issues/19662)

### Week 41

- [19880 - .](https://github.com/phpmyadmin/phpmyadmin/issues/19880)

### Week 42

- [19594 - Is the sodium extension required?](https://github.com/phpmyadmin/phpmyadmin/issues/19594)

### Week 43

- [19899 - [Bug]: UploadDir seems to not work](https://github.com/phpmyadmin/phpmyadmin/issues/19899)

### Week 44

- [19906 - [6.0] [IIS] `Declaration of PhpMyAdmin\Controllers\Config\GetConfigController::__invoke(PhpMyAdmin\Http\ServerRequest $request): void must be compatible with PhpMyAdmin\Controllers\InvocableController::__invoke(PhpMyAdmin\Http\ServerRequest $request)`](https://github.com/phpmyadmin/phpmyadmin/issues/19906)

## phpmyadmin/docker (GitHub)

### Week 41

- [437 - Enable the uploadprogress PHP extension](https://github.com/phpmyadmin/docker/issues/437)
- [464 - PHP 8.2 MySQL 9.4 and vector columns results in error #2014, upgrade to PHP 8.3?](https://github.com/phpmyadmin/docker/issues/464)
- [465 - `uploadprogress.tar.gz` not removed from image](https://github.com/phpmyadmin/docker/issues/465)
