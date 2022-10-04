# Consulting Services for phpMyAdmin

## Report - September 2022

## Overview

Over the month of September 2022 I worked on our bundle quality.
Adjusted scripts and documentation. Also fixed some bugs and merged some contributions.

## First week (35)

I worked on our packaging script to allow users to remove some vendor folders.
And worked on updating the FAQ about this. And wrote a script to check the class map.
I merged a pull-request on sql-parser, updated baselines and composer scripts.
Also did some work on the Debian packaging side. And worked on issue management.

## Second week (36)

I did adjustments on our check build script. Fixed a bug on GIS visualization.
And worked on issue management.

## Third week (37)

__not working on the project__

## Fourth week (38)

I documented 5.2 on our website.

__not working on the project__

## Fifth week (39)

I continued working on vendor removal. Made pull-request reviews.
Did bug tracking. And did do some issue management.
I wrote a test for the column compression option and improved the code.

## Handled issues

* [#17657 Supporting the column compression option on MariaDB](https://github.com/phpmyadmin/phpmyadmin/pull/17657)
* [#17743 Bogus Error - Near "limit 0,25"](https://github.com/phpmyadmin/phpmyadmin/issues/17743)
* [#17719 Fix removing vendor folders (FAQ 1.44)](https://github.com/phpmyadmin/phpmyadmin/pull/17719)
* [#17661 Broken composer package in 5.2.0](https://github.com/phpmyadmin/phpmyadmin/issues/17661)
* [#17426 Only the horizontal menu is displayed : Unexpected token u in JSON at position 0](https://github.com/phpmyadmin/phpmyadmin/issues/17426)
* [#17692 Moving Columns in table w/ ENUM Field(s): Throws erroneous 'Invalid Default Value' error](https://github.com/phpmyadmin/phpmyadmin/issues/17692)
* [#17736 utf8mb3 description support](https://github.com/phpmyadmin/phpmyadmin/issues/17736)
* [#17726 can't install phpmyadmin -keep getting error](https://github.com/phpmyadmin/phpmyadmin/issues/17726)
* [#17731 a fresh phpmyadmin v5.2.0 won't run properly](https://github.com/phpmyadmin/phpmyadmin/issues/17731)
* [#17624 Function strftime() is deprecated](https://github.com/phpmyadmin/phpmyadmin/issues/17624)
* [#17737 Completely blank page on fresh install of PHPMyAdmin](https://github.com/phpmyadmin/phpmyadmin/issues/17737)
* [#17732 Replace form-control with form-select](https://github.com/phpmyadmin/phpmyadmin/pull/17732)
* [#16121 JavaScript data sorting error](https://github.com/phpmyadmin/phpmyadmin/issues/16121)
* [#17629 When I log in, I get a blank page.](https://github.com/phpmyadmin/phpmyadmin/issues/17629)
* [#17721 Array and string offset access syntax with curly braces is no longer supported](https://github.com/phpmyadmin/phpmyadmin/issues/17721)
* [#17034 Export - TCPDF causes Error 500 with `--no-dev`](https://github.com/phpmyadmin/phpmyadmin/issues/17034)
* [#17716 "Export" tab does not work with `composer update --no-dev`](https://github.com/phpmyadmin/phpmyadmin/issues/17716)
* [#17717 Handle large number of tables in database (based on QA_5_2)](https://github.com/phpmyadmin/phpmyadmin/pull/17717)
* [#17714 Fix for handle large number of tables in a single database (more than 10k)](https://github.com/phpmyadmin/phpmyadmin/pull/17714)
* [#17708 semicolon on comment issue solved. Issues #17635](https://github.com/phpmyadmin/phpmyadmin/pull/17708)
* [#17711 2FA Blank page with PMA 5.2.0](https://github.com/phpmyadmin/phpmyadmin/issues/17711)
* [#17709 Problem with counting the length of the total response](https://github.com/phpmyadmin/phpmyadmin/issues/17709)
* [#17707 semicolon on comment issue solved. Issues #17635](https://github.com/phpmyadmin/phpmyadmin/pull/17707)
* [#17706 can't login in new installation, Debian 10 through apt repository](https://github.com/phpmyadmin/phpmyadmin/issues/17706)
* [#17704 Insert/Update for specific table not possible](https://github.com/phpmyadmin/phpmyadmin/issues/17704)
* [#383 Suddenly error "Wrong permissions on configuration file, should not be world writable" appeared](https://github.com/phpmyadmin/docker/issues/383)
* [#382 config.user.inc.php not used](https://github.com/phpmyadmin/docker/issues/382)
* [#384 Change error handling from throwing an exception to returning a boolean value](https://github.com/phpmyadmin/sql-parser/pull/384)

# Commit list

## phpmyadmin-team/shapefile (GitLab)

- [650f3345d6 - Send 2.1-6 to unstable](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/650f3345d600d060fda8b57c5b74e4054a34f96f)
- [d6c2acba7a - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/d6c2acba7a660f558e7a7a9ec55eda550c956318)
- [5606057cf5 - Bump Standards-Version to 4.6.1](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/5606057cf53dab7156a43e6060b0fb3378ce4c1e)
- [71cd6ff4f2 - Mark this package as "Multi-Arch: foreign"](https://salsa.debian.org/phpmyadmin-team/shapefile/-/commit/71cd6ff4f2ef8dc6eac9efdb0c54722d68f2e2e1)

## phpmyadmin/phpmyadmin (GitHub)

- [5d48e1006b - Merge #17657 - Supporting the column compression option on MariaDB](https://github.com/phpmyadmin/phpmyadmin/commit/5d48e1006bf2e81dad0ceb75d72ad89ef980e55b)
- [49b4951cbb - Document why zlib is the only value for a compressed column](https://github.com/phpmyadmin/phpmyadmin/commit/49b4951cbb3df1a8b76da4a3e0290af96c6f8674)
- [70a067ad09 - Move compatibility logic into the Compatibility class](https://github.com/phpmyadmin/phpmyadmin/commit/70a067ad09d5ac55b55cda67728307236ae3b35f)
- [71035fd9b0 - Add a test for the compressed option for MariaDB](https://github.com/phpmyadmin/phpmyadmin/commit/71035fd9b09623672aa5dbada51701b1a937f075)
- [aac8f054f2 - Adjust the check release excludes script](https://github.com/phpmyadmin/phpmyadmin/commit/aac8f054f2a43d22974ab8808582e2fc4a476e4c)
- [ff7506d13b - Rename jest.config.js to jest.config.cjs in create-release.sh](https://github.com/phpmyadmin/phpmyadmin/commit/ff7506d13b50bea9056dec6d4cfdd5fe91455614)
- [ae7f8c4ce0 - Merge branch 'origin/QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/ae7f8c4ce05d63da4743ed84997beb3d7fd4a802)
- [b5e20ad8f4 - Add a ChangeLog entry for #16418](https://github.com/phpmyadmin/phpmyadmin/commit/b5e20ad8f4bdbcf18aa9662d612338aa1cdcdf93)
- [9278aeeba5 - Merge #17719 - Fix removing vendor folders (FAQ 1.44)](https://github.com/phpmyadmin/phpmyadmin/commit/9278aeeba5a27583567a309cd1ff9b0fee7f2213)
- [bc9b43ebe0 - Remove non needed yarn install on build release step](https://github.com/phpmyadmin/phpmyadmin/commit/bc9b43ebe021f22c9ced10ee8a9fca35ad68bb1d)
- [3d6a198598 - Fix CI version to have a valid composer.json](https://github.com/phpmyadmin/phpmyadmin/commit/3d6a198598fe7f9504cf57e39c9423b045a5eaa7)
- [050c5682af - Update FAQ 1.44](https://github.com/phpmyadmin/phpmyadmin/commit/050c5682af143c870f960a8d11e6b1e34e35b2be)
- [278eb797bc - Remove tcpdf autoloaded files](https://github.com/phpmyadmin/phpmyadmin/commit/278eb797bce73740c5862141156035e78bff090a)
- [2fff5f48bc - Add a security to check if all files present in the autoload class map can be found and re-generate the class map](https://github.com/phpmyadmin/phpmyadmin/commit/2fff5f48bc700115c544d9fa8be264557fa2fb7a)
- [01724139b2 - Add the version to composer.json at release build time](https://github.com/phpmyadmin/phpmyadmin/commit/01724139b26884a22deca270f23d18dc32225cb3)
- [a4d273f5cf - Add a ChangeLog entry for #17736](https://github.com/phpmyadmin/phpmyadmin/commit/a4d273f5cfad5083ceaee14cdc2ddf8c923fe5de)
- [8331b15243 - Fix #17736 - Add utf8mb3 as an alias of utf8 on the charset description page](https://github.com/phpmyadmin/phpmyadmin/commit/8331b15243096bc1f286a8c20771482fbd20ec4d)
- [4e08ffdc77 - Add a comment when building a kit starts on the release script](https://github.com/phpmyadmin/phpmyadmin/commit/4e08ffdc77504fce66a70e54651ca3448ff098dc)
- [9477d1d748 - Fixup removing 'po' folder in the english kit](https://github.com/phpmyadmin/phpmyadmin/commit/9477d1d748e53e532f5bb295ab5b0331a5379c28)
- [eac7356f4c - Remove rm "-f" argument as it hides errors on the release script](https://github.com/phpmyadmin/phpmyadmin/commit/eac7356f4c81cc2e6c83c233b4574cfa04553736)
- [a267ba3dde - Add comments to the release script](https://github.com/phpmyadmin/phpmyadmin/commit/a267ba3dde2488a59d75f433509c1cdfb0fe4f10)
- [94f0d931cd - Remove rm for '.jshintrc' removed afterwards for all non dev kits](https://github.com/phpmyadmin/phpmyadmin/commit/94f0d931cdc43ba34893244b1d9efacc759a68a6)
- [cc35f885ee - Remove old travis-ci rm in the release script](https://github.com/phpmyadmin/phpmyadmin/commit/cc35f885ee4692642eedb1cc44258d5cb203aca8)
- [aea6bdd329 - Remove non usefull recaptcha "vendor/google/recaptcha/src/autoload.php" file](https://github.com/phpmyadmin/phpmyadmin/commit/aea6bdd32942d74b6a65a224b6bda6b0c55ce870)
- [db1e59a541 - Remove template test files from non source kits](https://github.com/phpmyadmin/phpmyadmin/commit/db1e59a541d90e9161708fd57e49e9194a6b2019)
- [9722d75225 - Adjust build excludes for paragonie/random_compat and paragonie/sodium_compat](https://github.com/phpmyadmin/phpmyadmin/commit/9722d75225715688ba806b756e72af92ffa84e7c)
- [7b1b42fa0c - Search for files that contain "phar" in the name as they may be build files](https://github.com/phpmyadmin/phpmyadmin/commit/7b1b42fa0ce8cd413832ff3914b05fad6c52c8d6)
- [f46b384ad4 - Update baselines](https://github.com/phpmyadmin/phpmyadmin/commit/f46b384ad4fece487dee7fa359533f03b3002a28)
- [cedfbd5376 - Add a ChangeLog entry for 6230c197dd](https://github.com/phpmyadmin/phpmyadmin/commit/cedfbd53769a76959f8d7d87f80fa1d3d60bd067)
- [6230c197dd - Fix PHP warning on GIS visualization when there is only one GIS column](https://github.com/phpmyadmin/phpmyadmin/commit/6230c197dd9d78de0f0bcc7c508b74bd18070863)
- [6764066c5e - Support snapshot builds for check release excludes](https://github.com/phpmyadmin/phpmyadmin/commit/6764066c5e6592a96420ffe330c192a0946f5834)

## phpmyadmin/website (GitHub)

- [ac45efb7df - Document 5.2](https://github.com/phpmyadmin/website/commit/ac45efb7dfe06d7476012a9bade88648dc767596)
- [989ad3e23e - Use actions/checkout@v3](https://github.com/phpmyadmin/website/commit/989ad3e23ec4a43365ce6e18ee1d98031abc5a5e)

## phpmyadmin/sql-parser (GitHub)

- [b1315e0b33 - Update psalm baseline](https://github.com/phpmyadmin/sql-parser/commit/b1315e0b33992c265880fda6707ecd59b3142f27)
- [d4cf63afe5 - Use composer scripts on GitHub workflows](https://github.com/phpmyadmin/sql-parser/commit/d4cf63afe529147617b1dcbe8e6698add342a57b)
- [8fc323ebdc - Add composer scripts from the main repository](https://github.com/phpmyadmin/sql-parser/commit/8fc323ebdc12101a0ded28314e8f9f8b06f96ff1)
- [6e34c69c98 - Update phpstan baseline](https://github.com/phpmyadmin/sql-parser/commit/6e34c69c9860b7236e2bffac5fddbfd458fcba56)
