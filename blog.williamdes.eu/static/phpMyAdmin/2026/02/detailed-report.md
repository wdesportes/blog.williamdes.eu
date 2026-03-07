# Consulting Services for phpMyAdmin

## Report - February 2026

## Overview

In February I did some server work and merged + reviewed contributions.
I also did some issues triage. And I did a lot of work on the error-reporting server.

## First week (06)

I merged contributions after reviewing them. I also did some issues triage.

## Second week (07)

On the web VM I cleaned up old reports, upgraded the VM to Debian Trixie.
And did back our nginx and PHP configs on a repository. And cleaned up old PHP versions left over.
Upgrading the server meant that I had to upgrade the website to Django 4.2.

I also did sync the code coverage setup across all repositories and did set the token in GitHub actions secrets.

And upgrading the server meant that the error-reporting-server was broken, so I upgraded it to CakePHP 5.0.
The server is now running PHP 7.4.

The phpMyAdmin package on gentoo has more metadata, my pull-request is now merged.

## Third week (08)

I fixed the yarn setup on the web VM. And continued to work on the error reporting server as
there was a lot of broken and deprecated code to fix and migrate.
I merged contributions after reviewing them. I also did some issues triage.

## Fourth week (09)

I merged contributions after reviewing them. I also did some issues triage.
And worked on some fixes and improvements for the error reporting server.

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 06

