# Consulting Services for phpMyAdmin

## Report - November 2022

## Overview

Over the month of November 2022 I did some bug fixing, pull-request reviews and improved the Original theme.
Also wrote some documentation and some tests.

## First week (44)

I did bump the CodeMirror library and merged some pull-requests.

## Second week (45)

I worked on some Original theme fixes and fixed a bug about scrolling in the CodeMirror box.

## Third week (46)

I merged pull-requests accors our repositories. Fixed the website CDN purge code.
I worked on a JS performance issue on export as text. Updated the FAQ.
Fixed multiple bugs and made visual improvements.
Also migrated two search fields to bootstrap.

## Fourth week (47)

I reviewed and merged pull-requests accors our repositories.
Documented, reviewed, wrote tests, merged the work for adding new ENVs on the docker repository.
I also worked on Debian packaging and server maintenance.

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 44

- [f6158aac5d - Bump codemirror 5.65.3 to 5.65.9](https://github.com/phpmyadmin/phpmyadmin/commit/f6158aac5d9ed968af71b64b2dd753d36d933595)
- [e99bfaee4b - Add a ChangeLog entry for #17777](https://github.com/phpmyadmin/phpmyadmin/commit/e99bfaee4b5d9888ebb4813b5de8d0edc630dde8)
- [9b700c6307 - Merge #17852 - Fix #17777 - Uncaught TypeError: Cannot read properties of null (reading 'inline')](https://github.com/phpmyadmin/phpmyadmin/commit/9b700c63077b89bc3c2ba9392c795e7b73f0c240)
- [3a7b77d22e - Update psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/3a7b77d22e92e1ca8b6648aafecffa16e702cf82)
- [c00a904827 - Merge #17864 - Fix #17793 - insert record - fix null not selected if nullable UUID & insert error](https://github.com/phpmyadmin/phpmyadmin/commit/c00a90482717764334bcccb47e91da3e85a463e3)
- [296e6b62ce - Update phpstan and psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/296e6b62cef88d925d646eabb03ea7cb12a6c14b)
- [5e1ff822f3 - Merge #17860 - Fix #17793 - insert record - fix null not selected if nullable UUID & insert error](https://github.com/phpmyadmin/phpmyadmin/commit/5e1ff822f3492a42c3b638f185ba6108e83eb12c)

### Week 45

- [663e7a0e67 - Add ChangeLog entries for 970dbd6d44 and 551509f345](https://github.com/phpmyadmin/phpmyadmin/commit/663e7a0e678a1330c9c406ccc8c26269aee6b01a)
- [551509f345 - Fix Original theme buttons](https://github.com/phpmyadmin/phpmyadmin/commit/551509f345aef2fa7eb3209b822239113bd7df80)
- [e047446323 - Add a comment to help code search about cm-s-pma](https://github.com/phpmyadmin/phpmyadmin/commit/e04744632331b1da6f4eefb7020b3269e8c96244)
- [ed00df955f - Fix #17705 - remove hiding the scroll bars because large and long SQL queries can not be scrolled](https://github.com/phpmyadmin/phpmyadmin/commit/ed00df955f79b3047cf1a906161b0de55f799903)
- [970dbd6d44 - Fix Original theme login form label width](https://github.com/phpmyadmin/phpmyadmin/commit/970dbd6d446eb80a875e585d5ce31f971f6cd74c)

### Week 46

- [630f9bf00e - Ref #17478 - Fix PHP Undefined array key "auth_type" when server does not start at 0](https://github.com/phpmyadmin/phpmyadmin/commit/630f9bf00e863f56cb6d986d5e437aa1c85edabd)
- [182cb205a7 - Fix coding standard mistakes](https://github.com/phpmyadmin/phpmyadmin/commit/182cb205a73f8171f56e5e9b4efe266ba8d04e67)
- [420485a41b - Fix tests after e28bc2d8f65b17c5d30df408d8fd3221eb2a491e](https://github.com/phpmyadmin/phpmyadmin/commit/420485a41b110433940ec7d4e95e922ad1c592bc)
- [7c8a3aee3a - Add a ChangeLog entries for #17446](https://github.com/phpmyadmin/phpmyadmin/commit/7c8a3aee3a59fc765bbbea24688c3b751e0878e8)
- [e28bc2d8f6 - Fix #17446 - Missing option for STORED virtual column and lower the check to MySQL>=5.7.6. Nothing is supported on 5.7.5.](https://github.com/phpmyadmin/phpmyadmin/commit/e28bc2d8f65b17c5d30df408d8fd3221eb2a491e)
- [132b01d3fc - Add a ChangeLog entry for #17340](https://github.com/phpmyadmin/phpmyadmin/commit/132b01d3fcb46d66823795a7cba60081a765eadd)
- [bad8f2f913 - Fix #17340 - New Table -> VIRTUAL attribute is lost when adding new column](https://github.com/phpmyadmin/phpmyadmin/commit/bad8f2f913551351b803f3d4999cd369b35b6314)
- [151e6247c6 - Bump codemirror 5.65.9 to 5.65.10](https://github.com/phpmyadmin/phpmyadmin/commit/151e6247c6c583b2eee3cf458064ebacafe714cc)
- [156da4e3d2 - Add a ChangeLog entry for c57fbe1924](https://github.com/phpmyadmin/phpmyadmin/commit/156da4e3d22cabc3226c127721263a13d9e6886a)
- [c57fbe1924 - Fix broken tree line when the DB is expanded](https://github.com/phpmyadmin/phpmyadmin/commit/c57fbe1924b942f9dff8530dd28a50795393e7e7)
- [e0e740f108 - Add a ChangeLog entry for #17703](https://github.com/phpmyadmin/phpmyadmin/commit/e0e740f10854235cd15f681bf9c22004a84b99c7)
- [33859e934b - Merge #17885 - Fix #17703 - Datepicker appears on all fields, not just date](https://github.com/phpmyadmin/phpmyadmin/commit/33859e934b8320d3a45bb75d1236c5e11d648936)
- [099fa33530 - Update FAQ 1.44 for 5.3](https://github.com/phpmyadmin/phpmyadmin/commit/099fa3353001d0f657ca344a5748a75774294078)
- [c411d0fa4d - Update baselines](https://github.com/phpmyadmin/phpmyadmin/commit/c411d0fa4db3b83567672a55b886eedbb6670733)
- [f3c4ef9bfa - Update broken link on config.default.php and fix a typo](https://github.com/phpmyadmin/phpmyadmin/commit/f3c4ef9bfa76724fb5ad6776d8bfd186a4063a07)
- [45853b69b7 - Fix #17902 - truncate "title" attribute of foreign keys](https://github.com/phpmyadmin/phpmyadmin/commit/45853b69b7c20e36531cf7a74eec64c434af4294)
- [d88ef680da - Add a ChangeLog entry for 87e44947a6](https://github.com/phpmyadmin/phpmyadmin/commit/d88ef680da8e73699fbebde4cde8fcab2ac5b8e8)
- [87e44947a6 - Fix big performance issue making CPU 100% when scrolling the textarea of an export of #17902 data](https://github.com/phpmyadmin/phpmyadmin/commit/87e44947a602ff1463cbdfd8a07e363fdc918a1b)
- [8720f9f1ca - Update the translation for "Filter rows" to include ":"](https://github.com/phpmyadmin/phpmyadmin/commit/8720f9f1cad2703c1a31d8cfb6bf7301b1dd0c99)
- [54b433c40c - Convert "Filter rows" on results table to Bootstrap](https://github.com/phpmyadmin/phpmyadmin/commit/54b433c40c1576d27ace61e41b6fc54c8bdaaf0c)
- [dd915776f2 - Convert "Filter rows" on central columns to Bootstrap](https://github.com/phpmyadmin/phpmyadmin/commit/dd915776f205eb9c5592ec4f6cf11b50a8d52296)
- [b820730f84 - Fix PR #17906 on master branch](https://github.com/phpmyadmin/phpmyadmin/commit/b820730f84ed7b294d6f85e501ac63d6c9c79129)
- [46c44e77a7 - Add a ChangeLog entry for #17482](https://github.com/phpmyadmin/phpmyadmin/commit/46c44e77a7715fa98235cf58811b02253b2a48f7)
- [d3f68df5e2 - Fix "Enable foreign key checks" on metro theme spacing to the checkbox](https://github.com/phpmyadmin/phpmyadmin/commit/d3f68df5e2a8b939ef95ac177c58ae88cf031973)
- [7fb122ac27 - Merge #17906 - Fix #17482 - default to "Full texts" when running explain statements](https://github.com/phpmyadmin/phpmyadmin/commit/7fb122ac27153990e7e4f1e5a7eb93bfb1ab9798)
- [9a8452735c - Switch to sql-parser dev-master version before it is released](https://github.com/phpmyadmin/phpmyadmin/commit/9a8452735c653ac0c35059ab8c93d5b90561fd8c)
- [974b716eb4 - Add a ChangeLog entry for df42048cad](https://github.com/phpmyadmin/phpmyadmin/commit/974b716eb4209bb028861f27c330c11e54fc4c4f)
- [027171169e - Fix PHP error on adding new column on create table form](https://github.com/phpmyadmin/phpmyadmin/commit/027171169e936be0a8904679dbe75ef7b4a373ae)
- [9fd401c8c9 - Add a ChangeLog entry for #17606](https://github.com/phpmyadmin/phpmyadmin/commit/9fd401c8c95b640be05104b2b266de22afae47c1)
- [1bf31e5b7c - Add a ChangeLog entry for #17892](https://github.com/phpmyadmin/phpmyadmin/commit/1bf31e5b7c0751b31fbdf5ba5e78843b6fb04e7f)
- [1f2af424af - Fix #17892 - Closing index edit modal and reopening causes it to fire twice](https://github.com/phpmyadmin/phpmyadmin/commit/1f2af424afcf65c6217deaef49872147c135dc2e)
- [f89cb7050a - Add sodium to the extension list on the main page](https://github.com/phpmyadmin/phpmyadmin/commit/f89cb7050afbe7f6d9b6077b3a918dc7d22c02e2)

### Week 47

- [a764f1bb2f - Update sql-parser commit hash (Fixed support for "NOT")](https://github.com/phpmyadmin/phpmyadmin/commit/a764f1bb2ff98e970c709a91a1c232fe64cec141)
- [4507272b98 - Add a ChangeLog entry for #15887](https://github.com/phpmyadmin/phpmyadmin/commit/4507272b9872de110111da96de7c3078e4074e5b)
- [ddd512cd8b - Fix #15887 - Drop table errors ignored](https://github.com/phpmyadmin/phpmyadmin/commit/ddd512cd8b652f2ff0bcba48c6c3475cfdfd21c9)
- [d86534a8c1 - Add a ChangeLog entry for #17177](https://github.com/phpmyadmin/phpmyadmin/commit/d86534a8c1b0dd273dc9d990d67dc57ea8ab479d)
- [0108190ebd - Fix #17177 - Preview SQL when reordering columns doesn't work on move columns](https://github.com/phpmyadmin/phpmyadmin/commit/0108190ebdc51dd77e686519c9bd27bbdb944a55)
- [a27b77531c - Add a ChangeLog entry for #17632](https://github.com/phpmyadmin/phpmyadmin/commit/a27b77531cf31a445767699dfb582b714ca52c40)
- [69768f15e1 - Fix #17632 - Login Page: Tab keypress to Text Fields](https://github.com/phpmyadmin/phpmyadmin/commit/69768f15e1be1764c4666fb9b5c8681b9ef9fbe0)
- [e688c46455 - Merge #17823 - Fix #17598 - Change password nav link is missing](https://github.com/phpmyadmin/phpmyadmin/commit/e688c46455ee9e6ad68638999f51723778799dec)
- [074691c8e4 - Merge #17678 - Fix #17353 - unintentional column deletion](https://github.com/phpmyadmin/phpmyadmin/commit/074691c8e43507ee6e2042e6155d9dbf5e7bce44)
- [70c0b2472f - Add a ChangeLog entry for 997877a14f](https://github.com/phpmyadmin/phpmyadmin/commit/70c0b2472f524c8f20e9f28641b08e13b6163ec7)
- [997877a14f - Merge #17814 - Fix column names option for CSV Export](https://github.com/phpmyadmin/phpmyadmin/commit/997877a14f5be8a573cd7a69df9fabde63bb5917)
- [efae3a98e0 - Add new Docker ENVs to the documentation](https://github.com/phpmyadmin/phpmyadmin/commit/efae3a98e0a0f2e93a9dbb44957aa2909adff191)
- [1e1313825a - Update sql-parser commit hash (Added support for "NOT" and "ANALYSE" statements)](https://github.com/phpmyadmin/phpmyadmin/commit/1e1313825a6541a6562edd78aefdf015a0487ea0)
- [883226c1f7 - Ref #17478 - Fix mistake in PHP operators](https://github.com/phpmyadmin/phpmyadmin/commit/883226c1f75727ec9672cb28755ba32357da4f36)

## phpmyadmin/docker (GitHub)

### Week 46

- [908e79d246 - Merge #389 - Use GitHub Actions to use the new bashbrew action](https://github.com/phpmyadmin/docker/commit/908e79d24681a252d364ecdc0ef90558e1f10d90)

### Week 47

- [c59f287b98 - Move documentation for ENVs of #384 and fixup the wording](https://github.com/phpmyadmin/docker/commit/c59f287b987b3af5f4ac522e59abf84ab067b260)
- [a5fd64c9fb - Add CHANGELOG entries for #381 and #384](https://github.com/phpmyadmin/docker/commit/a5fd64c9fbcaae81291580b425278937c3541a03)
- [e6f53b6f8e - Add tests for phpmyadmin/docker#384 to the CI](https://github.com/phpmyadmin/docker/commit/e6f53b6f8e407db548ffad056182f033c712e76d)
- [71d54acc93 - Merge #384 - Add ENV PMA_UPLOADDIR and PMA_SAVEDIR ENVs](https://github.com/phpmyadmin/docker/commit/71d54acc9309c04ed53a148ca1979b6cdc10c5b9)
- [c3e03b7429 - Add tests for phpmyadmin/docker#384](https://github.com/phpmyadmin/docker/commit/c3e03b74299038e8160d78e96fd428aac4d07020)
- [83bd66d27f - Update config.inc.php files](https://github.com/phpmyadmin/docker/commit/83bd66d27f0a0b9f087f0d9b2e8f17ba4bd43179)
- [1effd43182 - Merge #381 - Fix issue port 80- range when using APACHE_PORT](https://github.com/phpmyadmin/docker/commit/1effd43182e9a2e90e991ce5e521c1df68d9d089)

## phpmyadmin/website (GitHub)

### Week 46

- [78e4159224 - Fix purge all files called on regular snapshots](https://github.com/phpmyadmin/website/commit/78e415922468d3d1ea7ae1beef4d55ad2e391dbf)
- [04d542e56d - Fix missing snapshot json file to purge CDN action](https://github.com/phpmyadmin/website/commit/04d542e56df095ad06be7d6fc89ceb3f508a6048)

## phpmyadmin/sql-parser (GitHub)

### Week 46

- [bb49d475e5 - Re-build out files](https://github.com/phpmyadmin/sql-parser/commit/bb49d475e58b4082e63ed91a92ce955c9c20b058)
- [ad6c5da711 - Add a better return type for Query::getAll()](https://github.com/phpmyadmin/sql-parser/commit/ad6c5da71148fc3f45bdeb83a9889d8ed1b7b757)
- [8fddb4becd - Add a CHANGELOG entry for #386](https://github.com/phpmyadmin/sql-parser/commit/8fddb4becdfb657db3b9ade52e952ef3c822a26b)
- [1913498f80 - Merge #386 - Fixed differentiating between analyze and explain statements](https://github.com/phpmyadmin/sql-parser/commit/1913498f8036eb60bd9be19f649d6cef43d5648b)
- [f987fcd125 - Update psalm baseline](https://github.com/phpmyadmin/sql-parser/commit/f987fcd12579993a2c4f3d964ba1fede6fe893f4)

### Week 47

- [a70dec025b - Merge #391 - Fix #374 - Adding NOT to the select options](https://github.com/phpmyadmin/sql-parser/commit/a70dec025bbcf9bddfc42117a29226b94694cf30)
- [448c92efdf - Update baselines](https://github.com/phpmyadmin/sql-parser/commit/448c92efdf81a91c17720283457838de2f717324)
- [c4d58c0245 - Fix a typo in Explain statement](https://github.com/phpmyadmin/sql-parser/commit/c4d58c0245dfac3a4dc6e05ee8f34752e573129c)
- [1f7653d281 - Add a CHANGELOG entry for #389](https://github.com/phpmyadmin/sql-parser/commit/1f7653d281bc11e10e6b4a06c76e46bb1bf6326e)
- [158de19fd5 - Merge #389 - Implement the EXPLAIN Parser](https://github.com/phpmyadmin/sql-parser/commit/158de19fd557f686e2bd57ad8b8c9e2ea4b31562)
- [6b91b6489e - Update all out files with the new NOT option](https://github.com/phpmyadmin/sql-parser/commit/6b91b6489e095b366502386c1cf8c2e216092992)
- [f836c35128 - Add a CHANGELOG entry for #374](https://github.com/phpmyadmin/sql-parser/commit/f836c3512857d8637a64ee92d2152250435286c9)
- [eabf67e8aa - Merge #388 - Fix #374 - Adding NOT to the select options](https://github.com/phpmyadmin/sql-parser/commit/eabf67e8aaf7f616e1fdc9a8fa480cf3a21fdcbb)

## docker-library/docs (GitHub)

### Week 47

- [d0d03cad76 - Update the phpMyAdmin image docs](https://github.com/docker-library/docs/commit/d0d03cad762ff1f7374da1cabf4576079cdaecb7)

## docker-library/official-images (GitHub)

### Week 47

- [20061d5d1d - Update the phpMyAdmin image](https://github.com/docker-library/official-images/commit/20061d5d1d3e3fd8593bb527667277c43b11575c)

## phpmyadmin-team/mariadb-mysql-kbs (GitLab)

### Week 47

- [33802fc684 - Use the tags list page instead of the latest release page](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/33802fc68422a58b848a51566e52ec31b90f4b3c)

## phpmyadmin-team/sql-parser (GitLab)

### Week 47

- [97c8305f09 - Add build/logs/junit.xml to d/clean](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/97c8305f09328ec1b4e6a2d0730a34c700c19e21)
- [7a2ded663c - Update autoload template files using phpabtpl](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/7a2ded663c72d2af3b2a7e072988f7cbfdcb7983)
- [4b7d37a628 - Add depends on php-zumba-json-serializer](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/4b7d37a6286c17c2f17f6a4f932061d4ca775750)
- [8fd396c0ed - Bump Standards-Version to 4.6.1](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/8fd396c0ed5674bc4027318398658db71b2fefdb)

# Handled issues

## phpmyadmin/phpmyadmin (GitHub)

### Week 44

- [17777 - Uncaught TypeError: Cannot read properties of null (reading 'inline')](https://github.com/phpmyadmin/phpmyadmin/issues/17777)

### Week 45

- [17636 - Error text: OK (rejected) on home page only](https://github.com/phpmyadmin/phpmyadmin/issues/17636)
- [17867 - Blank screen to do with MySqli constants](https://github.com/phpmyadmin/phpmyadmin/issues/17867)
- [17705 - Submit buttons not working properly in v5.1.3 with Chrome](https://github.com/phpmyadmin/phpmyadmin/issues/17705)

### Week 46

- [17899 - Can't preview SQL for editing an index](https://github.com/phpmyadmin/phpmyadmin/issues/17899)
- [17898 - PHPMyAdmin produces not output if mysqli is missing](https://github.com/phpmyadmin/phpmyadmin/issues/17898)
- [17907 - Empty page when editing/inserting to some tables](https://github.com/phpmyadmin/phpmyadmin/issues/17907)
- [17902 - Error 500 if related table has longtext on the first column](https://github.com/phpmyadmin/phpmyadmin/issues/17902)
- [17446 - Missing option for `STORED` virtual column](https://github.com/phpmyadmin/phpmyadmin/issues/17446)
- [17340 - New Table -> VIRTUAL attribute is lost when adding new column](https://github.com/phpmyadmin/phpmyadmin/issues/17340)
- [17892 - Closing index edit modal and reopening causes it to fire twice](https://github.com/phpmyadmin/phpmyadmin/issues/17892)
- [17431 - "Export SQL" generates invalid SQL if a view contains "order by desc"](https://github.com/phpmyadmin/phpmyadmin/issues/17431)
- [17770 - 2fa problem with phpMyAdmin on Synology](https://github.com/phpmyadmin/phpmyadmin/issues/17770)
- [17478 - If the $cfg['Servers'] array did not start with 1 something unwanted seems to be happend](https://github.com/phpmyadmin/phpmyadmin/issues/17478)
- [17703 - Datepicker appear on all fields, not just date](https://github.com/phpmyadmin/phpmyadmin/issues/17703)
- [17482 - Default to "Full texts" when running ANALYZE](https://github.com/phpmyadmin/phpmyadmin/issues/17482)

### Week 47

- [17877 - Add INDEX is not working](https://github.com/phpmyadmin/phpmyadmin/issues/17877)
- [17353 - Column dropped unintentionally](https://github.com/phpmyadmin/phpmyadmin/issues/17353)
- [17598 - Change password nav link is missing](https://github.com/phpmyadmin/phpmyadmin/issues/17598)
- [17632 - Login Page: Tab keypress to Text Fields](https://github.com/phpmyadmin/phpmyadmin/issues/17632)
- [17123 - Error in processing request | Error text: error (rejected) | It seems that the connection to server has been lost.](https://github.com/phpmyadmin/phpmyadmin/issues/17123)
- [17174 - Uncaught SyntaxError: JSON.parse: unexpected character at line 1 column 1 of the JSON data](https://github.com/phpmyadmin/phpmyadmin/issues/17174)

### Week 48

- [17930 - 2FA setup not working after upgrade](https://github.com/phpmyadmin/phpmyadmin/issues/17930)
- [17933 - Js are missing in 5.2.0 tarball](https://github.com/phpmyadmin/phpmyadmin/issues/17933)

## phpmyadmin/docker (GitHub)

### Week 46

- [387 - All fine with the first connection, then error all the time: Connection refused](https://github.com/phpmyadmin/docker/issues/387)

## phpmyadmin/sql-parser (GitHub)

### Week 47

- [374 - Lots of bogus errors in editor with perfectly valid query](https://github.com/phpmyadmin/sql-parser/issues/374)

### Week 48

- [164 - ALTER TABLE .. PARTITION statement](https://github.com/phpmyadmin/sql-parser/issues/164)
