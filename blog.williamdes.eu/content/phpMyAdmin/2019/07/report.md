+++
title = "Report for July 2019"
date = 2019-07-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for July 2019.

<!-- more -->

In July 2019 I worked on the error reporting server and the main repository, with the CakePHP 3.8 migration as the main piece of work.

## First week (27)

My focus of the week was the error reporting server: I migrated it to CakePHP 3.8, added phpstan and applied the phpmyadmin coding standard with phpcs. The migration itself is mostly the work of Murod Khaydarov, who wrote it as a contribution ([#181](https://github.com/phpmyadmin/phpmyadmin/pull/181)); I then fixed the deprecations it revealed, the routes, the timestamps, the microhistory and the unit tests. On the main repository I fixed undefined indexes and errors when reporting errors.

- [3fc92c60e4 - Merge branch 'QA_4_9'](https://github.com/phpmyadmin/phpmyadmin/commit/3fc92c60e4dd9f04f7ac89c78047c6dc06fb5a42)
- [7b8bed30ad - Fix undefined index](https://github.com/phpmyadmin/phpmyadmin/commit/7b8bed30aded5ab6829c3411157766e962c48ecf)
- [b42685c63a - Fix errors when reporting errors](https://github.com/phpmyadmin/phpmyadmin/commit/b42685c63ad758edcdce2fadea3ea9bd0dc26405)
- [bfee3cc560 - Fix deprecations on ->session()](https://github.com/phpmyadmin/error-reporting-server/commit/bfee3cc560411fb16814baa0453823c76d8e4d59)
- [490d3642c0 - Remove some deprecations and fix an error](https://github.com/phpmyadmin/error-reporting-server/commit/490d3642c0e0c85a514016b3f470fe79738578f1)
- [2acbdd44f9 - Some minor improvements](https://github.com/phpmyadmin/error-reporting-server/commit/2acbdd44f9e1a6112ace31d1da609a0d8549bb01)
- [1aba9ad076 - Fix indentation of .scrutinizer.yml](https://github.com/phpmyadmin/error-reporting-server/commit/1aba9ad07685e5ac6ac09589840febdc825eb910)
- [bc825a2d9a - Remove unused use and fix some deprecations](https://github.com/phpmyadmin/error-reporting-server/commit/bc825a2d9a332710b2bef5e2d7c42185d4b1a6f7)
- [2a0c8be276 - Update .scrutinizer.yml](https://github.com/phpmyadmin/error-reporting-server/commit/2a0c8be2769ac4eec14aa2926b5e18401dba36d0)
- [f33c3d941e - Update composer.json and .travis.yml](https://github.com/phpmyadmin/error-reporting-server/commit/f33c3d941e45bfe5b7b88d3f0eadbda5f48c1355)
- [e3f33eea8d - Some minor fixes](https://github.com/phpmyadmin/error-reporting-server/commit/e3f33eea8d3f588947755696cb07c1b1b3c9e136)
- [667317ca3d - Fix a deprecation and remove logged deprecations](https://github.com/phpmyadmin/error-reporting-server/commit/667317ca3d9d9c1205fed5a14e2a34ace1d64f80)
- [8e76058aae - Fix deprecated fixtures in lowercase](https://github.com/phpmyadmin/error-reporting-server/commit/8e76058aae1164b168860930fca7e9e5cfaa4a2a)
- [d8081411f8 - Fix some errors ](https://github.com/phpmyadmin/error-reporting-server/commit/d8081411f87ab59f7bf087622c34fe49a8dc91bb)
- [7c757d0cd1 - Fix erros reported by phpstan level 0](https://github.com/phpmyadmin/error-reporting-server/commit/7c757d0cd1cee53e82f6c20bcca6aac233c2d397)
- [d748dbd4bd - Add phpstan](https://github.com/phpmyadmin/error-reporting-server/commit/d748dbd4bd3f29acf75d7e642a0a98fb6a3a7ffd)
- [c863886628 - Migrate to CakePHP 3.8](https://github.com/phpmyadmin/error-reporting-server/commit/c8638866280fd290a5d570aff18182fb100d489a)
- [ffd97d1f93 - Apply PEAR.Commenting.FunctionComment.MissingParamComment](https://github.com/phpmyadmin/error-reporting-server/commit/ffd97d1f93d74e33d327318126f5e4b7c561ad90)
- [09853e6f5e - Apply phpmyadmin/coding-standard](https://github.com/phpmyadmin/error-reporting-server/commit/09853e6f5ecd16cc1c5a96c4f3b94965a7abf6f2)
- [b2e22904d0 - Add phpmyadmin/coding-standard for phpcs](https://github.com/phpmyadmin/error-reporting-server/commit/b2e22904d026aa7d81dba9596a1fa5eb7097dec1)
- [c0bc373a39 - Add phpcs to dependencies](https://github.com/phpmyadmin/error-reporting-server/commit/c0bc373a397f4641af4397d7461d515d5dbea88f)
- [698e2f9110 - Fix unit tests](https://github.com/phpmyadmin/error-reporting-server/commit/698e2f9110c070b5d872c97b24a759f6a0a189e4)
- [99771189b0 - Fix microhistory](https://github.com/phpmyadmin/error-reporting-server/commit/99771189b0eb446daab8201cfce0e286061dc438)
- [2510ba59ae - Update webroot and bootstrap](https://github.com/phpmyadmin/error-reporting-server/commit/2510ba59ae20a3d6df3b8bcf27a633d73ecd590d)
- [e27bc6327d - Fix a typo](https://github.com/phpmyadmin/error-reporting-server/commit/e27bc6327da8802c21734e4b0bad8737740849ac)
- [344200fdbc - Fix tests](https://github.com/phpmyadmin/error-reporting-server/commit/344200fdbcbb59b02163b9fb352f150afc6c5299)
- [40c0fe0bd3 - Fix routes.php](https://github.com/phpmyadmin/error-reporting-server/commit/40c0fe0bd3c806312a25ac2d9fbf75b70908b084)
- [6cdc2fcca7 - Update app travis ci and app example](https://github.com/phpmyadmin/error-reporting-server/commit/6cdc2fcca71c560fdff1c17516dcb0dc6b5fdcb1)
- [8f9cfac87c - Fix request ->here](https://github.com/phpmyadmin/error-reporting-server/commit/8f9cfac87c2009f1b87a28bcb6ec51dbdf0c1ac1)
- [7e3e94467a - Fix timestamps](https://github.com/phpmyadmin/error-reporting-server/commit/7e3e94467ac325a50e2a856245e32b2e8a290879)
- [ed57ff9757 - Update routes.php](https://github.com/phpmyadmin/error-reporting-server/commit/ed57ff975781efd532b9356c799689be5d063a36)
- [dbeeef7265 - Use $this->request->getParam('action') instead of $this->action](https://github.com/phpmyadmin/error-reporting-server/commit/dbeeef7265f34b6e45d0cc0e7387b0b667eb83bc)
- [d14ac9da0b - Remove trailing spaces](https://github.com/phpmyadmin/error-reporting-server/commit/d14ac9da0b6481b738ef34691bc0acc503bfc876)
- [63645696ab - Update config file and add Application](https://github.com/phpmyadmin/error-reporting-server/commit/63645696abba7578fd03fcada7ce7a89d7ba6668)
- [175b22821a - Add .editorconfig and .gitattributes](https://github.com/phpmyadmin/error-reporting-server/commit/175b22821a6e717691e05c7195c340f1c0cd6ad4)
- [dea2071df0 - Update index and tests/bootstrap](https://github.com/phpmyadmin/error-reporting-server/commit/dea2071df031dab9b7ce11a101bfd078c1164d8c)
- [8f10cd56fd - Update cake/* files](https://github.com/phpmyadmin/error-reporting-server/commit/8f10cd56fd5d395b89649c85c6a911439279ae00)
- [76daaecee0 - Update phpunit.xml file](https://github.com/phpmyadmin/error-reporting-server/commit/76daaecee0b06a41b745defb00109d376c3fa937)
- [8623d17149 - Add test command and update some packages](https://github.com/phpmyadmin/error-reporting-server/commit/8623d17149162fdda45149c0b6d0d67f716a0ce2)