- [f3d76f4066 - Merge #19956 - Fix #19749 - Descending index being converted to ascending](https://github.com/phpmyadmin/phpmyadmin/commit/f3d76f40665d8de2d9cda7a62d61e47548379473)
- [2e18466133 - Merge #20084 - Improve detectSize](https://github.com/phpmyadmin/phpmyadmin/commit/2e18466133505f1d90eb9e92afbd5cece34b333a)
- [891f406482 - Merge #20085 - Fix #20069 - Access CodeMirror through the window object](https://github.com/phpmyadmin/phpmyadmin/commit/891f4064822a89c73937fba275c32a0500debd76)
- [6b1431b6bf - Merge #20086 - Show stylesheets only if CodeMirror is enabled](https://github.com/phpmyadmin/phpmyadmin/commit/6b1431b6bfac06c26bc654273db8cef887aa7285)
- [e76adf1911 - Merge #20082 - [Toon Export] Fix null separator](https://github.com/phpmyadmin/phpmyadmin/commit/e76adf1911be353b525add2b58e24232084e4f6e)
- [5f2817071b - Merge #20081 - Fix buffer not closed and toon default indent](https://github.com/phpmyadmin/phpmyadmin/commit/5f2817071b1f5d7fecabdc9d5c1c9af09e84dfe8)
- [b89ee4e4fc - Merge #19991 - `toon` export](https://github.com/phpmyadmin/phpmyadmin/commit/b89ee4e4fc12e1573524e156d89b7613ad6648f0)
- [13b2971cd0 - Merge #20046 - Fix checking cookies for auto-saved query](https://github.com/phpmyadmin/phpmyadmin/commit/13b2971cd037e8cab6058402ec792029e117689b)
- [63ac9761fa - Merge #20020 - Fix #19987 - Reopening a function removes charset](https://github.com/phpmyadmin/phpmyadmin/commit/63ac9761faf7116eaa19b5cdd9049ae8ef7815e7)
- [f2572c4228 - Merge #20070 - Fix #20065 - event creation when server drops past event](https://github.com/phpmyadmin/phpmyadmin/commit/f2572c4228cd35ee6b82d96b6bc987b0b698c01e)
- [f26f370f4a - Merge #20073 - Fix display of timestamp after inline edit](https://github.com/phpmyadmin/phpmyadmin/commit/f26f370f4a651a0aade832fafba0801860c2751c)
- [7e0747f5b6 - Merge #20060 - Fix virtual column collation support for MariaDB](https://github.com/phpmyadmin/phpmyadmin/commit/7e0747f5b67cce81c03942019597cab954cbe52a)
- [05c981b9d6 - Merge #20061 - Set sql mode for sql-parser when connecting to db](https://github.com/phpmyadmin/phpmyadmin/commit/05c981b9d655d3ad3cf4d976a37821c90ade98fb)

### Week 07

- [5310c0df9c - Merge #20093 - Unset route - $getParams is never empty](https://github.com/phpmyadmin/phpmyadmin/commit/5310c0df9c0099e91ece0bc3867a93cee6704df6)
- [992718ff3c - Merge #20036 - Frontend: Allow mouse selection of cells for easier copying](https://github.com/phpmyadmin/phpmyadmin/commit/992718ff3cbca4fb2ac38cf5854c76999b18427b)
- [50a473c7a1 - fix Undefined array key "lang"](https://github.com/phpmyadmin/phpmyadmin/commit/50a473c7a1d82e782b93ad98804ff919bbaa4518)

### Week 08

- [3f658b8e15 - Merge #20091 - Fix #18773 - Make POST requests for encrypted queries](https://github.com/phpmyadmin/phpmyadmin/commit/3f658b8e15f1268161778efd55fce0344223b3cf)
- [757c804ea0 - Merge #20131 - Fix #18579 - Export geometry and binary fields in all export types](https://github.com/phpmyadmin/phpmyadmin/commit/757c804ea0f1425bdf95047669eab93a2b669e82)
- [c6ecfa5a8c - Merge #20132 - Xml import geometry](https://github.com/phpmyadmin/phpmyadmin/commit/c6ecfa5a8c55a72df363ac84fcbf9453937a5003)
- [bc057eb914 - Merge #20127 - Replace getRealSize with ini_parse_quantity](https://github.com/phpmyadmin/phpmyadmin/commit/bc057eb914cef5ec3380246e28b5163dba973081)
- [5993dae0e4 - Merge #20117 - Fix #20116 - Make sure fullscreen is enabled](https://github.com/phpmyadmin/phpmyadmin/commit/5993dae0e4ab3de180d29e95e7df332b7a9cd4ad)
- [ac1fbe1c17 - Merge #20080 - Fix # 20068 - Do not html encode triggers or events for ajax requests](https://github.com/phpmyadmin/phpmyadmin/commit/ac1fbe1c17c7a424c2aff59db2ba76712b42f134)
- [733bc6bf2f - Merge #19942 - Fix #17285 - Add DELIMITER $$ when exporting triggers](https://github.com/phpmyadmin/phpmyadmin/commit/733bc6bf2f8a3bb89e097ed5e8e3a52c02106a32)
- [0c8a6520cc - Merge #20109 - Fix #18927 - Allow resize of GIS visualization vertically](https://github.com/phpmyadmin/phpmyadmin/commit/0c8a6520cc0bb114349c664d46a6f5aad611123d)

### Week 09

- [8a9d2c14f2 - Merge #20176 - Fix #15116 - Undefined global variable $sql_insert_syntax](https://github.com/phpmyadmin/phpmyadmin/commit/8a9d2c14f2ffe5c3c7a7740c7bff92e6da14dce2)
- [da22ca88f4 - Update baselines](https://github.com/phpmyadmin/phpmyadmin/commit/da22ca88f4b6afdaf7f6144a6a08051bbe4669f1)
- [f40043aeaa - Merge #20196 - Fix #20195 - error when generating charts for columns with int column names](https://github.com/phpmyadmin/phpmyadmin/commit/f40043aeaa1b542fe56a1b9e9151b6f1390cf827)
- [f5ce85560a - Merge #20162 - Fix #20155 - Fix Call to a member function count() on null](https://github.com/phpmyadmin/phpmyadmin/commit/f5ce85560af21193573aeb940cbda56052746613)
- [02b1e70ef4 - Merge #20164 - Fix CodeMirror.runMode is not a function](https://github.com/phpmyadmin/phpmyadmin/commit/02b1e70ef4674a40d446bc46fe3e2740525dab42)
- [ade39e175e - Merge #20175 - Export geometry and binary fields for TOON](https://github.com/phpmyadmin/phpmyadmin/commit/ade39e175e8744a3431deb52a6a1248c2ca979e7)
- [304dc60a39 - Fix selenium login test](https://github.com/phpmyadmin/phpmyadmin/commit/304dc60a397e7fd6bcfc00a085a23cefbbe2c321)
- [ce05a69743 - Ignore some TypeScript "errors" about fullscreen properties](https://github.com/phpmyadmin/phpmyadmin/commit/ce05a69743c5e4979c50cf4fbcf9cd16b530bc25)
- [5391167eab - Merge #20166 - Fix #20152 - XML import when structure is present](https://github.com/phpmyadmin/phpmyadmin/commit/5391167eab8e53810e9c7847cd889df4ffa018d5)
- [18913e8efe - Merge #20172 - Fix Selenium tests](https://github.com/phpmyadmin/phpmyadmin/commit/18913e8efe11182dc15286f139f9a9ac355e86cd)
- [9d14719fc2 - Fix uses of static $createDatabase](https://github.com/phpmyadmin/phpmyadmin/commit/9d14719fc2d0570e8ca6c11ba803236baf9f05e2)
- [59c349958b - Generate a dynamic matrix of test names for Selenium tests](https://github.com/phpmyadmin/phpmyadmin/commit/59c349958bd9cd31eb42ad768d82c3690e2f1439)
- [5139170303 - Import test-selenium from the master branch](https://github.com/phpmyadmin/phpmyadmin/commit/5139170303d3c6309fc613e0b7eea4942773bcea)
- [8da964fa40 - Move login to setUp() of parent::](https://github.com/phpmyadmin/phpmyadmin/commit/8da964fa4046fe4932a1ef17718df5d7778999bb)
- [16d6380805 - Fix a coding standard warning](https://github.com/phpmyadmin/phpmyadmin/commit/16d63808053854e6d59b0e9805898b6232f4e325)
- [6f645fbac8 - Merge #20021 - Fix #19998 - stale grid edit state after AJAX table refresh](https://github.com/phpmyadmin/phpmyadmin/commit/6f645fbac81632d8dcb32fa267a364d701897f54)
- [e96c516f9a - Update the psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/e96c516f9a0f8727fd1f5383387dcbd307ceabb0)
- [f6c2088e81 - Merge #20119 - Fix #20116 - Check also for WebKit](https://github.com/phpmyadmin/phpmyadmin/commit/f6c2088e81b6eab57bbb556df69b63750d798df2)
- [2dad295106 - Merge #20092 - Add warning message if URLQueryEncryptionSecretKey is not valid](https://github.com/phpmyadmin/phpmyadmin/commit/2dad2951062d613c34638f32589b7b3fa7e2bbeb)
- [4c2b4b283e - Merge #20087 - Fix #19843 - Add Refresh button for EXPLAIN queries](https://github.com/phpmyadmin/phpmyadmin/commit/4c2b4b283e94df9b11f290c6a4befdaaa644a643)
- [c4a90acddc - Merge #20149 - Show sql-highlight div only if CodeMirror is enabled](https://github.com/phpmyadmin/phpmyadmin/commit/c4a90acddc5a896d367b1f202c43f9a791c457eb)
- [4bbcd9249b - Merge #20165 - Improve the way phpMyAdmin uses the user-agent](https://github.com/phpmyadmin/phpmyadmin/commit/4bbcd9249b3a476317e059eb1996c9edcdaeb02f)
- [ff2a983faa - Merge #20163 - Fix #20157 - Set user-agent to null if not defined](https://github.com/phpmyadmin/phpmyadmin/commit/ff2a983faae3aa87da552fd9d4a31b7e3133ce46)
- [be24e8832c - Merge #20168 - Fix XML test on QA_5_2](https://github.com/phpmyadmin/phpmyadmin/commit/be24e8832ce8d00487a608fbecfcc61d03e0d53f)

## phpmyadmin/website (GitHub)

### Week 06

- [eba86ffb69 - Merge #195 - Correct date in /about/](https://github.com/phpmyadmin/website/commit/eba86ffb69b34bdf14c2a5e8173917e58b4f899c)

### Week 07

- [aa9174c8d6 - Document Debian packages to run the website](https://github.com/phpmyadmin/website/commit/aa9174c8d6702a601d4b2565fc7acf10c0a3a633)
- [bf2e035af8 - Make libraries links real links](https://github.com/phpmyadmin/website/commit/bf2e035af89778a61097b213d0fa4c12b8ab00ae)
- [01214a3d47 - Make Python 3.14 experimental in the CI](https://github.com/phpmyadmin/website/commit/01214a3d475963356f7920c69cb328c9e8c49f52)
- [480ab87396 - Fetch more commits for Scrutinizer to work](https://github.com/phpmyadmin/website/commit/480ab87396915d78a340b358b471756a3ace5aa7)
- [2c082513cc - Try to send coverage.xml to Scrutinizer](https://github.com/phpmyadmin/website/commit/2c082513cc5c1bdd1c6ee0f1bbde95d690f4a20c)
- [a4bd87c34d - Upgrade to Django 4.2 - Add pmasa year alter field](https://github.com/phpmyadmin/website/commit/a4bd87c34dccf4aca2185ff47ab6e1c33677ccc3)
- [b04b95c0fc - Bump codecov/codecov-action to v5 and Send coverage to Scrutinizer](https://github.com/phpmyadmin/website/commit/b04b95c0fc0da003afe4cf30b7049d3615705484)
- [4bb82e59fd - Fix tests "TypeError: cache_control didn't receive an HttpRequest"](https://github.com/phpmyadmin/website/commit/4bb82e59fd84d0e753b9fadf6da38dc192f58391)
- [ba090b589d - Implement 503 reply if the GitHub token says 401](https://github.com/phpmyadmin/website/commit/ba090b589d79838f17424e53a4a516f70a919704)
- [1854930df6 - Require mysqlclient as many installations use MySQL anyway](https://github.com/phpmyadmin/website/commit/1854930df6837a7c39ee46ce241c84c3b4c08842)
- [7bc2b1a0a6 - Upgrade to Django 4.2](https://github.com/phpmyadmin/website/commit/7bc2b1a0a6ca8974564d701a50cbaba6b0c279e9)
- [67b2b8401c - Bump GitHub actions](https://github.com/phpmyadmin/website/commit/67b2b8401c63c6ecd528e271de96dad1e38edb9e)
- [36b4e03528 - Only test Debian Trixie and Debian Forky Python versions](https://github.com/phpmyadmin/website/commit/36b4e03528bdffe21f07b95facee820f3137ff51)

## phpmyadmin/shapefile (GitHub)

### Week 07

- [baf8471ff3 - Fix report-type to report_type for Codecov](https://github.com/phpmyadmin/shapefile/commit/baf8471ff3010cf58c1f3a7b5d7633e8df4d2a58)
- [41b3d58e90 - Send junit test logs to Codecov](https://github.com/phpmyadmin/shapefile/commit/41b3d58e90b74596d6206d7945845bb545d58205)
- [6f9d58777c - Upgrade codecov/codecov-action to v5 and fix uploading reports](https://github.com/phpmyadmin/shapefile/commit/6f9d58777cbc67bb9f02e9d0c739a03cc95f47d7)
- [00ed17916f - Support phpunit 13](https://github.com/phpmyadmin/shapefile/commit/00ed17916f333a0db46344105336d0cf7b466104)
- [754d6290a8 - Bump GitHub actions](https://github.com/phpmyadmin/shapefile/commit/754d6290a8b569ec2fddd8a68144fad80cf4593b)
- [27e4df2122 - Add PHP 8.5 to normal CI workflow](https://github.com/phpmyadmin/shapefile/commit/27e4df21221994626a5bb513549df2d95f5629a5)
- [8ec767d7ef - Add permissions to GitHub workflows](https://github.com/phpmyadmin/shapefile/commit/8ec767d7efd6afad2b166505474fa2e8e8e25006)
- [ed45933a55 - Drop old stalebot config](https://github.com/phpmyadmin/shapefile/commit/ed45933a551e8f863e3b4f154c3205b5f532786a)
- [dd4f743ea4 - Drop support for phpunit 10, support 11 and 12](https://github.com/phpmyadmin/shapefile/commit/dd4f743ea48c2216bbf83609d54e9e61a0a99d37)

## phpmyadmin/localized_docs (GitHub)

### Week 09

- [0684a09817 - Run apt update before apt install](https://github.com/phpmyadmin/localized_docs/commit/0684a09817772f97f99b8aeb892091ebd5be0ee2)

## phpmyadmin/error-reporting-server (GitHub)

### Week 07

- [0ce6b894df - Document Caddy configuration](https://github.com/phpmyadmin/error-reporting-server/commit/0ce6b894df85322b228e34fa123d6d229dcef9d7)
- [0607506998 - Enable migrations and migrate them](https://github.com/phpmyadmin/error-reporting-server/commit/0607506998e299d037f4ce154d7c9a99f45bdc60)
- [1ab3bbc1bb - Update the PHP version on the README + fpm](https://github.com/phpmyadmin/error-reporting-server/commit/1ab3bbc1bba813f30d1278e708cf92a4ecefdf95)
- [0e06aea006 - Sync files with the example cake app](https://github.com/phpmyadmin/error-reporting-server/commit/0e06aea0062db3f72ffc43abb78ccdd49f6c02ad)
- [d7f76d6417 - Fix cake commands should have a name native type hint](https://github.com/phpmyadmin/error-reporting-server/commit/d7f76d64171e9b0c3b3424bc5346fcc73904e5ad)
- [4353c8a0ae - Update the phpstan level to 7 vs max and update the baseline](https://github.com/phpmyadmin/error-reporting-server/commit/4353c8a0ae8d887b184b209e4bd1ada623c04dea)
- [143380c0c7 - Make DebugKit optional](https://github.com/phpmyadmin/error-reporting-server/commit/143380c0c7ca4a866d400bce452c83ccf69aa449)
- [70ca00307e - Fix loadModel was removed and fix redirect should be used with a return](https://github.com/phpmyadmin/error-reporting-server/commit/70ca00307ef63b7ac5d55765cbb23b243fa80e0f)
- [bbc61c6132 - Upgrade to Cake 5.0](https://github.com/phpmyadmin/error-reporting-server/commit/bbc61c61320c4f850d0504928fa42af4e640b7b2)
- [2ee2bdfabb - Require PHP 8.4](https://github.com/phpmyadmin/error-reporting-server/commit/2ee2bdfabbc9055642872aafe48c4c06159e0f89)
- [439f711edb - Upgrade to Cake 4.6](https://github.com/phpmyadmin/error-reporting-server/commit/439f711edb4578e10e576ab73e82747abdbcbc8c)
- [3c7b17c09d - Run Scrutinizer on PHP 7.4](https://github.com/phpmyadmin/error-reporting-server/commit/3c7b17c09d5c527c83c2c65841229795aea37e49)
- [c38fb65096 - Bump GitHub actions and restrict to PHP 8.4](https://github.com/phpmyadmin/error-reporting-server/commit/c38fb65096b36de195c2b760da80d16ee26c6440)

### Week 08

- [da161f1311 - Add the CSRF token to <form fields](https://github.com/phpmyadmin/error-reporting-server/commit/da161f131116254573a26d9ace60dd8c94c18223)
- [169d527b09 - Fix phpstan detected errors](https://github.com/phpmyadmin/error-reporting-server/commit/169d527b094168fe11924fbed6a9283182d2ea21)
- [51c6b6880d - Use the token from the user to access org membership](https://github.com/phpmyadmin/error-reporting-server/commit/51c6b6880d049d98d805b16ced7c146eecc59a58)
- [194474e30b - Improve logging of 401 errors](https://github.com/phpmyadmin/error-reporting-server/commit/194474e30b87c7479b367d3d2c022105438ced7a)
- [db68d50b70 - Trim the error_message if it is too long](https://github.com/phpmyadmin/error-reporting-server/commit/db68d50b70829ff0b6828f27e918768cef8b71c5)
- [57392c91fe - Expose current_developer to templates](https://github.com/phpmyadmin/error-reporting-server/commit/57392c91fee17846eeaee6a1566af5c5c9da70e7)
- [e452f05a13 - Improve and fix the logic of the auth middleware](https://github.com/phpmyadmin/error-reporting-server/commit/e452f05a133e17f31125c44bb84bc37fe5994417)
- [7f3407fbf8 - Remove notifications from allow read only](https://github.com/phpmyadmin/error-reporting-server/commit/7f3407fbf8afa180decc4c7cccf70b9bccb150ff)
- [84a404d605 - Fix tests about read_only in the session](https://github.com/phpmyadmin/error-reporting-server/commit/84a404d60588b59a30c45e06e9671874aba5fa8e)
- [df83038b52 - Destroy the session when the user calls login](https://github.com/phpmyadmin/error-reporting-server/commit/df83038b52308e9bcebda0017eec82a7c70ef3a1)
- [69d449401f - Assert empty responses for dev * routes](https://github.com/phpmyadmin/error-reporting-server/commit/69d449401f89c61bdcf49df339dd0d75ee68557a)
- [bbb2973f5a - Improve auth middleware logic](https://github.com/phpmyadmin/error-reporting-server/commit/bbb2973f5a2f327ca748bd9da1dbc9bf8af50b7f)
- [064d35e639 - Developers login should return a Response](https://github.com/phpmyadmin/error-reporting-server/commit/064d35e639e743a4234dbc0f967a7227a9f47cc9)
- [a5d01e67ad - Add missing assert response code to tests](https://github.com/phpmyadmin/error-reporting-server/commit/a5d01e67ad500acde08ec295fff804a32b402707)
- [3326c006dc - Remove recursive flag as it does not exist anymore](https://github.com/phpmyadmin/error-reporting-server/commit/3326c006dc1ba4bfb342cfab3ac7ffd06f927bdd)
- [80d8dce6cd - Fixup the logic of the auth checking](https://github.com/phpmyadmin/error-reporting-server/commit/80d8dce6cda97a43fb93a318d7e17c61997f16bf)
- [4e95847001 - Fix another deprecated findAll](https://github.com/phpmyadmin/error-reporting-server/commit/4e958470010fa4faba7d0be3c62339f6648bd7aa)
- [05c4f889f8 - Fix missing property on events](https://github.com/phpmyadmin/error-reporting-server/commit/05c4f889f8b3f01ffe09dc5c41e03dc5a6212668)
- [da4da080a2 - Fix developers controller test missing assertions or read_only](https://github.com/phpmyadmin/error-reporting-server/commit/da4da080a2ff01f628d3a2da5661a1abc4f3f73a)
- [870c5cbdb2 - Add missing read_only to incidents controller test and fix asserting response code](https://github.com/phpmyadmin/error-reporting-server/commit/870c5cbdb2642235aeb396def3fe3cd8a6ef1e8e)
- [e717f3f058 - Disable CSRF check on the GitHub events route](https://github.com/phpmyadmin/error-reporting-server/commit/e717f3f0586207b95c78138f69725afdbaf34b5a)
- [2d315efcb8 - Add missing read_only to the session for reports controller test](https://github.com/phpmyadmin/error-reporting-server/commit/2d315efcb887c7d469b51a5011a658842fe9ae4e)
- [9a2018606c - Block access to notifications according to the test](https://github.com/phpmyadmin/error-reporting-server/commit/9a2018606c0cc91ff67dbd3088556ff4313c8acf)
- [f0c1e7399f - Fix notifications controller test](https://github.com/phpmyadmin/error-reporting-server/commit/f0c1e7399fe2f74f0af8743e1a9d85b723dc0df8)
- [3e430bb854 - Fix reports controller test](https://github.com/phpmyadmin/error-reporting-server/commit/3e430bb8540af5fe97cbfe51b300c3326488b003)
- [d95f8c5717 - Fix more deprecated fetchAll in ReportsController](https://github.com/phpmyadmin/error-reporting-server/commit/d95f8c5717e1c99dc84bdbaa76a4c96c5f5799c3)
- [6ab01398b7 - Un mock sync github tests for curl calls, now use the client](https://github.com/phpmyadmin/error-reporting-server/commit/6ab01398b7b28bd1bf09169a0c43631e622c1d20)
- [284051e425 - Un mock developer tests for curl calls, now use the client](https://github.com/phpmyadmin/error-reporting-server/commit/284051e425561888dc99d70a00af6b99a34573b0)
- [9ec1425ae8 - Fix two more deprecated fetchAll](https://github.com/phpmyadmin/error-reporting-server/commit/9ec1425ae8da83fc26a0c6d4837f11292f5ab9d0)
- [bd81a04434 - Do not try to install the local example if we do not have one](https://github.com/phpmyadmin/error-reporting-server/commit/bd81a0443403bf9f22cc83299c299deee7d8c7b3)
- [5fbb8c5ec9 - Replace cURL with the Cake Http client and fix tests with Cake Client response mocks](https://github.com/phpmyadmin/error-reporting-server/commit/5fbb8c5ec994f81f3a2a0fca44fc9b24511bb177)
- [af500854e8 - Fix current_developer is not set in tests](https://github.com/phpmyadmin/error-reporting-server/commit/af500854e844383932a520a32a78d6783cf8af2c)
- [6a7d3bd285 - Add back query select alias](https://github.com/phpmyadmin/error-reporting-server/commit/6a7d3bd2856811662a368cb1fe61c5e8ae564756)
- [d194fdcc5e - Migrate commands to the new format](https://github.com/phpmyadmin/error-reporting-server/commit/d194fdcc5ebf9aa4e58f86dc28584bf9972ecdf7)
- [8c29f72c55 - Sync Installer with the example cake app](https://github.com/phpmyadmin/error-reporting-server/commit/8c29f72c5513e73ba6180142ef73fca70183179b)
- [61dc7e748a - tests: migrate to getFixtures and use class names + fix missing parent::setUp()](https://github.com/phpmyadmin/error-reporting-server/commit/61dc7e748a07255a5701be55cd94b6e0fe6b088b)
- [351532337a - Move the security check code into a middleware](https://github.com/phpmyadmin/error-reporting-server/commit/351532337a06b90fe9d031377778022e924e3365)
- [1fa421c6e5 - Ignore app_local.php](https://github.com/phpmyadmin/error-reporting-server/commit/1fa421c6e5ac358548befd39b035f78dd8b9bd86)
- [3dca79d9ce - tests: improve incidents test](https://github.com/phpmyadmin/error-reporting-server/commit/3dca79d9ce32233e5c3a082a0ec12543abcc2079)
- [af26d5c2eb - Improve Incidents creation](https://github.com/phpmyadmin/error-reporting-server/commit/af26d5c2eb1d3027f46c15ed98a1300841b0218f)
- [e8cb0bf357 - Improve uses of cURL](https://github.com/phpmyadmin/error-reporting-server/commit/e8cb0bf357726eafcb8cba736ab5e3bbd5a52769)
- [64ef84584c - Fix $current_developer can be null](https://github.com/phpmyadmin/error-reporting-server/commit/64ef84584c55a1a40acb8296b3abcb00060b0327)
- [b25acd961b - Update the coding standard by using the one of phpMyAdmin 6.x as a template](https://github.com/phpmyadmin/error-reporting-server/commit/b25acd961b0cd0fddb5b30c6d2ee5986bb0914e0)
- [d494086505 - Make phpcs file paths relative in reports](https://github.com/phpmyadmin/error-reporting-server/commit/d49408650547194c94a7204dfe88c1d71b5e44f6)
- [92e28bd24c - Drop not used response to creating an incident](https://github.com/phpmyadmin/error-reporting-server/commit/92e28bd24c7eb4c11137eba5f3b725921fb108dc)
- [bdf825796f - Disable CSRF on the /incidents/create route](https://github.com/phpmyadmin/error-reporting-server/commit/bdf825796f169bbe0ca0d33a53964935a6a080a6)
- [dad500109e - Fix fetchAll deprecations](https://github.com/phpmyadmin/error-reporting-server/commit/dad500109e7b8bd718bbd485862f5feb95186ecf)
- [4f1fdd3700 - Add back constant BASE_DIR](https://github.com/phpmyadmin/error-reporting-server/commit/4f1fdd37000c7efeaf25996e55184d24bd03bd2f)
- [74c8ae0a48 - Fix related_reports do not pass a builder, pass results](https://github.com/phpmyadmin/error-reporting-server/commit/74c8ae0a48f5074b4beb8c751c775354d8daf501)
- [3d4bba5ade - Update the phpstan baseline](https://github.com/phpmyadmin/error-reporting-server/commit/3d4bba5adec18440d988da0da9761968280a55fd)
- [f52f639575 - Fix missing $id on ReportsTable and fix findAll](https://github.com/phpmyadmin/error-reporting-server/commit/f52f6395754109c0a180a40caaef6f60289586a9)
- [ba1ebda36e - Fix more deprecations in tests, use attributes for phpunit. Enable one commented test](https://github.com/phpmyadmin/error-reporting-server/commit/ba1ebda36ef9007f75f3ccb253ef7462f455abfa)
- [46ff8a9bb5 - Fix deprecations findAll wants named params](https://github.com/phpmyadmin/error-reporting-server/commit/46ff8a9bb5bcd54aaa624730352a3b938e6dac8b)
- [e5fe320be5 - Fix SQL syntax order needs to be a single string](https://github.com/phpmyadmin/error-reporting-server/commit/e5fe320be5a024d2c2649b3d13794f31d2955d27)
- [63635ede41 - Fix "Cache config `_cake_core_` is deprecated. Use `_cake_translations_` instead"](https://github.com/phpmyadmin/error-reporting-server/commit/63635ede410382d25f1a55829a3b36c9ca1a81f5)
- [b7aa982d23 - Improve the GitHub API class, always print the HTTP code](https://github.com/phpmyadmin/error-reporting-server/commit/b7aa982d233c4d14a18eaf3b42094f05d0c8d168)
- [10d57dc6bb - Fix bugs and missing RequestHandler class](https://github.com/phpmyadmin/error-reporting-server/commit/10d57dc6bba560b4fc04c755d8856ac030dc4cd0)
- [a04c6054fc - Remove deprecated curl_close](https://github.com/phpmyadmin/error-reporting-server/commit/a04c6054fc8f96ef19771387adc66c7a1d050997)
- [9ac5fcc548 - Fix deprecations for tests and sync bootstrap with the example app](https://github.com/phpmyadmin/error-reporting-server/commit/9ac5fcc548994f88fa3c65a4642008920b3c4a6a)
- [65c3978c76 - Fix deprecated concats](https://github.com/phpmyadmin/error-reporting-server/commit/65c3978c76247499d1a4058ee0db041c40315a86)
- [8e85cd6ead - Make normal files non executable](https://github.com/phpmyadmin/error-reporting-server/commit/8e85cd6ead08ce20edf150d74ba5acf61a3b8499)
- [ad2a4ad308 - Fix file mods of bin/ to 775](https://github.com/phpmyadmin/error-reporting-server/commit/ad2a4ad3085df6e49843dc28ca10b9ae0f32a732)
- [f5eba4787f - Update the phpstan baseline](https://github.com/phpmyadmin/error-reporting-server/commit/f5eba4787fa7207c70291e738529f9b9e80b56ce)
- [159dc3871d - Apply coding standard fixes](https://github.com/phpmyadmin/error-reporting-server/commit/159dc3871dc585b45be95ef008c2e08365f6997e)
- [56447c9a1e - Fix loading forwarding and oauth configs](https://github.com/phpmyadmin/error-reporting-server/commit/56447c9a1e7e02f8d520a9892c11557071cdb04f)

### Week 09

- [c51d103430 - Disable forwarding in the example](https://github.com/phpmyadmin/error-reporting-server/commit/c51d103430efbfc2507abe5346a9af157888556e)
- [2164997525 - Baseline phpstan detected errors](https://github.com/phpmyadmin/error-reporting-server/commit/2164997525699ebd6c7bfe6fc77a6b52db66188d)
- [43f8ddc104 - Add a test case for a null user agent](https://github.com/phpmyadmin/error-reporting-server/commit/43f8ddc104f1d2e1592da6d3a9b5afbaf303b351)
- [b2c531cfd8 - Do not try to do the salt if the app_local.php file does not exist](https://github.com/phpmyadmin/error-reporting-server/commit/b2c531cfd8a272302bec257800b947f7a3fc3412)
- [f9796eb128 - Fix the logic behind copying the example](https://github.com/phpmyadmin/error-reporting-server/commit/f9796eb1280802c65a800b6ab9d8ea2835d21e69)

## gentoo/gentoo (GitHub)

### Week 07

- [6d26920da7 - dev-db/phpmyadmin: update the description](https://github.com/gentoo/gentoo/commit/6d26920da74dbfa9c83c5bd98f3b90f54b718008)
- [295d205398 - dev-db/phpmyadmin: add more upstream attributes](https://github.com/gentoo/gentoo/commit/295d205398d1ff6a0651f23aee67e922c9efb167)

## phpmyadmin-team/mariadb-mysql-kbs (GitLab)

### Week 06

- [dd0cecb2ba - Send 1.3.0-3 to unstable](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/dd0cecb2ba2cbb0ff4ad5b200561298932fa2f2f)

# Handled issues

## phpmyadmin/phpmyadmin (GitHub)

### Week 06

- [20050 - [Bug]: Cannot access user management when connection and server collation differs](https://github.com/phpmyadmin/phpmyadmin/issues/20050)
- [20074 - [Bug]: "%s" in the dialog when delete user](https://github.com/phpmyadmin/phpmyadmin/issues/20074)
- [20078 - [Feat]: rename setup.html to install.html](https://github.com/phpmyadmin/phpmyadmin/issues/20078)
- [19876 - ` 2054: The server requested authentication method unknown to the client [auth_gssapi_client]`](https://github.com/phpmyadmin/phpmyadmin/issues/19876)
- [18156 - Columns are disappearing when reordering them](https://github.com/phpmyadmin/phpmyadmin/issues/18156)
- [19924 - phpMyAdmin's Demo Website is out of space](https://github.com/phpmyadmin/phpmyadmin/issues/19924)
- [20069 - [6.0]: Uncaught ReferenceError: CodeMirror is not defined](https://github.com/phpmyadmin/phpmyadmin/issues/20069)
- [19600 - columns display dropdown not showing](https://github.com/phpmyadmin/phpmyadmin/issues/19600)
- [19366 - 2FA Setup Across Multiple phpMyAdmin Endpoints](https://github.com/phpmyadmin/phpmyadmin/issues/19366)
- [19610 - Support Descending Indexes](https://github.com/phpmyadmin/phpmyadmin/issues/19610)

### Week 07

- [20065 - [Bug]: ErrorException: Undefined array key 0 when an event is created in the past](https://github.com/phpmyadmin/phpmyadmin/issues/20065)
- [19749 - [Bug]: Descending index is converted to ascending if edited](https://github.com/phpmyadmin/phpmyadmin/issues/19749)
- [17362 - Change collation for VIRTUAL column](https://github.com/phpmyadmin/phpmyadmin/issues/17362)
- [19987 - [Bug]: Reopening a function removes charset](https://github.com/phpmyadmin/phpmyadmin/issues/19987)
- [20072 - [Bug]: Inline-editing timestamp value is removing value in ui after](https://github.com/phpmyadmin/phpmyadmin/issues/20072)
- [18853 - PMA Non-Responsive to User Input - Cleared with a Page Reload](https://github.com/phpmyadmin/phpmyadmin/issues/18853)

### Week 08

- [20114 - [Bug]: Wrong collation setting disables user management](https://github.com/phpmyadmin/phpmyadmin/issues/20114)
- [18170 - Uncaught TypeError: window.makeGrid is not a function](https://github.com/phpmyadmin/phpmyadmin/issues/18170)
- [19661 - [Bug]: Clicking the Export tab results in error on Windows Server 2019 and IIS 10.0](https://github.com/phpmyadmin/phpmyadmin/issues/19661)
- [18927 - Allow resizing vertically for GIS Visualization](https://github.com/phpmyadmin/phpmyadmin/issues/18927)
- [20068 - [6.0]: Exported event contains html entities](https://github.com/phpmyadmin/phpmyadmin/issues/20068)
- [20118 - [Bug]: ErrorException: Undefined global variable $sql_insert_syntax](https://github.com/phpmyadmin/phpmyadmin/issues/20118)
- [17285 - Exported Triggers not usable for import again ](https://github.com/phpmyadmin/phpmyadmin/issues/17285)
- [20116 - [Bug]: TypeError: Fullscreen request denied](https://github.com/phpmyadmin/phpmyadmin/issues/20116)
- [19865 - [Bug]: X-ob_mode header should use hyphens](https://github.com/phpmyadmin/phpmyadmin/issues/19865)
- [19644 - Uncaught TypeError: can't access property "success", data is undefined](https://github.com/phpmyadmin/phpmyadmin/issues/19644)
- [20133 - [Bug]: ErrorException: Undefined array key 0](https://github.com/phpmyadmin/phpmyadmin/issues/20133)

### Week 09

- [18579 - Blob columns aren't exported in PDF](https://github.com/phpmyadmin/phpmyadmin/issues/18579)
- [19998 - [Bug]: Last bad query is remembered and tries to execute it again](https://github.com/phpmyadmin/phpmyadmin/issues/19998)
- [20152 - [6.0]: XML import fails when table has data](https://github.com/phpmyadmin/phpmyadmin/issues/20152)
- [20155 - [Bug]: Error: Call to a member function count() on null](https://github.com/phpmyadmin/phpmyadmin/issues/20155)
- [20157 - [Bug]: ErrorException: Undefined array key "HTTP_USER_AGENT"](https://github.com/phpmyadmin/phpmyadmin/issues/20157)
- [18928 - Search function - when no datasets are found no sql-statement is provided](https://github.com/phpmyadmin/phpmyadmin/issues/18928)

## phpmyadmin/error-reporting-server (GitHub)

### Week 08

- [190 - Cannot log in to https://reports.phpmyadmin.net/incidents](https://github.com/phpmyadmin/error-reporting-server/issues/190)
