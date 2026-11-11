+++
title = "Report for May 2021"
date = 2021-05-01T12:00:00Z
updated = 2021-06-01T11:50:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for May 2021.

<!-- more -->

## First week (18)

_Not working on the project_

Issue and pull request triage.

## Second week (19)

_Not working on the project_

Issue and pull request triage.

## Third week (20)

_Not working on the project_

Issue and pull request triage.

## Fourth week (21)

_Not working on the project_

On the week-end I did the setup of Sentry to manage our error reports.
And finished the code I had prepared on the error reporting server to forward the reports to Sentry.
Also fixed a security issue on the error reporting server that was of no severity since the code was yet not used.
Now it is fixed and used. I built a secure unique ID to identify anonymously our users reports (just to make a near to true counter that says how many users are affected by a bug).
(it's not possible to get back the user IP without the secret that is on our server, and if you had access to the secret stealing it would require more time to get back to the original value, this would just not be worth it for an IP).

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 17

- [87526f2b5d - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/87526f2b5dda6f9cd4cd426397664bdcb861cbf9)
- [27a9986a1b - Revert fix for #16783 to Fix #16874 and Fix #16802 and fix back #16783](https://github.com/phpmyadmin/phpmyadmin/commit/27a9986a1b45346d58e5b11100d156523eb92311)

### Week 19

- [6c81fa2879 - Fix #16734 - SQL group by count results are not accurate](https://github.com/phpmyadmin/phpmyadmin/commit/6c81fa2879ae84abd342e6c7e688d2524e259244)
- [54e29b40a6 - Upgrade eslint and postcss](https://github.com/phpmyadmin/phpmyadmin/commit/54e29b40a61d2226edf40f90f08686d924b17dbb)
- [c9392720fc - Translated using Weblate (Arabic)](https://github.com/phpmyadmin/phpmyadmin/commit/c9392720fcf52461fda0e395587140546aa16dd8)
- [ad80b9e6e8 - Translated using Weblate (Arabic)](https://github.com/phpmyadmin/phpmyadmin/commit/ad80b9e6e8b4bdb8fbbb384a5864ac2bb0328829)
- [2380d0e23d - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/2380d0e23d1265726924b11b6230e75c34770551)
- [77b5e402c5 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/77b5e402c5d7a79111c808ddc1a7e3c22ee7c878)
- [d70f147254 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/d70f147254d805e1a55670daa258a43cdac300d3)
- [ef758ae43d - Merge #16855 - Replace secure.php.net with www.php.net and remove Polish and Persian](https://github.com/phpmyadmin/phpmyadmin/commit/ef758ae43df2749788e7e8f61f1743835a890238)
- [e98fe129d2 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/e98fe129d29d2669f6a696a656b299c68c6bcba9)
- [1a16aa0577 - Add ChangeLog entries for #16882 and #16895](https://github.com/phpmyadmin/phpmyadmin/commit/1a16aa0577bc9cc38febc9d13de857f37f64e760)
- [aa06d9e680 - Fix #16895 - Wrong table count on space separated numbers](https://github.com/phpmyadmin/phpmyadmin/commit/aa06d9e680d61512f030924fa9a0bbe893dda29a)
- [0b868458de - Merge #16894 - Fix #16882 - Table delete resets count to 0](https://github.com/phpmyadmin/phpmyadmin/commit/0b868458debca8a87f928fc85471056c86388a9b)

### Week 20

- [7852d1d8da - Remove 15 years old (and now useless) function exists check on file_get_contents](https://github.com/phpmyadmin/phpmyadmin/commit/7852d1d8da15604b61d314ca03abed4fb9a5c4f4)
- [07699ab907 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/07699ab9078dc12c1da704497682265924a0a39d)
- [b75c652c58 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/b75c652c581a1d3e2f3951128a067f53c91f7d5d)

### Week 21

- [bb91223faa - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/bb91223faa415041a52c86ac81477f86b623ec06)
- [3b45ec578d - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/3b45ec578d4172ebd0ff12785f3b10dc9c779f95)
- [3706c1fcd1 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/3706c1fcd1eab234dc3bd1007232c684be19704f)
- [b4d6282376 - Merge #16902 - Fix #16734 - SQL group by count results are not accurate](https://github.com/phpmyadmin/phpmyadmin/commit/b4d6282376d2f4a9ccd851daa333d9acd39c0b12)
- [80634d4fb4 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/80634d4fb4af3b019a1456c82a133fb1b62db04d)
- [8c0b38674a - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/8c0b38674a3d17705d75a82aa1b77244889f0195)
- [619de5cfc4 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/619de5cfc48c0ebd8083f01b3a7468e42655e384)
- [a2a8c1bc6c - Add l10n notes for new message and context for messages added for #14130](https://github.com/phpmyadmin/phpmyadmin/commit/a2a8c1bc6c789472fa657082e2bc11946300d1ab)
- [ce7929fcb9 - Update comments and fix a typo](https://github.com/phpmyadmin/phpmyadmin/commit/ce7929fcb93d096ded7976eed4f9da193ed1c5cc)
- [9e7b12020f - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/9e7b12020f52080c74de117a1bd8e86dcd741ab6)
- [f5f636ef3b - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/f5f636ef3ba71cd75f41f6a11aefec1570a8ac90)
- [e2528fe440 - Add ChangeLog entries for #14130, #16920 and #16926](https://github.com/phpmyadmin/phpmyadmin/commit/e2528fe44068ac92296ce9932376a6ef8b0b058f)
- [790c09084c - Add tests for #16920 - Uncaught TypeError: PhpMyAdmin\Import::detectType(): Argument #2 ($cell) must be of type ?string, float given](https://github.com/phpmyadmin/phpmyadmin/commit/790c09084c1a87bdfbe056942c7ad1b302ee7991)
- [a8e56bf3a9 - Fix #16926 - Warning in ./libraries/classes/Plugins/Import/ImportOds.php#377 Undefined array key "ods_empty_rows"](https://github.com/phpmyadmin/phpmyadmin/commit/a8e56bf3a90fa5906651f2fcb2e7aaef7fe8329d)
- [a0b36073fe - Fix #16920 - Uncaught TypeError: PhpMyAdmin\Import::detectType(): Argument #2 ($cell) must be of type ?string, float given](https://github.com/phpmyadmin/phpmyadmin/commit/a0b36073feb3a52eee0b2cb77e4d063a5fb84f03)
- [25999c6bd0 - Adjust editor config for test data folder](https://github.com/phpmyadmin/phpmyadmin/commit/25999c6bd01068122754cc12d8bb690cf3c456cf)
- [2be1b66888 - Add a ChangeLog entry for 8343c28e6c](https://github.com/phpmyadmin/phpmyadmin/commit/2be1b66888d141e8fddb4405f1fea18ac997875d)
- [8343c28e6c - Merge #16919 - Fix Uncaught TypeError: array_fill(): Argument #2 ($count) must be of type int, string](https://github.com/phpmyadmin/phpmyadmin/commit/8343c28e6ca68fd7c7732d1ab1a00220a6f86afb)
- [84e2a9a375 - Remove generated CI file install.sh from #16914](https://github.com/phpmyadmin/phpmyadmin/commit/84e2a9a375a3abcb7db0ff1ae84e51f9bd8178d5)
- [280a201f79 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/280a201f795d272347f868ff91b9bac2688cdb65)
- [79ae9ad468 - Update psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/79ae9ad4680f8acba7719b932e8c2f4953bd2f8f)
- [8c8689d7ad - Merge #16914 - Add multi arch tests support (amd64,arm64v8,arm32v7,arm32v6,i386,ppc64le,s390x)](https://github.com/phpmyadmin/phpmyadmin/commit/8c8689d7ad97dd61995332fb0d739c9e5d5a5501)
- [429ac4a0dd - Update psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/429ac4a0ddc16a7c60a4f1b56cb3fdbb434fdfea)
- [2f5a02f11c - Add a ChangeLog entry for #16911](https://github.com/phpmyadmin/phpmyadmin/commit/2f5a02f11ccb18720a70089367d397604021125d)
- [fae7630e16 - Add tests for #16911 - DBI::getClientInfo](https://github.com/phpmyadmin/phpmyadmin/commit/fae7630e16188b8b69d81b4337aefb59efefa39e)
- [c4aae17a7d - Fix #16911 - [PHP 8.1] Method mysqli::get_client_info() is deprecated](https://github.com/phpmyadmin/phpmyadmin/commit/c4aae17a7da29b799a35ad117d0a84836d60dc8a)
- [8529c019a5 - Bump php-webdriver/webdriver for PHP compat](https://github.com/phpmyadmin/phpmyadmin/commit/8529c019a5fe395ea04463c549c6931ab80e2dde)
- [bca8284a37 - Allow testGetThemeUniqueValue on 32-bit systems](https://github.com/phpmyadmin/phpmyadmin/commit/bca8284a3798a594c9cdb1926a48cdbdbffad6c2)
- [6699fb1923 - Fix 32-bit issues](https://github.com/phpmyadmin/phpmyadmin/commit/6699fb19238d637540a0ff9abf3a94a1ef2e0f97)
- [cd75e10a2a - Add multi arch tests support](https://github.com/phpmyadmin/phpmyadmin/commit/cd75e10a2af3b72598ab5380999ae43f66fff046)
- [68c113b559 - Merge #16913 - Skip testImportOsm and testDoImport on 32-bit/s390x arch](https://github.com/phpmyadmin/phpmyadmin/commit/68c113b5594fef3cbb90f91fe9fbbfb383b4ac25)
- [577e52a37f - Update Psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/577e52a37fc39d6de8672bdb23acd91f73a3141a)

### Week 22

- [7ad73a7d6c - Remove mocking from DatabaseInterfaceTest](https://github.com/phpmyadmin/phpmyadmin/commit/7ad73a7d6cf3dc787eed562a479fc1d2b0a113bc)
- [a29af90d95 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/a29af90d95df98467022ade0e3c752cc66759613)
- [6b169b9fdf - Make sure tests use the queries they added to the pile](https://github.com/phpmyadmin/phpmyadmin/commit/6b169b9fdff0854aca9ffaa130ffe1a4995d5179)
- [919ce3975f - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/919ce3975f1cf3e9fbdb11de2defd7c4f03f9d23)
- [d75345cc5c - Add a ChangeLog entry for #16931](https://github.com/phpmyadmin/phpmyadmin/commit/d75345cc5cfc0b9a6ce16b7ffa2e4901deb8f735)
- [10a10a98db - Refresh apt cache before install on selenium CI](https://github.com/phpmyadmin/phpmyadmin/commit/10a10a98dba558f04cfd19618e97422726dadb45)
- [febc302cdb - Improve tests for #16931](https://github.com/phpmyadmin/phpmyadmin/commit/febc302cdb22ee7803ff9db747167caf85639765)
- [815ee5c7f9 - Improve DB testing capabilities by replacing the actual system by a filo system](https://github.com/phpmyadmin/phpmyadmin/commit/815ee5c7f9d81191e69e072b6197d6a4026614dc)
- [f69ad50e27 - Add tests for #16931](https://github.com/phpmyadmin/phpmyadmin/commit/f69ad50e27ebeb65c944328dd5505ad853b8d0c6)
- [a2855079ab - Fix #16931 - Undefined index: utf8mb3 on MySQL 8.0.11+](https://github.com/phpmyadmin/phpmyadmin/commit/a2855079abccc05940286424d3017bf8ca9b3c7d)
- [66650a6336 - Add a ChangeLog entry for #16504](https://github.com/phpmyadmin/phpmyadmin/commit/66650a63368644293a92fbb250c4b18e9dabf2b1)
- [67a2f2a275 - Merge #16930 - Fix #16504 - Create view dialog is too big and won't scroll](https://github.com/phpmyadmin/phpmyadmin/commit/67a2f2a275e40dfeb1655e920b2b053c2ae36654)

## phpmyadmin/sql-parser (GitHub)

### Week 19

- [ff76ee6c09 - Add a CHANGELOG entry for #165, #331](https://github.com/phpmyadmin/sql-parser/commit/ff76ee6c09a2b0c2eb3dff468f643e344e2ccae2)
- [1b330caf9d - Merge #334 - Fix #165, Fix: #331 - Add WITH support](https://github.com/phpmyadmin/sql-parser/commit/1b330caf9d0f164193bc2230309d6de2bee9ff11)
- [8d8336d5cb - Upgrade phpstan to ^0.12.87](https://github.com/phpmyadmin/sql-parser/commit/8d8336d5cb9a0a0bfe97ba8ae7027ec81d11aeb6)
- [9e009d307e - Update phpstan and phpstan baseline](https://github.com/phpmyadmin/sql-parser/commit/9e009d307ebbdc67de856f886c42b5209831bdd9)

### Week 20

- [51ba37c199 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/51ba37c199c238a62de2e1075fd97afb8d19470c)
- [998338c49a - Add more test cases for #168](https://github.com/phpmyadmin/sql-parser/commit/998338c49a6d625cf1e2b18ab6ce8965102a49bb)
- [9f16b246ba - Use zumba/json-serializer for tests data output](https://github.com/phpmyadmin/sql-parser/commit/9f16b246ba0752b0cbf568e469cb2559cb3ace4a)
- [34d5dd83d1 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/34d5dd83d1f7014882b7de74255be213ad223611)
- [ded1fea049 - Add tests for #168](https://github.com/phpmyadmin/sql-parser/commit/ded1fea0494bafb2c1454264283d2e5222ce4da7)

## phpmyadmin/localized_docs (GitHub)

### Week 20

- [b27814d309 - Translated using Weblate (French)](https://github.com/phpmyadmin/localized_docs/commit/b27814d309741442c8d518db429d5a2f22be1ccd)

## phpmyadmin/error-reporting-server (GitHub)

### Week 21

- [3454b13871 - Better handle feedback request response and error logging and make report email comply with 75 chars limit](https://github.com/phpmyadmin/error-reporting-server/commit/3454b138719510d20e21477f6b5b20b656d2bd52)
- [9a0f5d4515 - Fix PHP warning on incident submit JS report](https://github.com/phpmyadmin/error-reporting-server/commit/9a0f5d4515b2f9740183faa41530d2403d48b51c)
- [ab54bee1c4 - Add unique user Id to feedback report email](https://github.com/phpmyadmin/error-reporting-server/commit/ab54bee1c467c95484f92a98a2701654d80a9121)
- [b13c481cb3 - Add a unique Id for each user based on hashed contents and a security salt](https://github.com/phpmyadmin/error-reporting-server/commit/b13c481cb35d5b70a1b434307b851126bfc53c4c)
- [2b14754c63 - Replace the security salt with a more example like value](https://github.com/phpmyadmin/error-reporting-server/commit/2b14754c63139a4ac6da7509c52be3c9a5e0282c)
- [c9be109151 - Better manage releases versions, added support for dist, transaction, environment](https://github.com/phpmyadmin/error-reporting-server/commit/c9be1091514fdde3094bf95cc24299801c965769)
- [40a49e63f5 - Allow some properties to be missing on PHP reports](https://github.com/phpmyadmin/error-reporting-server/commit/40a49e63f54d33df0440b4bca33c82c379019cfa)
- [920c75d5c5 - Add Sentry report forwarding](https://github.com/phpmyadmin/error-reporting-server/commit/920c75d5c567a90638c5f89f33c0e7470181e5ea)

### Week 22

- [fd58a912f1 - Add back a security salt on CI config to fix migrations](https://github.com/phpmyadmin/error-reporting-server/commit/fd58a912f166a5934ea99ab39f806ba1f28e6548)
- [22b4b8b872 - Implement version_major and version_series tags](https://github.com/phpmyadmin/error-reporting-server/commit/22b4b8b8724057e7a20af66f2f4a79f107c59782)

## phpmyadmin/twig-i18n-extension (GitHub)

### Week 21

- [39ee186035 - Add PHP 8.1 support for tests](https://github.com/phpmyadmin/twig-i18n-extension/commit/39ee18603598bf4299cb93c349b21bb6efdb1e63)

## phpmyadmin-team/phpmyadmin (GitLab)

### Week 21

- [bb4719119b - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/bb4719119b24be951c82aeb81f66ab3a5e5cb902)
- [524771f121 - Refresh 32-bit and PHP 8.0 patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/524771f121bc503f0980f38e646eddf7522a3d4e)
- [af8d8222d2 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/af8d8222d287e90be19186db5928cc846a6b069d)
- [ba0a99b3da - Add more metadata for 32bit patch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ba0a99b3dae5f2eb5de3e950254c37049dfee80d)

# Handled issues

## phpmyadmin/phpmyadmin (GitHub)

### Week 17

- [#16802 - Text truncation isn't working](https://github.com/phpmyadmin/phpmyadmin/issues/16802)
- [#16874 - responding short/open text fields not working, neither by icon nor by option field set](https://github.com/phpmyadmin/phpmyadmin/issues/16874)

### Week 18

- [#16890 - Version : Debian Bullseye-RC1 and 5.0.4deb2 - 2FA missing composer](https://github.com/phpmyadmin/phpmyadmin/issues/16890)
- [#16887 - Text (text, longtext,...) are exported as hex on JSON export](https://github.com/phpmyadmin/phpmyadmin/issues/16887)
- [#16886 - Row Export - missing "SQL" format option in select](https://github.com/phpmyadmin/phpmyadmin/issues/16886)
- [#16496 - 5.0.4 Failed to set session cookie. Maybe you are using HTTP instead of HTTPS.](https://github.com/phpmyadmin/phpmyadmin/issues/16496)

### Week 19

- [#16882 - Deleting a table resets the count to 0](https://github.com/phpmyadmin/phpmyadmin/issues/16882)
- [#16895 - Wrong table count on space separated numbers](https://github.com/phpmyadmin/phpmyadmin/issues/16895)
- [#16872 - mysqli_real_connect(): (HY000/2002): No such file or directory - phpmyadmin 4:4.9.5+dfsg1-2, Ubuntu 20.04, MySQL 8](https://github.com/phpmyadmin/phpmyadmin/issues/16872)
- [#16900 - Exporting queries does not include SQL as an option in the Format dropdown (AGAIN)](https://github.com/phpmyadmin/phpmyadmin/issues/16900)
- [#16778 - Error in processing request phpMyAdmin 5.1.0](https://github.com/phpmyadmin/phpmyadmin/issues/16778)
- [#16271 - FOREIGN_KEY_CHECKS overwrite at import by phpMyAdmin option](https://github.com/phpmyadmin/phpmyadmin/issues/16271)

### Week 20

- [#16912 - latest version link](https://github.com/phpmyadmin/phpmyadmin/issues/16912)

### Week 21

- [#16915 - [PHP 8] Login loop when using PHP > 7.4](https://github.com/phpmyadmin/phpmyadmin/issues/16915)
- [#16923 - open_basedir restrictions in Export page](https://github.com/phpmyadmin/phpmyadmin/issues/16923)
- [#16921 - PHP8: Type error on naviagtion on tree](https://github.com/phpmyadmin/phpmyadmin/issues/16921)
- [#14070 - unable to re-import corrected data (import from file)](https://github.com/phpmyadmin/phpmyadmin/issues/14070)
- [#16898 - Table filter sets wrong cookie, user gets logged out](https://github.com/phpmyadmin/phpmyadmin/issues/16898)
- [#16876 - js dist older empty from composer install](https://github.com/phpmyadmin/phpmyadmin/issues/16876)
- [#16244 - drop files feature to import .sql file doesn't works when I drop files from VSCode.](https://github.com/phpmyadmin/phpmyadmin/issues/16244)
- [#16926 - Warning in ./libraries/classes/Plugins/Import/ImportOds.php#377 Undefined array key "ods_empty_rows"](https://github.com/phpmyadmin/phpmyadmin/issues/16926)
- [#16888 - Cannot read property 'style' of null](https://github.com/phpmyadmin/phpmyadmin/issues/16888)
- [#16734 - Out of memory](https://github.com/phpmyadmin/phpmyadmin/issues/16734)
- [#16920 - [ODS Import] Uncaught TypeError: PhpMyAdmin\Import::detectType(): Argument #2 ($cell) must be of type ?string, float given](https://github.com/phpmyadmin/phpmyadmin/issues/16920)
- [#16911 - [PHP 8.1] Method mysqli::get_client_info() is deprecated](https://github.com/phpmyadmin/phpmyadmin/issues/16911)

### Week 22

- [#16931 - Undefined index: utf8mb3](https://github.com/phpmyadmin/phpmyadmin/issues/16931)
- [#16504 - Create view dialog is too big and won't scroll](https://github.com/phpmyadmin/phpmyadmin/issues/16504)

## phpmyadmin/docker (GitHub)

### Week 18

- [#330 - Error TemDir in 5.1 image](https://github.com/phpmyadmin/docker/issues/330)

### Week 20

- [#327 - fpm-alpine + haproxy](https://github.com/phpmyadmin/docker/issues/327)

## phpmyadmin/sql-parser (GitHub)

### Week 19

- [#331 - Add support for WITH clause (enhancement for syntax highlighter)](https://github.com/phpmyadmin/sql-parser/issues/331)
- [#165 - WITH keyword](https://github.com/phpmyadmin/sql-parser/issues/165)

