# Consulting Services for phpMyAdmin

## Report - August 2022

## Overview

Over the month of August 2022 I fixed issues and updated documentation about the Docker image.

## First week (31)

On the docker repository I made some coding standard improvements.
And made documentation improvements by adding missing new Docker ENVs to our embed documentation.

## Second week (32)

On the docker repository I made some documentation improvements and also made some changes on our embed documentation.
I did changes on our server to add more storage on the Sentry instance.

## Third week (33)

I worked on fixing a JS error (issue [#17620](https://github.com/phpmyadmin/phpmyadmin/issues/17620)) and that ended up in multiple fixes around the "Debug SQL" console feature.
Also fixed a JS errors on the Designer (issue [#17543](https://github.com/phpmyadmin/phpmyadmin/issues/17543) and issue [#17546](https://github.com/phpmyadmin/phpmyadmin/issues/17546)). And fixed some translation strings.

## Fourth week (34)

_Not on the project_

## Handled issues

* [#17693 I cannot add enum VALUES](https://github.com/phpmyadmin/phpmyadmin/issues/17693)
* [#17696 Caprover - phpMyAdmin default login details](https://github.com/phpmyadmin/phpmyadmin/issues/17696)
* [#17700 implode(): Invalid arguments passed - Warning in ./libraries/classes/InsertEdit.php#1765](https://github.com/phpmyadmin/phpmyadmin/issues/17700)
* [#17687 Despite running composer update, error still showing autoload.php is missing](https://github.com/phpmyadmin/phpmyadmin/issues/17687)
* [#17546 Uncaught TypeError: Cannot read properties of undefined (reading 'trim')](https://github.com/phpmyadmin/phpmyadmin/issues/17546)
* [#17543 Uncaught TypeError: Cannot read properties of undefined (reading 'length')](https://github.com/phpmyadmin/phpmyadmin/issues/17543)
* [#17585 phpMyAdmin returning empty after apt upgrade](https://github.com/phpmyadmin/phpmyadmin/issues/17585)
* [#17643 bigint data will lose accuracy in json](https://github.com/phpmyadmin/phpmyadmin/issues/17643)
* [#17622 How to install a definite version?](https://github.com/phpmyadmin/phpmyadmin/issues/17622)
* [#17639 Blank page](https://github.com/phpmyadmin/phpmyadmin/issues/17639)
* [#17685 Page-related settings modal: Close button missing "X"](https://github.com/phpmyadmin/phpmyadmin/issues/17685)
* [#17682 Error 500 with no reason and a lot of error in the website.](https://github.com/phpmyadmin/phpmyadmin/issues/17682)
* [#17674 JavaScript error](https://github.com/phpmyadmin/phpmyadmin/issues/17674)
* [#17670 Uncaught TypeError: method_exists(): Argument #1 ($object_or_class) must be of type object|string, bool given](https://github.com/phpmyadmin/phpmyadmin/issues/17670)
* [#378 Allow setting MAX_EXECUTION_TIME for Docker Containers](https://github.com/phpmyadmin/docker/issues/378)
* [#374 Why this version of php-fpm build without nginx?](https://github.com/phpmyadmin/docker/issues/374)
* [#379 Custom themes not working in 5.2](https://github.com/phpmyadmin/docker/issues/379)
* [#383 Change error-handling from exceptions to returning a boolean](https://github.com/phpmyadmin/sql-parser/pull/383)
* [#17701 Data missing in phpmyadmin but in mysql command line returns it](https://github.com/phpmyadmin/phpmyadmin/issues/17701)
* [#17620 Cannot read property 'AlwaysExpand' of null](https://github.com/phpmyadmin/phpmyadmin/issues/17620)


# Commit list

## phpmyadmin/phpmyadmin (GitHub)

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

### Week 31

- [ff0b2d86c9 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/ff0b2d86c90585b007379da1d522c86a931f22bd)
- [75458147a3 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/75458147a3c1ae0ecb044358c31a94663c593b5f)
- [ebf4a09378 - Document missing Docker ENVs PMA_CONTROL{HOST,PASS,PORT,USER} and PMA_PMADB](https://github.com/phpmyadmin/phpmyadmin/commit/ebf4a09378694715e3ed4e7bb52c9abc9d0a2f7a)
- [74958633c2 - Document missing Docker ENVs PMA_QUERYHISTORYDB and PMA_QUERYHISTORYMAX](https://github.com/phpmyadmin/phpmyadmin/commit/74958633c23a5d82ed3101fc762e9b1f1a9e3ad8)
- [eaf60bc9d1 - Document missing Docker ENV MAX_EXECUTION_TIME](https://github.com/phpmyadmin/phpmyadmin/commit/eaf60bc9d1e5e45e3dcd150e081fa74694dba6e1)
- [ca294bcec9 - Document missing Docker ENV MEMORY_LIMIT](https://github.com/phpmyadmin/phpmyadmin/commit/ca294bcec9304f181c4d6f6e3d7d1828a3ee6d13)

### Week 32

- [7faf6a53ec - Fix Docker mount path for custom themes](https://github.com/phpmyadmin/phpmyadmin/commit/7faf6a53ecd3ce5b47d484b717c9b153d970f678)
- [f714d97fb2 - Update the documentation to use the Docker official repository](https://github.com/phpmyadmin/phpmyadmin/commit/f714d97fb22b52b8bd256bec69ddecac30e4ff41)
- [5c4d86df39 - Fix wrong link to download latest source on QA_5_2 documentation](https://github.com/phpmyadmin/phpmyadmin/commit/5c4d86df39165633f258f702ef242f6207d6b590)

### Week 33

- [848f965db4 - Fix merge mistake for renamed JS variable "window.Messages."](https://github.com/phpmyadmin/phpmyadmin/commit/848f965db45149f35a7f060c09087481608c9176)
- [9c72103931 - Change "Count" for "Count:" and "Time taken" for "Time taken:" on SQL debug console](https://github.com/phpmyadmin/phpmyadmin/commit/9c72103931cce95a80c19e87a18912a2326c95c5)
- [249eaffae7 - Fix merge mistake in Console init](https://github.com/phpmyadmin/phpmyadmin/commit/249eaffae7ce8bf7442e647ab7d447a5a9e89aef)
- [9757b09dc8 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/9757b09dc8e5fb2612a6b58e0c45f4a8dbe04eb4)
- [306bb2e8f6 - Add ChangeLog entries for #17543 and #17546](https://github.com/phpmyadmin/phpmyadmin/commit/306bb2e8f6368114205d8aaf662ee3791582c328)
- [c9ea616ece - Fix #17546 - Unregister the modal success on click event to avoid modals calling the previous one](https://github.com/phpmyadmin/phpmyadmin/commit/c9ea616ecee833921913b0db8e464cd6c6dd83f3)
- [abb871be89 - Add back some dev comments on Designer objects](https://github.com/phpmyadmin/phpmyadmin/commit/abb871be8938f889e106b7c32c9878799606988b)
- [e5dcb1e33a - Fix #17543 - JS error on saving a new designer page](https://github.com/phpmyadmin/phpmyadmin/commit/e5dcb1e33a2780ad5bbfe8a716cf10d8046dcf95)
- [9361da6d22 - Add ChangeLog entries for #17620, a9356e4d16, 2365ec78e2, d0093468d0, 8b99611988](https://github.com/phpmyadmin/phpmyadmin/commit/9361da6d221fb2391e1eb10c3bf8a8356153e283)
- [8b99611988 - Fix console toolbar render when bookmark feature is disabled and sql debug is enabled](https://github.com/phpmyadmin/phpmyadmin/commit/8b99611988342c12a69fab4940de47898538061b)
- [d0093468d0 - Fix escaping of SQL query and errors for debug console](https://github.com/phpmyadmin/phpmyadmin/commit/d0093468d00c1aa8e6c4f524e1060100a5f5a4cb)
- [2365ec78e2 - Fix debug queries console broken query time and group count](https://github.com/phpmyadmin/phpmyadmin/commit/2365ec78e2eff6af28e8118706554427e6610076)
- [a9356e4d16 - Fix #17620 - Fix callbacks of Functions.configGet if there is an error and better handle error messages](https://github.com/phpmyadmin/phpmyadmin/commit/a9356e4d16579103292a0ec03ffb39373ffaafe8)

## phpmyadmin/website (GitHub)

- [ac45efb7df - Document 5.2](https://github.com/phpmyadmin/website/commit/ac45efb7dfe06d7476012a9bade88648dc767596)
- [989ad3e23e - Use actions/checkout@v3](https://github.com/phpmyadmin/website/commit/989ad3e23ec4a43365ce6e18ee1d98031abc5a5e)

## phpmyadmin/sql-parser (GitHub)

- [b1315e0b33 - Update psalm baseline](https://github.com/phpmyadmin/sql-parser/commit/b1315e0b33992c265880fda6707ecd59b3142f27)
- [d4cf63afe5 - Use composer scripts on GitHub workflows](https://github.com/phpmyadmin/sql-parser/commit/d4cf63afe529147617b1dcbe8e6698add342a57b)
- [8fc323ebdc - Add composer scripts from the main repository](https://github.com/phpmyadmin/sql-parser/commit/8fc323ebdc12101a0ded28314e8f9f8b06f96ff1)
- [6e34c69c98 - Update phpstan baseline](https://github.com/phpmyadmin/sql-parser/commit/6e34c69c9860b7236e2bffac5fddbfd458fcba56)

### Week 32

- [233788b0b8 - Ref #384 - fix ContextTest::testLoadError](https://github.com/phpmyadmin/sql-parser/commit/233788b0b8f987c616ae09dd522ed1fbd1c3824d)
- [d3c0ccda48 - Add a CHANGELOG entry for #384](https://github.com/phpmyadmin/sql-parser/commit/d3c0ccda489034631d95f8e6485985f29b801d06)
- [9b6be667cb - Merge branch 'master' into 6.0.x](https://github.com/phpmyadmin/sql-parser/commit/9b6be667cbe49af5706e0a0b43fa64d6bdc72268)


## phpmyadmin/docker (GitHub)

### Week 31

- [0ed2e6651b - Apply some coding standard rules on config.inc.php](https://github.com/phpmyadmin/docker/commit/0ed2e6651b102506422b7f026116631e6792ba57)
- [df4d08c1a8 - Add a missing CHANGELOG entry](https://github.com/phpmyadmin/docker/commit/df4d08c1a82d126863b3652a9f96ad0db0f1dde5)
- [0c9a5f06d5 - Fix a typo in the README](https://github.com/phpmyadmin/docker/commit/0c9a5f06d5e9df28159493257911de114b27b215)

### Week 32

- [905cae841e - Update the examples to have something more explicit for Docker command line examples](https://github.com/phpmyadmin/docker/commit/905cae841eff6eb0d24755435f44e26af0488093)

## docker-library/docs (GitHub)

### Week 32

- [3ed73ef425 - Upgrade actions/checkout to v3](https://github.com/docker-library/docs/commit/3ed73ef425c9c878463006a044c4835ca8d8d8d8)
- [f55c7f8894 - Add permissions on ci GitHub workflow](https://github.com/docker-library/docs/commit/f55c7f889478de0c03c3801489b94706b4ba2889)
- [6372937f8f - Update the phpMyAdmin image docs](https://github.com/docker-library/docs/commit/6372937f8f1ff823d2aaa102762be5bb5cd87f40)

## docker-library/official-images (GitHub)

### Week 32

- [fe777105ab - Update the phpMyAdmin image](https://github.com/docker-library/official-images/commit/fe777105ab34fd4d866049733fa8ab9aec8da8b4)

## phpmyadmin-team/phpmyadmin (GitLab)

### Week 35

- [cce420619f - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/cce420619f9a41c4952936856ff80ce8eacd8f6f)
- [5c2ecb2e58 - Depend on libjs-jquery-tablesorter](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/5c2ecb2e58976cbd29f7658150122888b89cb288)

## phpmyadmin-team/tcpdf (GitLab)

### Week 32

- [42c0869734 - Send 6.5.0+dfsg1-1 to unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/42c08697347f41981fe1799216653f8d787eb6b2)
- [681556ea0b - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/681556ea0b2ad9be026c41aa53f20198b253456e)
- [fba6f02597 - Run "wrap-and-sort"](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/fba6f02597ef741b18ebf5763de7d76f0a9a4cf0)
- [c8e50249d7 - Bump Standards-Version to 4.6.1](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/c8e50249d7e9bdf4fe10c558f5e4c1e5c992ce6c)
- [017906d165 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/017906d1650c03049c01266edd04546d4e065584)
- [e76f2567a6 - Merge tag 'upstream/6.5.0+dfsg1' into debian/latest](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/e76f2567a644b7e762d7615cffae6210b1134d80)
- [0e68fb84d6 - New upstream version 6.5.0+dfsg1](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/0e68fb84d672c81d4b835d0403e499568e0040ee)
