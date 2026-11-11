+++
title = "Report for June 2022"
date = 2022-06-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for June 2022.

<!-- more -->

In June 2022 my focus was the docker image, plus a bit of work on phpmyadmin/phpmyadmin.

## First week (23)

Most of the week was on the docker repository: I re-worked the makefile, moved the docker-compose test files into a folder and added mariadb-connector-c for the caching sha2 password method. I also stopped forcing a specific auth mysql plugin.

- [598f072a56 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/598f072a56d8101376fce0a3fc849fc106c557d2)
- [57a5df9ee5 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/57a5df9ee5a88894417988f2106ae1d0edbf7349)
- [289e0dd181 - Add some edge cases for booleans on SessionCache class](https://github.com/phpmyadmin/phpmyadmin/commit/289e0dd1810f3181f888154e440df1294ddfc58f)
- [0f9d9d2630 - Fix the section about E2E tests](https://github.com/phpmyadmin/docker/commit/0f9d9d26309a0437ac9c9ba3b4caf4d339294fb5)
- [336ba22d89 - Stop forcing a specifig auth mysql plugin as many users do not do such config](https://github.com/phpmyadmin/docker/commit/336ba22d89aa0e4fc45dadb19803d088fb54c9a6)
- [545fcca480 - Mark test script as python3](https://github.com/phpmyadmin/docker/commit/545fcca4808d9396d35cf506948c72d0635e9145)
- [3c859c0511 - Add mariadb-connector-c for support of caching sha2 password method](https://github.com/phpmyadmin/docker/commit/3c859c0511f748adc76e1b677ece565e83603b26)
- [347512bfc4 - Re-work the makefile](https://github.com/phpmyadmin/docker/commit/347512bfc49c7d5dc5f24988c7d3884f3f7d0c4a)
- [d621982217 - Move docker-compose test files into a folder](https://github.com/phpmyadmin/docker/commit/d621982217e238dffee1276349eb3d0295cdb824)
- [cc19f8ada1 - Use Alpine 3.15 for the test image](https://github.com/phpmyadmin/docker/commit/cc19f8ada1985d98c18c77cf01e7624448e46f01)
- [c0cd783445 - Add permissions on GitHub workflows](https://github.com/phpmyadmin/docker/commit/c0cd7834452b5178e1992557e776ecab7004d398)

## Second week (24)

I merged [#369](https://github.com/phpmyadmin/phpmyadmin/pull/369) to allow a different Apache port with APACHE_PORT, with tests for it, and fixed [#372](https://github.com/phpmyadmin/phpmyadmin/pull/372) to support docker secrets from file for the PMA_USER, PMA_CONTROLUSER and PMA_CONTROLHOST variables. I also cleaned up the docker-compose tests to stop using container names.

- [918d2639a9 - Give more time for databases to start on d-compose tests](https://github.com/phpmyadmin/docker/commit/918d2639a98da3ecc95eb86d6fffc5e5198f8fb6)
- [3f1f550631 - Update CHANGELOG.md](https://github.com/phpmyadmin/docker/commit/3f1f550631dac6a22ab895a717e40563b99f5d73)
- [9b6fb4229f - Stop using container names](https://github.com/phpmyadmin/docker/commit/9b6fb4229f228434a906992959bae323058b13bb)
- [8b33eefd53 - Add project name for test runs](https://github.com/phpmyadmin/docker/commit/8b33eefd5327ce93d1bdd46109db045afa6d03f1)
- [095161cdb1 - Implement test cleanup](https://github.com/phpmyadmin/docker/commit/095161cdb16cc7e3e8d46e8ce4df6e44e7ac3171)
- [b936b8ebd1 - Ref #369 - Update files using ./update.sh](https://github.com/phpmyadmin/docker/commit/b936b8ebd118cddaab53da31266dc016d70b43fe)
- [5ab888d0d4 - Ref #369 - Remove apache specific settings from non apache entrypoints](https://github.com/phpmyadmin/docker/commit/5ab888d0d484293b236fabea1ccfd062e72d902a)
- [fee52fdd0b - Merge #369 - Allow a different Apache port with APACHE_PORT](https://github.com/phpmyadmin/docker/commit/fee52fdd0bd2b0e72624950641f7f07eccce6c0d)
- [3c16423f78 - Ref #369 - Add tests for a different Apache2 port](https://github.com/phpmyadmin/docker/commit/3c16423f78fb73ebf26c406d68ae027bfcd18424)
- [0b7054a449 - Fix #372 - Support docker secrets from file for {PMA_USER,PMA_CONTROLUSER,PMA_CONTROLHOST}](https://github.com/phpmyadmin/docker/commit/0b7054a449f7743922c215e1eb5c32dc1d643974)
- [6718899e83 - Update CHANGELOG.md](https://github.com/phpmyadmin/docker/commit/6718899e83b9267b5819b628b9e2ed968a8a0857)

