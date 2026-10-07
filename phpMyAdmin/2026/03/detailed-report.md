# Consulting Services for phpMyAdmin

## Report - March 2026

## Overview

In March I merged and reviewed a lot of contributions, did some issues triage, kept
up with the Debian packaging of our dependencies, and reworked the website.

## First week (10)

I merged contributions after reviewing them. I also did some issues triage.
I updated the psalm and phpstan baselines, and cleaned up the release process (the
release script, the list of files excluded from a tarball, and removing leftover vendor
dev files). I also adjusted the GIS test and the coding standard.

On the packaging side, I uploaded tcpdf 6.11.0 and 6.11.2 to unstable, and bumped the
copyright years for mariadb-mysql-kbs.

## Second week (11)

A quieter week. I added a SQL button to the database list.

## Third week (12)

I merged contributions after reviewing them. I also did some issues triage.
I fixed several XML import problems and refactored how the default storage engine is
retrieved, refactored the File class, and did the QA_5_2 backports along with a PHPStan
update.

On the website I reworked the sponsors (moved them into a data file, handled plurals and
rel attributes), dropped planet.phpmyadmin.net, improved the CDN error handling and
updated the layout with colour modes and the removal of jQuery.

I also updated the CI PHP versions on shapefile.

## Fourth week (13)

I merged contributions after reviewing them. I also did some issues triage.
And I sent mariadb-mysql-kbs 1.3.0-4 to unstable.

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 10

