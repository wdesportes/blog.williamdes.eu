# Consulting Services for phpMyAdmin

## Report - October 2022

## Overview

Over the month of October 2022 I wrote fixes for 5.2 versions.
Merged and reviewed contributor's work. Improved the Metro theme and the UI of old jquery modals.

## First week (40)

__not working on the project__

## Second week (41)

I reviewed and merged quite a lot of pull-requests.
Also made adjustments of tests. Rebased and tested contributors work.

## Third week (42)

I sorted out a lof of old issues, reviewed a lot of pull-requests.
Also fixed UI bugs on the old confirm modal about close modals and go/cancel buttons.
And fixed bugs on the monitor page.

## Fourth week (43)

I started by fixing bugs and made changes to the issue and pull-request workflow and wrote them into a [wiki page](https://github.com/phpmyadmin/phpmyadmin/wiki/Issue-and-pull-request-management)
Merged and reviewed contributions. Changed jquery migrate and validation to the `.min.js` version.
I wrote fixes for the multi table query interface. And improved some details on Metro theme.
And finally I wrote more bug fixes and changed js.cookie.js to the `.min.js` version.

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 41

- [c92621d023 - Merge #17788 - Ref #12262 - Remove inline styles](https://github.com/phpmyadmin/phpmyadmin/commit/c92621d0239b3ccd1c359e6468be3c4d99b43715)
- [f74c9a21fe - Fix InsertEditTest after pull-request #17767](https://github.com/phpmyadmin/phpmyadmin/commit/f74c9a21fe885482b4b3a4811fb8e46dc6bc5a10)
- [578c001a03 - Update phpstan and psalm baselines](https://github.com/phpmyadmin/phpmyadmin/commit/578c001a0356d9fa13b1b790c8e6e60a3093ddb0)
- [09259eb1a1 - Merge #17775 - Fix #17248 - search UUID data type error](https://github.com/phpmyadmin/phpmyadmin/commit/09259eb1a1a54233f341d3707f967e719e3cfcac)
- [e76f0d3a61 - Add a ChangeLog entry for #17656](https://github.com/phpmyadmin/phpmyadmin/commit/e76f0d3a61adec6160f9ed9207edff3b126f4af6)
- [1bce6dcb9b - Merge #17741 - Fix #17656 - Replace/Change/Set table prefix is not working](https://github.com/phpmyadmin/phpmyadmin/commit/1bce6dcb9b2c5adcc0cfde6ef8ac47667501ac98)
- [db3b8e0a0e - Merge #17789 - Ref #17769 - Request superglobals in controllers should be replaced with ServerRequest object](https://github.com/phpmyadmin/phpmyadmin/commit/db3b8e0a0e75d583a47b514f3c55afdd02b8d66d)
- [d82b43c5ff - Fixup testGetMySQLDocuURL after changing setVersion() in DBI](https://github.com/phpmyadmin/phpmyadmin/commit/d82b43c5ff5b06cb03f39f01667652ff87ce8952)
- [2d3bfe3fb4 - Fix casing of isMariaDb on DatabaseInterfaceTest class](https://github.com/phpmyadmin/phpmyadmin/commit/2d3bfe3fb452e47115d8a8ea4226a9a1896d2f63)
- [fd13e506d0 - Fixup tests and DBI after changing setVersion() in DBI](https://github.com/phpmyadmin/phpmyadmin/commit/fd13e506d0538a96fcc6bf8f13ec24fce4ccc1c2)
- [eec023abe1 - Merge #17780 - Fix #17773 - demo footer links should be clickable](https://github.com/phpmyadmin/phpmyadmin/commit/eec023abe19f5de9fa72f1b0f96ff21fa5604dbc)
- [581bae4bb0 - Add a ChangeLog entry for #17248](https://github.com/phpmyadmin/phpmyadmin/commit/581bae4bb0ca9336b97d1f1ec21de40eeaa8f6a9)
- [44a349dd93 - Merge #17767 - Fix #17248 - Support UUID data type for MariaDB](https://github.com/phpmyadmin/phpmyadmin/commit/44a349dd9334b9cf55f0fee78b3839d96e33ebaf)

### Week 42

- [df4e8d2221 - Fix broken createProfilingChart on monitor analyse query](https://github.com/phpmyadmin/phpmyadmin/commit/df4e8d22218d0d9612b327f73dcbcdff9858eff5)
- [72fd1efa5d - Fix Undefined array key on /server/status/monitor/general-log route](https://github.com/phpmyadmin/phpmyadmin/commit/72fd1efa5d6aa8d92f1a8c32f113b9133a8ff289)
- [8c72b89b79 - Fix #17812 - Add missing styles on old confirm modal go/cancel buttons on monitor](https://github.com/phpmyadmin/phpmyadmin/commit/8c72b89b79042d8de930530ece3ed50fb19ffe7e)
- [fb7877061e - Fix #17812 - Add missing styles on old confirm modal go/cancel buttons everywhere](https://github.com/phpmyadmin/phpmyadmin/commit/fb7877061ee860c519128f7ce9ad5f2c3fc46732)
- [a8f6258be3 - Fix #17812 - Add missing styles on old confirm modal close button everywhere](https://github.com/phpmyadmin/phpmyadmin/commit/a8f6258be31c6b87d55a4de8c2ad1052630d268c)
- [60f5cf821e - Fix #17812 - Add missing styles on old confirm modal](https://github.com/phpmyadmin/phpmyadmin/commit/60f5cf821ef7e625ca236eaf97b6d647fc7babb3)
- [0729fb3597 - Fix importing a column from the central column list on structure add column - default value](https://github.com/phpmyadmin/phpmyadmin/commit/0729fb35978315312666d8250fbc7246be2674a0)
- [913a2e7ff3 - Fix import from central column list not setting the default value](https://github.com/phpmyadmin/phpmyadmin/commit/913a2e7ff3c33d6705c43eb1c52d23fe91531069)
- [d67cb109b4 - Remove spaces around the default value of a column](https://github.com/phpmyadmin/phpmyadmin/commit/d67cb109b4f3b40fc54869fa998735c6f368aa19)

### Week 43

- [81e67d2aa3 - Fix type hint on replication controller](https://github.com/phpmyadmin/phpmyadmin/commit/81e67d2aa3ec283bad8436882e414e7d9a280017)
- [ca2b36cfb0 - Revert "Change line number in .po files to make an easy merge of #17826"](https://github.com/phpmyadmin/phpmyadmin/commit/ca2b36cfb08f1acf13e39be0a2f8464cf9777e37)
- [3a653fd838 - Change line number in .po files to make an easy merge of #17826](https://github.com/phpmyadmin/phpmyadmin/commit/3a653fd838a2742eb8c6076c4e54233418b148a5)
- [cf012620db - Merge #17826 - Remove spaces around links and correct text for monitor import file](https://github.com/phpmyadmin/phpmyadmin/commit/cf012620db7330e039fe1676c7e9a7d7b2358fe0)
- [6fa7da2e79 - Add a ChangeLog entries for #17553](https://github.com/phpmyadmin/phpmyadmin/commit/6fa7da2e79a418780686a8b26150aa3ecc74ee3d)
- [359c74ccfc - Ref #17553 - Improve the Metro login form input width](https://github.com/phpmyadmin/phpmyadmin/commit/359c74ccfc6ac2ad8fe79652c5a71ccd2f1a8885)
- [3ade69a81e - Merge #17665 - Fix #17553 - [Metro] Unreadable links and UI fixes/improvements](https://github.com/phpmyadmin/phpmyadmin/commit/3ade69a81e7c85e9d05f9020ee73bf93d2590c18)
- [5f634b15d3 - Add a ChangeLog entry for #17281](https://github.com/phpmyadmin/phpmyadmin/commit/5f634b15d32b43cff853e851edf415e0c9ba167b)
- [87753c20aa - Merge #17840 - Fix #17281 - Fix links to databases for information_schema.SCHEMATA](https://github.com/phpmyadmin/phpmyadmin/commit/87753c20aa66db0e413fcaf72658eff01e4b80fd)
- [e97af7568e - Fix psalm baseline issues introduced by 8424e75907](https://github.com/phpmyadmin/phpmyadmin/commit/e97af7568e47ce6c58decd63fd38c5a6595dbeb8)
- [178c63f8df - Add a ChangeLog entry for #17842 and 64a0908180](https://github.com/phpmyadmin/phpmyadmin/commit/178c63f8df7960ef831bdc1d5bbf5009d536edcf)
- [12b76bb46f - Fix #17842 - Use jquery.validate.min.js (24 KB) instead of jquery.validate.js (50 KB)](https://github.com/phpmyadmin/phpmyadmin/commit/12b76bb46f0c83a5c826541f6026041046f3966e)
- [66a7aa4b23 - Fix closing the criteria area on checkbox click](https://github.com/phpmyadmin/phpmyadmin/commit/66a7aa4b232838481ef85d9ac385eccdfd1bf8fa)
- [64e273f305 - Fix sync script not using the right openlayers version](https://github.com/phpmyadmin/phpmyadmin/commit/64e273f305b3ae989aeb2f70674643a44deac752)
- [a1190d52c1 - Merge #17839 - Fix #17772 - Add missing styles to buttons on "Page-related settings" modal](https://github.com/phpmyadmin/phpmyadmin/commit/a1190d52c16b2af45f8c4407d577dcd64f4f9676)
- [29c54c250e - Use jquery-migrate.min.js (14kB) instead of jquery-migrate.min.js (31kB)](https://github.com/phpmyadmin/phpmyadmin/commit/29c54c250e52098d40caeb9185c6760e4585d173)
- [64a0908180 - Add a ChangeLog entry for #17166](https://github.com/phpmyadmin/phpmyadmin/commit/64a0908180ec1868a4d9d616680a7f09c1adcdef)
- [209d040c80 - Fix #17166 - "Warning: #1287 'X' is deprecated and will be removed in a future release. Please use ST_X instead." On search page](https://github.com/phpmyadmin/phpmyadmin/commit/209d040c80d0d947d32a22f25d3e73bab065d2c7)
- [81a1b62f8b - Fix #17812 - Add missing styles to buttons on add index form for table create](https://github.com/phpmyadmin/phpmyadmin/commit/81a1b62f8b63e8145b0f5224135756cbb7c359be)
- [578b18b43f - Fix add index on new table form has duplicate go buttons in the modal](https://github.com/phpmyadmin/phpmyadmin/commit/578b18b43fd5a7c2ea384da4668f1e9745e2ea95)
- [933db9fc08 - Add a ChangeLog entry for #17389](https://github.com/phpmyadmin/phpmyadmin/commit/933db9fc087a4e20de86330959a0fc4b34883784)
- [4865ba9441 - Fix #17389 - HTML disappears when exporting settings to browser's storage](https://github.com/phpmyadmin/phpmyadmin/commit/4865ba94418bf851d36713d72565acd227a45a9e)
- [de28c21aa3 - Fix #17812 - Add missing styles to buttons on change procedure/function form](https://github.com/phpmyadmin/phpmyadmin/commit/de28c21aa35d978389112a53ab6f37c2354e5b75)
- [2af30686bf - Add a ChangeLog entry for #17772](https://github.com/phpmyadmin/phpmyadmin/commit/2af30686bffae9189ea85274acaa3915067d9f92)
- [85d75085b7 - Merge #17808 - Fix #17772 - Wrong styles for add button from central columns on MariaDB](https://github.com/phpmyadmin/phpmyadmin/commit/85d75085b7f930dbe253a2331d3ece3f1ffcf825)
- [a7a9055100 - Update baselines](https://github.com/phpmyadmin/phpmyadmin/commit/a7a90551007d98e81562515153dd96aaa94498b6)
- [47213b8819 - Fix tests for pull-request #17797](https://github.com/phpmyadmin/phpmyadmin/commit/47213b8819b2d902ec455c949b8c46f2a04c436c)
- [be57ae7ddf - Add a ChangeLog entry for #17390](https://github.com/phpmyadmin/phpmyadmin/commit/be57ae7ddf306d627db801f12ca62f71d214390c)
- [51bf404e32 - Fix #17390 - Create view modal doesn't show on results and empty results](https://github.com/phpmyadmin/phpmyadmin/commit/51bf404e321042434eb1a6f6d73173f75bf64b55)
- [64eca89553 - Add a ChangeLog entry for 8424e75907](https://github.com/phpmyadmin/phpmyadmin/commit/64eca89553c0e63ab8666f3743023ae23d1d9fb2)
- [8424e75907 - Fix "Link not found!" on foreign columns](https://github.com/phpmyadmin/phpmyadmin/commit/8424e75907b2631de017cf012c724de7a68af7ab)
- [ce47abc300 - Add a ChangeLog entry for 3aa80636e7](https://github.com/phpmyadmin/phpmyadmin/commit/ce47abc300ba18901f50801a6d5daf48b8870c28)
- [3aa80636e7 - Fix monitor filter queries only filtering the first row](https://github.com/phpmyadmin/phpmyadmin/commit/3aa80636e71601c1bc58843b20fa0cde56139702)

### Week 44

- [bff74dc588 - Fix #17705 - CodeMirror query box has overflow preventing click](https://github.com/phpmyadmin/phpmyadmin/commit/bff74dc588895c58a409af222e9d8911f4620fd7)
- [10b2cbfd0a - Add a ChangeLog entry for #17705](https://github.com/phpmyadmin/phpmyadmin/commit/10b2cbfd0a7b1199a6a52e36f6617984d25b6606)
- [6dd05c51ad - Fix #17705 - Inline SQL query edit FK checkbox preventing submit buttons from working](https://github.com/phpmyadmin/phpmyadmin/commit/6dd05c51ad390bd9c75cd467bb5de1e8c234ef93)
- [472391794f - Add a ChangeLog entry for #16042](https://github.com/phpmyadmin/phpmyadmin/commit/472391794fc0d60c5024f31e75afafe562a652c8)
- [dca4119c1f - Merge #17844 - Fix #16042 - Gzip encoding in Firefox - Exported gzip file of database has first ~73 kB uncompressed and rest is gzip compressed](https://github.com/phpmyadmin/phpmyadmin/commit/dca4119c1f2eac736c35eb2d4a5e4073d3f29790)
- [e51e3fa71f - Fix typo in test data](https://github.com/phpmyadmin/phpmyadmin/commit/e51e3fa71f05e240ca017548463a2d37471ea88a)
- [455016557e - Ref #17028 - Add test cases for queries](https://github.com/phpmyadmin/phpmyadmin/commit/455016557ef91ac02046375b37981dcf09a1d7e3)
- [32de166f03 - Fix #17812 - Add missing close button style on pick from central column modal on table structure](https://github.com/phpmyadmin/phpmyadmin/commit/32de166f03914943d534f341219b4c3e7b2030b3)
- [b033099d1e - Add a ChangeLog entry for #17842](https://github.com/phpmyadmin/phpmyadmin/commit/b033099d1ea7c85905b304f3d6c9ba50429545ce)
- [00452af4dc - Merge #17845 - Fix #17842 - Change js.cookie.js to js.cookie.min.js](https://github.com/phpmyadmin/phpmyadmin/commit/00452af4dca33da17659af0280765668fdb0c8e6)

# Handled issues

## phpmyadmin/phpmyadmin (GitHub)

### Week 40

- [17748 - 5.2.0 fail to report that mysqli is missing](https://github.com/phpmyadmin/phpmyadmin/issues/17748)

### Week 41

- [17771 - FROM](https://github.com/phpmyadmin/phpmyadmin/issues/17771)
- [17773 - On demo server footer links aren't clickable](https://github.com/phpmyadmin/phpmyadmin/issues/17773)
- [17248 - please support uuid data type](https://github.com/phpmyadmin/phpmyadmin/issues/17248)
- [17656 - Replace table prefix not working for me](https://github.com/phpmyadmin/phpmyadmin/issues/17656)

### Week 42

- [17317 - In insert mode,I didnt see the complete list of possible values for a column, based on some foreign table](https://github.com/phpmyadmin/phpmyadmin/issues/17317)
- [17588 - Warning in .\libraries\classes\Display\Results.php#4403](https://github.com/phpmyadmin/phpmyadmin/issues/17588)
- [17418 - phMyAdmin 5.5.1 & Xamp 8.1.2 > deprecation notices !](https://github.com/phpmyadmin/phpmyadmin/issues/17418)
- [17552 - Connection Error](https://github.com/phpmyadmin/phpmyadmin/issues/17552)
- [14018 - Manual download of language](https://github.com/phpmyadmin/phpmyadmin/issues/14018)
- [12833 - Remove lines to free up space](https://github.com/phpmyadmin/phpmyadmin/issues/12833)
- [14355 - Discussion: Introduction to Modern Javascript and Tools](https://github.com/phpmyadmin/phpmyadmin/issues/14355)
- [14971 - Ability to generate pre-coded HTML+PHP forms to insert data in database](https://github.com/phpmyadmin/phpmyadmin/issues/14971)
- [14368 - Support DATABASE_URL env var for deployment on Heroku/Dokku](https://github.com/phpmyadmin/phpmyadmin/issues/14368)
- [16419 - Errors in 5.0.4 when removing pragmarx folder](https://github.com/phpmyadmin/phpmyadmin/issues/16419)
- [16006 - Hiding host in failed login attempts](https://github.com/phpmyadmin/phpmyadmin/issues/16006)
- [17489 - Error in reproducing the branch QA_5_1](https://github.com/phpmyadmin/phpmyadmin/issues/17489)
- [16951 - Daily build failing](https://github.com/phpmyadmin/phpmyadmin/issues/16951)
- [17811 - Symlink : autoload.php missing or not readable](https://github.com/phpmyadmin/phpmyadmin/issues/17811)
- [17136 - Deprecation Notice when try create new table](https://github.com/phpmyadmin/phpmyadmin/issues/17136)

### Week 43

- [17434 - Fatal error: Unsupported operand types in Results.php](https://github.com/phpmyadmin/phpmyadmin/issues/17434)
- [17534 - Index separation border](https://github.com/phpmyadmin/phpmyadmin/issues/17534)
- [17390 - Create view modal doesn't show](https://github.com/phpmyadmin/phpmyadmin/issues/17390)
- [17772 - Wrong styles for add button from central columns on MariaDB](https://github.com/phpmyadmin/phpmyadmin/issues/17772)
- [17166 - Warning: #1287 'X' is deprecated and will be removed in a future release. Please use ST_X instead](https://github.com/phpmyadmin/phpmyadmin/issues/17166)
- [17389 - HTML disappears when exporting settings to browser's storage](https://github.com/phpmyadmin/phpmyadmin/issues/17389)
- [17179 - Uncaught TypeError: can't access property "messages", $.validator is undefined](https://github.com/phpmyadmin/phpmyadmin/issues/17179)
- [17175 - Uncaught TypeError: can't access property "setValue", ConsoleInput.inputs.bookmark is undefined](https://github.com/phpmyadmin/phpmyadmin/issues/17175)
- [17832 - Warning in ./libraries/classes/Dbal/DbiMysqli.php#198](https://github.com/phpmyadmin/phpmyadmin/issues/17832)
- [17812 - [UI] Broken styles on old confirm modal](https://github.com/phpmyadmin/phpmyadmin/issues/17812)
- [17842 - Use jquery.validate.min.js and js.cookie.min.js](https://github.com/phpmyadmin/phpmyadmin/issues/17842)
- [17669 - The preview modal query index is below the modal  I believe that just change the z-index and it should solve.](https://github.com/phpmyadmin/phpmyadmin/issues/17669)
- [17396 - Warning: Unknown: POST Content-Length of 46248103 bytes exceeds the limit of 8388608 bytes in Unknown on line 0](https://github.com/phpmyadmin/phpmyadmin/issues/17396)
- [17481 - "show all" -> browse output empty - not even a empty result](https://github.com/phpmyadmin/phpmyadmin/issues/17481)
- [17611 - Queries History - one click](https://github.com/phpmyadmin/phpmyadmin/issues/17611)
- [17483 - phpMyAdmin ignore $cfg['Servers'][$i]['host'] in config.inc.php](https://github.com/phpmyadmin/phpmyadmin/issues/17483)
- [17843 - Warning in ./libraries/classes/Dbal/DbiMysqli.php#209](https://github.com/phpmyadmin/phpmyadmin/issues/17843)

### Week 44

- [17642 - unknown bug on chrome](https://github.com/phpmyadmin/phpmyadmin/issues/17642)
- [17847 - Uncaught TypeError: Cannot read properties of undefined (reading 'get')](https://github.com/phpmyadmin/phpmyadmin/issues/17847)
- [17710 - phpMyAdmin - Configuring pmadb failed to access](https://github.com/phpmyadmin/phpmyadmin/issues/17710)
- [16042 - Exported gzip file of database has first ~73 kB uncompressed and rest is gzip compressed](https://github.com/phpmyadmin/phpmyadmin/issues/16042)

## phpmyadmin/docker (GitHub)

### Week 40

- [294 - deploy to kubernetes issue](https://github.com/phpmyadmin/docker/issues/294)
