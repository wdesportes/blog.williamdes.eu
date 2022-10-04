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

## phpmyadmin/website (GitHub)

- [ac45efb7df - Document 5.2](https://github.com/phpmyadmin/website/commit/ac45efb7dfe06d7476012a9bade88648dc767596)
- [989ad3e23e - Use actions/checkout@v3](https://github.com/phpmyadmin/website/commit/989ad3e23ec4a43365ce6e18ee1d98031abc5a5e)

## phpmyadmin/sql-parser (GitHub)

- [b1315e0b33 - Update psalm baseline](https://github.com/phpmyadmin/sql-parser/commit/b1315e0b33992c265880fda6707ecd59b3142f27)
- [d4cf63afe5 - Use composer scripts on GitHub workflows](https://github.com/phpmyadmin/sql-parser/commit/d4cf63afe529147617b1dcbe8e6698add342a57b)
- [8fc323ebdc - Add composer scripts from the main repository](https://github.com/phpmyadmin/sql-parser/commit/8fc323ebdc12101a0ded28314e8f9f8b06f96ff1)
- [6e34c69c98 - Update phpstan baseline](https://github.com/phpmyadmin/sql-parser/commit/6e34c69c9860b7236e2bffac5fddbfd458fcba56)