- [3d0e40a9fb - Merge #20223 - Fix #17451 - fetchValue call with connection parameter](https://github.com/phpmyadmin/phpmyadmin/commit/3d0e40a9fb1fe14795b7499cc870c9e9da021780)
- [0055ec0054 - Merge #20217 - Fix #19330 - Show original value instead of negative value](https://github.com/phpmyadmin/phpmyadmin/commit/0055ec0054dcf73b8b198d01f12a97d9d469b70c)
- [2f4a40d208 - Merge #20216 - Fix #20140 - Fix data.responseJSON is undefined](https://github.com/phpmyadmin/phpmyadmin/commit/2f4a40d2082b04a8c53d35e19f21ffc85749c279)
- [a34bb65806 - Update the gis test & coding standard](https://github.com/phpmyadmin/phpmyadmin/commit/a34bb65806b56a1e5d3c0e92045c3c86dbad9119)
- [1cb42fd2cc - Update the psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/1cb42fd2cc1d5ab3373484cdc5156135ea1e9ef8)
- [885da3d701 - Cleanup remove vendor dev files](https://github.com/phpmyadmin/phpmyadmin/commit/885da3d701012af39f167a1286a66ee3e1760dc8)
- [20f708999a - Merge #20215 - Fix #20174 - Bump tracekit version from 0.4.7 to 0.4.9](https://github.com/phpmyadmin/phpmyadmin/commit/20f708999a53af5016ed1f437ae7071bc365b3d8)
- [ca0510b0c6 - Cleanup the list of vendor files to remove](https://github.com/phpmyadmin/phpmyadmin/commit/ca0510b0c657a0cfb315344cb53760ccfb7bf722)
- [66df368053 - Exclude one dev file from the release](https://github.com/phpmyadmin/phpmyadmin/commit/66df368053676cf0eed3a9e5b68e0363888ec541)
- [9cf2981078 - Fix typos in create-release.sh](https://github.com/phpmyadmin/phpmyadmin/commit/9cf2981078e662398b7d8c91c8464ab765437655)
- [2c33c5d13d - Update the list of release excludes](https://github.com/phpmyadmin/phpmyadmin/commit/2c33c5d13d25935f1147c18ccfbcc9a0e85b1c7a)
- [0fdf541cb6 - Merge #20199 - Fix #18303 - Fix indexDialogPreviewModal is null](https://github.com/phpmyadmin/phpmyadmin/commit/0fdf541cb648cebadc4fd1bcb52c17017c9f5e80)
- [8c2ccd642a - Merge #20200 - Fix #20139 - Fix data is undefined](https://github.com/phpmyadmin/phpmyadmin/commit/8c2ccd642a318d421209816605ed46524d6ac5af)
- [933e5be2ef - Merge #20201 - Fix #20141 - Fix data is undefined](https://github.com/phpmyadmin/phpmyadmin/commit/933e5be2ef7b176a643db999b5f58b9eadd093ce)
- [333493be35 - Merge #20203 - Fix #20142 - Unregister all click events when the modal is hidden](https://github.com/phpmyadmin/phpmyadmin/commit/333493be35b7427ebe4295d81f632ef78984b869)
- [2b45d9c284 - Merge #20209 - Don't show invalid Gis download options](https://github.com/phpmyadmin/phpmyadmin/commit/2b45d9c284140b4b949151b86fca513390b47ad1)

### Week 11

- [4265b512e6 - Add a SQL button to the database list](https://github.com/phpmyadmin/phpmyadmin/commit/4265b512e6a0089db8bf57215c150a2b91ec6802)

### Week 12

- [d6ca244a18 - Merge #20214 - Fix #20134 - Undefined array key 0 when there are no statements](https://github.com/phpmyadmin/phpmyadmin/commit/d6ca244a186efea43d2c8fc970f7600b399beee6)
- [86db8ab58c - Merge #20161 - Fix #20102 - Show grid edit hint for truncated values](https://github.com/phpmyadmin/phpmyadmin/commit/86db8ab58c660301275937e438ba2ab297b68770)
- [7c502c3b40 - Merge #20242 - Fix ImportXML existence check](https://github.com/phpmyadmin/phpmyadmin/commit/7c502c3b40e3921767f905804e262c3068cc7dee)
- [a46e3f55ca - Fix tests after #20227 - for the default storage engine](https://github.com/phpmyadmin/phpmyadmin/commit/a46e3f55caa9c75a0705753649346569e2e528eb)
- [e454326296 - Update the phpstan and psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/e45432629620a9176ca1b9020eacbf451b2bd0c8)
- [6f66b76c5d - Merge #20105 - Fix #19891 - invalid `$cfg['Export']['format']` or `$cfg['Import']['format']` defaulting to `sql` in dropdown](https://github.com/phpmyadmin/phpmyadmin/commit/6f66b76c5df54febd95747f0341a2a487ed15ae7)
- [ba3cfc7eb4 - Merge #20154 - Fix gis export to pdf and svg](https://github.com/phpmyadmin/phpmyadmin/commit/ba3cfc7eb4b0e2d7e938a63ae7e55f298f82f42a)
- [1b0b27fc2b - Remove properties_num_columns from templates, not needed after #20227](https://github.com/phpmyadmin/phpmyadmin/commit/1b0b27fc2b077a7501b4e8c26b4afd135f1ff1ea)
- [f3363a3f43 - Merge #20227 - Fix #20171 - Refactor default engine retrieval logic](https://github.com/phpmyadmin/phpmyadmin/commit/f3363a3f4340c323408fe4c6f348e3c08e8fa5ae)
- [41a223641f - Merge #20241 - Add required referrer when loading tiles from openstreetmap.org](https://github.com/phpmyadmin/phpmyadmin/commit/41a223641f44f0c7ee8e10fa08a0b0df52a2fd8e)
- [61c5aed763 - Merge #20170 - Fix #20153: Handle missing database tag in XML import](https://github.com/phpmyadmin/phpmyadmin/commit/61c5aed763851ea44232e967f5ab6531549f0e57)
- [ef79edfdac - Assert SQL queries for import XML](https://github.com/phpmyadmin/phpmyadmin/commit/ef79edfdac5f0122d650c461866b331bb35a7999)
- [94a9d2f272 - Fix "ImportXml::doImport(): Node no longer exists" when importing XML with no database](https://github.com/phpmyadmin/phpmyadmin/commit/94a9d2f27231dd96153edbd0f3535ef8d6d5ac3b)
- [a59be33d71 - Backport XML tests for no database (#20153) and improve GIS test](https://github.com/phpmyadmin/phpmyadmin/commit/a59be33d71ad4ea6db2744932e5da24d93de40ba)
- [7985b04f2d - Fix XML tests for importing GIS and no DB XML (#20153)](https://github.com/phpmyadmin/phpmyadmin/commit/7985b04f2d291f7694564a076651ec7061b67709)
- [1e3d6b5c0c - Merge 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/1e3d6b5c0c4818bef7f28f11242d9bff25142c40)
- [13d1c90d44 - Merge #20185 - Refactor the File class](https://github.com/phpmyadmin/phpmyadmin/commit/13d1c90d44f394d42e35600bd096ce19666fd749)
- [63f642dd02 - Merge #20126 - Fix #20121 - Find and Replace](https://github.com/phpmyadmin/phpmyadmin/commit/63f642dd025545da1cd16c89cf40c7bf987b56eb)
- [8b2a2c41dc - Merge #20144 - Add sql highlighting for Show create](https://github.com/phpmyadmin/phpmyadmin/commit/8b2a2c41dcf36c5f589a70cd115936e1c1b07f18)
- [bd24c09baf - Merge #20184 - Improve the description of ShowDatabasesNavigationAsTree in the documentation](https://github.com/phpmyadmin/phpmyadmin/commit/bd24c09baf05eb1235e3ef07fe16e824010f3398)
- [cda01ff436 - Merge #20188 - Fix: Text copying while editing a cell](https://github.com/phpmyadmin/phpmyadmin/commit/cda01ff436cbffb975a499b3f013fb6693642780)
- [bf7e0c3d85 - Merge #20213 - Improve design in structure snapshot page](https://github.com/phpmyadmin/phpmyadmin/commit/bf7e0c3d852afb9db608a8d7e35d30575581bbd9)
- [5a8ddf18c2 - Merge #20237 - Gis ScaleData offsets in target coordinate system](https://github.com/phpmyadmin/phpmyadmin/commit/5a8ddf18c22b5fbc220e3cd561b474a4a0d7f0e5)
- [8ae46b07fa - Merge #20239 - Update PHPStan](https://github.com/phpmyadmin/phpmyadmin/commit/8ae46b07fab516786c054d4aead943884f4b05b9)

### Week 13

- [4246b6d9a4 - Merge #20260 - Fix #20181 - allow selecting text fragments in cells](https://github.com/phpmyadmin/phpmyadmin/commit/4246b6d9a46db27827f3b1b6d2844bee8d28ee48)

## phpmyadmin/website (GitHub)

### Week 12

- [1dee475192 - Replace broken link for PAD in about website](https://github.com/phpmyadmin/website/commit/1dee4751920bd3154b0efaceda1b49f6badc8b46)
- [9ef6d2c91f - Fix broken awards link](https://github.com/phpmyadmin/website/commit/9ef6d2c91f7ed21ce2d855884cd3cdd345b07e70)
- [de6bbc71dd - Merge #186 - Update layout: Color modes, jQuery removal, and more](https://github.com/phpmyadmin/website/commit/de6bbc71dd8062701757a6bc446e452901052ca6)
- [449779eedc - Replace checksum by shasum for packages.json for composer](https://github.com/phpmyadmin/website/commit/449779eedca126e50f50a23a832f376f4fc9753d)
- [2262bf3f86 - Remove rel quick-download and add the download attribute to download buttons](https://github.com/phpmyadmin/website/commit/2262bf3f865c70d5919aa9a71c6950f8941320e2)
- [0a4bcd804a - Remove css call for font-awesome](https://github.com/phpmyadmin/website/commit/0a4bcd804ac35cf5730094be5e5eb84b8a0e4891)
- [d86688eb32 - Add back mising sponsor and implement skip from sponsors page](https://github.com/phpmyadmin/website/commit/d86688eb321c83c5b8a8acb805c5872e8c7d91eb)
- [e8bd19bd16 - Handle rel= for sponsors too](https://github.com/phpmyadmin/website/commit/e8bd19bd16ab74517fddee9bf010a263d03385e1)
- [37e7cddfc9 - Handle plurals for Sponsor titles](https://github.com/phpmyadmin/website/commit/37e7cddfc9817d5003e9bb4897ebb1473f03b295)
- [6dcd444a19 - Move sponsors from `pmaweb/templates/sponsors.html` to `data/sponsors.py`](https://github.com/phpmyadmin/website/commit/6dcd444a193500fb49805e12f3907350066d88e8)
- [d0c9344189 - Improve cdn to handle HTTP errors](https://github.com/phpmyadmin/website/commit/d0c93441893f81ddb98a552c7d7291eac4481c27)
- [e35a7c8ef7 - Move fetch_planet into fetch_blog and import my blog posts into the planet section](https://github.com/phpmyadmin/website/commit/e35a7c8ef7716b045d39fc98d07d33fb39aee4f4)
- [5dd00305e7 - Drop planet.phpmyadmin.net](https://github.com/phpmyadmin/website/commit/5dd00305e74b03947ea33c2249e9c2c3af5cdf7d)

## phpmyadmin/shapefile (GitHub)

### Week 12

- [78225ea5cd - Set Scrutinizer to PHP 8.2.29 (they do not have .30) for psalm to install](https://github.com/phpmyadmin/shapefile/commit/78225ea5cd271d0b21e88b912f4f1c3262d47886)
- [c4e095418a - Set Scrutinizer to PHP 8.2 and remove adding dbase as it breaks the install](https://github.com/phpmyadmin/shapefile/commit/c4e095418aca8acfb130abf6c66da4170f96003e)
- [e9063651b9 - Set Scrutinizer to PHP 8.2.29 (they do not have .30)](https://github.com/phpmyadmin/shapefile/commit/e9063651b9b8a35070a2d525a34484e0678013ec)
- [f81b04ee40 - Bump Scrutinizer to PHP 8.2.30](https://github.com/phpmyadmin/shapefile/commit/f81b04ee4008e6e08b340551f3d1ae7818183ace)
- [158de5b7bb - Update Scrutinizer comments to PHP 8.x](https://github.com/phpmyadmin/shapefile/commit/158de5b7bb238976d74d4afea9e47c452691af1d)
- [e2feec1918 - Use Ubuntu bionic for PHP 7.2 on Scrutinizer](https://github.com/phpmyadmin/shapefile/commit/e2feec1918acbc785c33f4a6b4de1770f292d9f9)

## phpmyadmin-team/mariadb-mysql-kbs (GitLab)

### Week 10

- [64bb41398a - d/ch](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/64bb41398af50f296fe4a030d6f34f4018ffc317)
- [572a07c826 - Use phpunit --do-not-cache-result --no-coverage --fail-on-empty-test-suite](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/572a07c826cb52f9b8ea7d5377516610c17172d6)
- [816dd331f6 - Bump d/copyright years](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/816dd331f632f1fd9bf52a86710d24ca9faa292b)

### Week 13

- [06f43a2c57 - Send 1.3.0-4 to unstable](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/06f43a2c574bcefd5a2a845f5a79127ee93125c9)

## phpmyadmin-team/tcpdf (GitLab)

### Week 10

- [3eea1f1ca2 - Send 6.11.2+dfsg-2 to unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/3eea1f1ca28a758c1d9d503d9ea0a52cc4689904)
- [d46f111cc6 - Also close the Debian bug](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/d46f111cc6d7ec6396db3e03b1b33f9f84858113)
- [d97d65b156 - d/ch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/d97d65b15694707faa3f50a594c88ebcc6ba6f4f)
- [304732db65 - Refresh the armhf  patch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/304732db657427cb84ca187fddb15ab5f3f25f60)
- [7b6dfcfd99 - Import the patch from Ubuntu](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/7b6dfcfd997733ccaf48f0a878346dfec6a4ebf7)
- [7da3bece6f - Send 6.11.2+dfsg-1 to unstable](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/7da3bece6fad89d20d3b5f662bb1821b6873a297)
- [7818c84b8f - Bump d/copyright years](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/7818c84b8f8cdbfcd3e15fa6cd3cc3a3ca7c5232)
- [e0edcee6ca - Bump Standards-Version to 4.7.3](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/e0edcee6ca7bd9c5b8caaff3c363281ff22a1e5e)
- [52aa81580a - d/ch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/52aa81580a17663426b2e0d6ad35ec034324336c)
- [0c62c92540 - Update upstream source from tag 'upstream/6.11.2+dfsg'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/0c62c92540c387132ce0614936862cca211a01e1)
- [5b490762e1 - New upstream version 6.11.2+dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/5b490762e160a232334ed651fa8decded76bed9d)
- [56cea7fc28 - d/ch](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/56cea7fc28e0b8fa1e74975b3a543df893cf54c8)
- [2aafb8664f - Update upstream source from tag 'upstream/6.11.0+dfsg'](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/2aafb8664f4d5e45a0f9785d0882752a05ed9a60)
- [23c3e2a107 - New upstream version 6.11.0+dfsg](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/23c3e2a107e903255e155c2c4187df730b7761a2)
- [ce96ad75c1 - Comment out Filename-Mangle for uscan to work (See: #1129464)](https://salsa.debian.org/phpmyadmin-team/tcpdf/-/commit/ce96ad75c1f5474c0ffdb9788a8905268003c814)

# Handled issues

## phpmyadmin/phpmyadmin (GitHub)

### Week 10

- [16901 - Moving column to second place creates incorrect SQL](https://github.com/phpmyadmin/phpmyadmin/issues/16901)
- [20195 - [Bug]: Error code: 200 when generating charts](https://github.com/phpmyadmin/phpmyadmin/issues/20195)
- [15116 - Notice Undefined index: sql_insert_syntax](https://github.com/phpmyadmin/phpmyadmin/issues/15116)
- [20140 - [6.0]: Uncaught TypeError: can't access property "error", data.responseJSON is undefined](https://github.com/phpmyadmin/phpmyadmin/issues/20140)
- [19330 - Negative System Monitor chart values](https://github.com/phpmyadmin/phpmyadmin/issues/19330)
- [18292 - Input fields styling in pmahomme theme](https://github.com/phpmyadmin/phpmyadmin/issues/18292)
- [20174 - [Bug]: Cannot read properties of undefined (reading 'name')](https://github.com/phpmyadmin/phpmyadmin/issues/20174)
- [20139 - [Bug]: Uncaught TypeError: can't access property "success", data is undefined](https://github.com/phpmyadmin/phpmyadmin/issues/20139)
- [20142 - [Bug]: Uncaught TypeError: can't access property "trim", $form.find(...).val() is undefined](https://github.com/phpmyadmin/phpmyadmin/issues/20142)
- [20141 - [Bug]: Uncaught TypeError: can't access property "debug", data is undefined](https://github.com/phpmyadmin/phpmyadmin/issues/20141)

### Week 11

- [20235 - [Bug]: composer install of web-auth/webauthn-lib fails](https://github.com/phpmyadmin/phpmyadmin/issues/20235)
- [17451 - Rows count for table_uiprefs](https://github.com/phpmyadmin/phpmyadmin/issues/17451)

### Week 12

- [20182 - ShowDatabasesNavigationAsTree is not well documented](https://github.com/phpmyadmin/phpmyadmin/issues/20182)
- [20121 - [6.0]: Columns are missing on Find and replace](https://github.com/phpmyadmin/phpmyadmin/issues/20121)
- [20153 - [6.0]: ErrorException: foreach() argument must be of type array|object, null given, [5.2] ImportXml::doImport(): Node no longer exists](https://github.com/phpmyadmin/phpmyadmin/issues/20153)
- [19891 - [Bug]: When `$cfg['Export']['format']`/`$cfg['Import']['format']` is invalid, 'sql' should be the default](https://github.com/phpmyadmin/phpmyadmin/issues/19891)
- [20171 - [Bug]: Unknown system variable 'storage_engine' since MariaDB 12](https://github.com/phpmyadmin/phpmyadmin/issues/20171)
- [20102 - [Bug]: Press escape to cancel editing not showing for truncated values](https://github.com/phpmyadmin/phpmyadmin/issues/20102)
- [20134 - [Bug]: ErrorException: Undefined array key 0](https://github.com/phpmyadmin/phpmyadmin/issues/20134)
- [20247 - CI for QA_5_2 has errors](https://github.com/phpmyadmin/phpmyadmin/issues/20247)
- [20245 - [Feat]: Add configurable pre-query hook SQL executed before user-initiated queries](https://github.com/phpmyadmin/phpmyadmin/issues/20245)

### Week 13

- [20181 - [Bug]: Can't select text / column data](https://github.com/phpmyadmin/phpmyadmin/issues/20181)

## phpmyadmin/docker (GitHub)

### Week 12

- [467 - Permission denied: access to / denied with overlayfs](https://github.com/phpmyadmin/docker/issues/467)

## phpmyadmin/website (GitHub)

### Week 12

- [196 - https://planet.phpmyadmin.net/ 404](https://github.com/phpmyadmin/website/issues/196)
- [188 - Release notes not showing for 5.2.2](https://github.com/phpmyadmin/website/issues/188)
- [176 - My attempt to refresh the phpMyAdmin website](https://github.com/phpmyadmin/website/issues/176)
- [189 - TypeError: 'type' object is not subscriptable in files/models.py](https://github.com/phpmyadmin/website/issues/189)
- [135 - Book cover gone crazy](https://github.com/phpmyadmin/website/issues/135)
- [190 - Dark mode](https://github.com/phpmyadmin/website/issues/190)
- [191 - Daily snapshots not generated since 2025-07-18](https://github.com/phpmyadmin/website/issues/191)
