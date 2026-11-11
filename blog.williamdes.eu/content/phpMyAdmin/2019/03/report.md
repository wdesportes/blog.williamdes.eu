+++
title = "Report for March 2019"
date = 2019-03-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for March 2019.

<!-- more -->

In March 2019 I worked on the main repository and sql-parser, closing a long list of bugs, one ChangeLog entry at a time, and merging every fix back into the 4.8 branch.

## First week (9)

I fixed a series of tracker issues: the date and time inside exported ZIP files ([#14870](https://github.com/phpmyadmin/phpmyadmin/issues/14870)), the Null checkbox that unmarked itself ([#14425](https://github.com/phpmyadmin/phpmyadmin/issues/14425)), the blocked bottom table ([#14898](https://github.com/phpmyadmin/phpmyadmin/issues/14898)), the missing query time in German caused by the decimal number format ([#13975](https://github.com/phpmyadmin/phpmyadmin/issues/13975)), the charset used for MS Excel exports, now windows-1252 ([#14837](https://github.com/phpmyadmin/phpmyadmin/issues/14837)), and a JSON encode error ([#14922](https://github.com/phpmyadmin/phpmyadmin/issues/14922)). I also fixed the refresh icon on expanded databases ([#14896](https://github.com/phpmyadmin/phpmyadmin/issues/14896)), removed a stray space in the X-Forwarded-For header, and cleaned up the code style.

- [0d435e6e3f - Fix lint error and missed merge](https://github.com/phpmyadmin/phpmyadmin/commit/0d435e6e3f13cfb0e385773689af6627346a8cdf)
- [1ee4074de8 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/1ee4074de8af1f435862950dbb0423ba435170e7)
- [07aa67f584 - Add ChangeLog entry for #14870](https://github.com/phpmyadmin/phpmyadmin/commit/07aa67f584876b0ca84f8aff95a9de566ee6c7ac)
- [ccbc25dca9 - Fix: #14870 - Now Zip files display correct date and time](https://github.com/phpmyadmin/phpmyadmin/commit/ccbc25dca9a85cb9aed2eecf75b02cd8ae945ae7)
- [f0374250d3 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/f0374250d3c8b238adecc9f6872df0fff33e2d15)
- [0c27a0361b - Add ChangeLog entry for #14425](https://github.com/phpmyadmin/phpmyadmin/commit/0c27a0361bdaa0e6caa780df6525d25ab6261148)
- [2cf2959098 - Fix: #14425 - Null Checkbox automatically unmarked](https://github.com/phpmyadmin/phpmyadmin/commit/2cf2959098042322a7558affce67a80fa2583c78)
- [c112ba4da8 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/c112ba4da8c5235f67fbf35cf8fca74f9a56f9a0)
- [05b4f55f48 - Add ChangeLog entry for #14898](https://github.com/phpmyadmin/phpmyadmin/commit/05b4f55f48e389f3fecbcf1d35ea6c0e05671cd0)
- [cfbbe07433 - Fix: #14898 - Bottom table is blocked](https://github.com/phpmyadmin/phpmyadmin/commit/cfbbe07433ab14d93878872c99909225793bf58f)
- [d7474ed40a - Add ChangeLog entry for #14503](https://github.com/phpmyadmin/phpmyadmin/commit/d7474ed40a25ee315aa2c081c476b35b97f6814b)
- [6845dc41e9 - Avoid duplicate test](https://github.com/phpmyadmin/phpmyadmin/commit/6845dc41e99430183fb03c87be82db46e1d679b3)
- [f3d034c45a - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/f3d034c45a75ef14f4857722ef66c4d9de93d8c8)
- [6d35051c34 - Add ChangeLog entry for #13975](https://github.com/phpmyadmin/phpmyadmin/commit/6d35051c3447f6de848b1d78d24e69c9c13e9332)
- [60f3f97ede - Fix: #13975 - Missing query time in German (fix decimal number format )](https://github.com/phpmyadmin/phpmyadmin/commit/60f3f97edee555686704aae4a3682cbf01f2f8c3)
- [648e4a861d - Fix code style error](https://github.com/phpmyadmin/phpmyadmin/commit/648e4a861dc5b4d726ec191a8829a9f84e8b8665)
- [9a12b31759 - Add ChangeLog entry for #14837](https://github.com/phpmyadmin/phpmyadmin/commit/9a12b3175981cc1023ea9161446753dd7bfe25c2)
- [d93bda0785 - Fix: #14837 - Use charset 'windows-1252' when format is MS Excel](https://github.com/phpmyadmin/phpmyadmin/commit/d93bda07858499d627999c82d1f2b60eef0532a6)
- [42e1a333a3 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/42e1a333a39fa7bcbcae519ef8910e2291b556f8)
- [f3589afcfb - Add ChangeLog entry for #14922](https://github.com/phpmyadmin/phpmyadmin/commit/f3589afcfb1edf4d833cd8f096a2833f86e5888b)
- [e339fe3ec7 - Fix: #14922 - Json encode error](https://github.com/phpmyadmin/phpmyadmin/commit/e339fe3ec7aa99a3ff348904ee28697dd82f50a9)
- [56ad90a714 - Add ChangeLog entry for #14896](https://github.com/phpmyadmin/phpmyadmin/commit/56ad90a714aeaade10330118bdff3fe690afd9b3)
- [6054f9eb4d - Fix: #14896 - Expanded DB, refresh, plus/minus icon](https://github.com/phpmyadmin/phpmyadmin/commit/6054f9eb4d598a42b770c1706d867f155ffa9c6e)
- [8162313188 - Add ChangeLog entry for #14402](https://github.com/phpmyadmin/phpmyadmin/commit/8162313188bbe15755ae372951b18ac30e04bd10)
- [f74c0dae9a - Remove space in header X-Forwarded-For](https://github.com/phpmyadmin/phpmyadmin/commit/f74c0dae9a6045d74a3039a2186aa06adf0dc370)
- [4b855c9a47 - Fix code style](https://github.com/phpmyadmin/phpmyadmin/commit/4b855c9a47e99bc1a070ff9183626da5a15b913c)
- [382da03785 - Fix trailing spaces and code style](https://github.com/phpmyadmin/phpmyadmin/commit/382da0378535bed509859e8ad257e85ac50d4248)

## Second week (10)

I fixed the invalid default value for bit fields ([#14734](https://github.com/phpmyadmin/phpmyadmin/issues/14734)), the endless loading when creating a new view without filling any field ([#14943](https://github.com/phpmyadmin/phpmyadmin/issues/14943)), and the designer combo boxes that did not show up when adding a constraint ([#14832](https://github.com/phpmyadmin/phpmyadmin/issues/14832)). On sql-parser I fixed the incorrect error on the DEFAULT keyword in ALTER operations ([#229](https://github.com/phpmyadmin/phpmyadmin/pull/229), closing [#230](https://github.com/phpmyadmin/phpmyadmin/pull/230)). I also fixed the link to the shop and merged two pull-requests on the main repository.

- [26963f2f2c - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/26963f2f2c8fe53f47548b4e6e490cf6bdd4b7fe)
- [85438d8dfd - Add ChangeLog entry for #14734](https://github.com/phpmyadmin/phpmyadmin/commit/85438d8dfdf3d33484cc821c32f12cd6c510ce3a)
- [638700692b - Fix #14734 - Invalid default value for bit field](https://github.com/phpmyadmin/phpmyadmin/commit/638700692b58d7f37d69c9bde49c316fa2c71b54)
- [f6e00326da - Add ChangeLog entry for #14943](https://github.com/phpmyadmin/phpmyadmin/commit/f6e00326dae072479870ad410cdc26d32f7fbd62)
- [62b859fd40 - Fix #14943 - Loading Forever when creating new view without filling any field](https://github.com/phpmyadmin/phpmyadmin/commit/62b859fd408bae9f478da179fc1d4b8a4a7cd475)
- [9cd5db0a70 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/9cd5db0a701d1c2642fd9cc88dcbff57207294dc)
- [e431695d54 - Fix link to shop.trezor.io](https://github.com/phpmyadmin/phpmyadmin/commit/e431695d5430a8de872de47c76cd370cd1e2ed20)
- [50c8ca99b6 - Add ChangeLog entry for #14868](https://github.com/phpmyadmin/phpmyadmin/commit/50c8ca99b6ec35b8dcf1fa0b64fbf8e16d53ecaf)
- [06cda56298 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/06cda56298a4d4c1198f420585545769ae2db90e)
- [b8c31d374e - Add ChangeLog entry for #14948](https://github.com/phpmyadmin/phpmyadmin/commit/b8c31d374eb4980ee18e6efd0ddc2fc3d176534b)
- [4801f9136a - Add ChangeLog entry for #14832](https://github.com/phpmyadmin/phpmyadmin/commit/4801f9136af3917b8c1002f0d3648c06160d1cee)
- [e12b526455 - Fix #14832 - Show Designer combo boxes when adding a constraint](https://github.com/phpmyadmin/phpmyadmin/commit/e12b5264555e7780ecc6afb8182ec708aaa004f4)
- [dd009acb15 - Fix #229 - Incorrect error on DEFAULT keyword in ALTER operation](https://github.com/phpmyadmin/sql-parser/commit/dd009acb1540868ae89a1cfdb4f6c0f0345fd452)

## Third week (11)

I fixed error reporting and the GIS editor on multi server setups, and prevented multiple error reporting modals from opening ([#14359](https://github.com/phpmyadmin/phpmyadmin/issues/14359)). When a config-set command fails we now show the error instead of "loading..." forever. I also found why PMA_messages was undefined: the session folder had no access permissions, so index.php was loaded as a script and the messages were never defined ([#14826](https://github.com/phpmyadmin/phpmyadmin/issues/14826)). On top of that I fixed an undefined index in the setup script ([#14311](https://github.com/phpmyadmin/phpmyadmin/issues/14311)), removed the inline styles from the server status monitor ([#12262](https://github.com/phpmyadmin/phpmyadmin/issues/12262), closing [#14980](https://github.com/phpmyadmin/phpmyadmin/pull/14980)) and fixed the TypeError in the GIS editor ([#14991](https://github.com/phpmyadmin/phpmyadmin/issues/14991)).

- [f3c94b7c92 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/f3c94b7c9248c484c80752c2f2fbc033d5a5bf17)
- [0dbd08c610 - Add ChangeLog entry for b5659f09](https://github.com/phpmyadmin/phpmyadmin/commit/0dbd08c610a479bad5c4c3278c02f0567f36213e)
- [e33f806dd3 - Add ChangeLog entry for #14359](https://github.com/phpmyadmin/phpmyadmin/commit/e33f806dd35c5af9fb71ee8ae98570ee8b12ed4a)
- [b5659f09af - Fix error reporting on multi server setup](https://github.com/phpmyadmin/phpmyadmin/commit/b5659f09af4ee522f1d805355b3df2fb69e36681)
- [27f7b7a75f - Fix, prevent multiple error reporting modals](https://github.com/phpmyadmin/phpmyadmin/commit/27f7b7a75fa9421e310b0d1d9e7bc34accb96fb9)
- [e889aea9e1 - Add ChangeLog entry for 346eb905](https://github.com/phpmyadmin/phpmyadmin/commit/e889aea9e111272072ef786ed3feddd86df92fe3)
- [346eb9057d - Show error message if config-set fails and not "loading..." forever](https://github.com/phpmyadmin/phpmyadmin/commit/346eb9057dc5268668c5ec749349f5a2ad92a161)
- [88cb4c38bd - Add ChangeLog entry for #14826](https://github.com/phpmyadmin/phpmyadmin/commit/88cb4c38bd19f2d3d70eb048fddc0d5776d804f2)
- [0223c0607e - Fix #14826 - PMA_messages is not defined](https://github.com/phpmyadmin/phpmyadmin/commit/0223c0607ec2a58710080fadac435d9b594dffb7)
- [6108b955d8 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/6108b955d8d864b7c608fc323cf967eacfb1e59e)
- [03ce2d9fce - Add ChangeLog entry for #14053](https://github.com/phpmyadmin/phpmyadmin/commit/03ce2d9fce4c438742d6f9f02517ed42bd543651)
- [5e6fdf2299 - Removed inline styles from js/server_status_monitor](https://github.com/phpmyadmin/phpmyadmin/commit/5e6fdf2299d45ef947274a046a16044902acde82)
- [504fe5d83a - Fix style issues](https://github.com/phpmyadmin/phpmyadmin/commit/504fe5d83ae34a2ccec63053e9cd3bf38490e6e6)
- [faeea62b01 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/faeea62b014b890ee9321c3e90bfd9e72447d692)
- [7d6d1c7865 - Fix #14991 - TypeError in GIS editor](https://github.com/phpmyadmin/phpmyadmin/commit/7d6d1c786501c238a93d7aa0c3fc55402dd079e6)
- [21ac7146d2 - Add ChangeLog entry for #14991](https://github.com/phpmyadmin/phpmyadmin/commit/21ac7146d25b02d9c64d0ff193ba73bfea60c00e)
- [32cb95a6c9 - Fix multi server setup for GIS editor](https://github.com/phpmyadmin/phpmyadmin/commit/32cb95a6c97b2ec31d9922793f55036729e4de1a)
- [cbf0bf4d6a - Fix #14991 - TypeError in GIS editor](https://github.com/phpmyadmin/phpmyadmin/commit/cbf0bf4d6a396400d94efb837be09b3f97562671)
- [3570b80c4b - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/3570b80c4b0bb74b5ae9dcdd94f1464b97d75bf3)
- [d866c4b59a - Add ChangeLog entry for #14311](https://github.com/phpmyadmin/phpmyadmin/commit/d866c4b59a73cdf0e95b034e06d127b78280bd74)
- [3a716c528e - Fix #14311 - Undefined index in setup script](https://github.com/phpmyadmin/phpmyadmin/commit/3a716c528e4367c9ed5c9a4d2e316c977a4f42ea)
- [8748a3d033 - Merge pull request #233 from devenbansod/fix/pma/14995](https://github.com/phpmyadmin/sql-parser/commit/8748a3d033c627f2dc88cf83e4afb6f124fb6a58)

## Fourth week (12)

I upgraded CodeMirror to 5.45.0, the previous update was still at 5.37.0, which closed [#14475](https://github.com/phpmyadmin/phpmyadmin/issues/14475). I also fixed a count() error in Sql.php ([#14931](https://github.com/phpmyadmin/phpmyadmin/issues/14931)) and the SHOW FULL TABLES query that failed when a table is locked ([#14811](https://github.com/phpmyadmin/phpmyadmin/issues/14811)).

- [9dd940c58a - Fix whitespace](https://github.com/phpmyadmin/phpmyadmin/commit/9dd940c58aa7814d91853c1644e041f2342f4163)
- [aa5a18659b - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/aa5a18659bd33c3d04483465bbf1613394a49992)
- [8282a7f1b6 - Add ChangeLog entry for #14931](https://github.com/phpmyadmin/phpmyadmin/commit/8282a7f1b64e75ac05451208b05dfb2f8d2a1eb3)
- [2da5d8f390 - Fix #14931 - count(): Parameter must be an array or an object that implements Countable, ./libraries/classes/Sql.php#1623](https://github.com/phpmyadmin/phpmyadmin/commit/2da5d8f39039a4d0c934f1bbfa283dcf05c9fa73)
- [39c32d2fd2 - Upgrade codemirror to v5.45.0](https://github.com/phpmyadmin/phpmyadmin/commit/39c32d2fd21281ee67aaef4c80dc14d40325a112)
- [cdff5426d6 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/cdff5426d69e8b080fda13d448a9749012f7540f)
- [c65c088419 - Add ChangeLog entry for #14811](https://github.com/phpmyadmin/phpmyadmin/commit/c65c088419b2cce42ef2f9f618bdc2eeb521711c)
- [3e41eca650 - Fix #14811 - SHOW FULL TABLES FROM when a table is locked](https://github.com/phpmyadmin/phpmyadmin/commit/3e41eca65066e0da7b1e517a3b9c5eff1ddf6c32)

## Fifth week (13)

The week started with a security fix on the designer: the database name is now escaped when saving a page. I also fixed a series of multi server setup problems (sending an error report, removing partitioning, the query format, the new table and listing modal), the RESET SLAVE button on a replication slave, and column normalization, which now takes the server parameter and uses POST. For the download of monitor parameters I added a small delay, some browsers were reporting the blob as a 404. Then I closed a batch of issues: designer errors ([#14816](https://github.com/phpmyadmin/phpmyadmin/issues/14816), [#15110](https://github.com/phpmyadmin/phpmyadmin/issues/15110)), virtual columns on the insert page ([#14853](https://github.com/phpmyadmin/phpmyadmin/issues/14853)), the virtuality not selected when editing a generated column, with the VIRTUAL/STORED option added for MariaDB ([#14957](https://github.com/phpmyadmin/phpmyadmin/issues/14957)), deleted tables on the last page ([#14205](https://github.com/phpmyadmin/phpmyadmin/issues/14205)), incorrect page numbers ([#15077](https://github.com/phpmyadmin/phpmyadmin/issues/15077), [#15100](https://github.com/phpmyadmin/phpmyadmin/issues/15100)), the view edit form ([#14916](https://github.com/phpmyadmin/phpmyadmin/issues/14916), [#14926](https://github.com/phpmyadmin/phpmyadmin/issues/14926)), the comments format ([#15095](https://github.com/phpmyadmin/phpmyadmin/issues/15095)) and the hover box and login layout on the original theme ([#15071](https://github.com/phpmyadmin/phpmyadmin/issues/15071), #15065).

- [30292fc351 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/30292fc3516ae4ca5c65d50caa5f89b693e547f8)
- [c1ecafc383 - Fix security issue, escape database name when saving page on designer](https://github.com/phpmyadmin/phpmyadmin/commit/c1ecafc38319e8f768c9259d4d580e42acd5ee86)
- [71d4713d00 - Add ChangeLog entry for 503ef7, 65deb8, 144d53, 987e28, 5389a2](https://github.com/phpmyadmin/phpmyadmin/commit/71d4713d002040f7582ed875491c4889d627134a)
- [5389a26b92 - Fix downloading of monitor parameters](https://github.com/phpmyadmin/phpmyadmin/commit/5389a26b92ff291706fffb60ed946ffb6f030adf)
- [987e286c23 - Fix multi server setup send error report](https://github.com/phpmyadmin/phpmyadmin/commit/987e286c236a6c95bc65b4312c531c8cb5d1a780)
- [144d53177f - Fix 'RESET SLAVE' button on replication slave](https://github.com/phpmyadmin/phpmyadmin/commit/144d53177ff1283d5cb77b323d8a480ef3dce6c7)
- [65deb85c34 - Fix normalization](https://github.com/phpmyadmin/phpmyadmin/commit/65deb85c34ca6b7366cf207e658c8163e7918439)
- [503ef70a06 - Fix remove partitioning on multi server setup ](https://github.com/phpmyadmin/phpmyadmin/commit/503ef70a0680af5362465344baec93359052ea55)
- [96f8d42bda - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/96f8d42bdaa7b9f989dce0322ed02c87bb2b2750)
- [0279e81145 - Add ChangeLog entry for e48d4f37](https://github.com/phpmyadmin/phpmyadmin/commit/0279e8114565c71207169302526c5628fad82396)
- [e48d4f376d - Fix query format on multi server setup](https://github.com/phpmyadmin/phpmyadmin/commit/e48d4f376d0923436e619a95c8a774afb1e415b1)
- [c793b998a7 - ESLINT fixes](https://github.com/phpmyadmin/phpmyadmin/commit/c793b998a75b2073409c6f0d33bc88f5e7a80be0)
- [78c2a64a85 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/78c2a64a85fbe262ea13f0374483b046daf53931)
- [457fe8284b - Add ChangeLog entry for 2ee9a040](https://github.com/phpmyadmin/phpmyadmin/commit/457fe8284b03b3b0377cd8387ed781046b35cc1c)
- [9d9938f884 - Add ChangeLog entry for #14816](https://github.com/phpmyadmin/phpmyadmin/commit/9d9938f884b244b717e990099f7318f2c0044132)
- [2ee9a04079 - Fixed new table and database/table listing modal on multi server setup](https://github.com/phpmyadmin/phpmyadmin/commit/2ee9a040790e112afcdde23055bcfa6c8e79dba4)
- [75b185a701 - Fix #14816 - [designer] Cannot read property 'style' of null](https://github.com/phpmyadmin/phpmyadmin/commit/75b185a701263e744256cf4a40e20ac8e4587a6c)
- [8b36aa39d2 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/8b36aa39d2e7c17689963fc1401556bf46b16263)
- [43acd6de9a - Add ChangeLog entry for #15110](https://github.com/phpmyadmin/phpmyadmin/commit/43acd6de9a1494ab2278a7a075a2bc8b42b6b5ef)
- [dd17ae11d1 - Fix #15110 - TypeError e.preventDefaulut is not a function](https://github.com/phpmyadmin/phpmyadmin/commit/dd17ae11d1b361083e6a1997237f61000e4d4628)
- [252aebef48 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/252aebef4886152725d014cad6eb1b4f3c75711a)
- [e1ebb641a6 - Fix failing tests after merge of #14867](https://github.com/phpmyadmin/phpmyadmin/commit/e1ebb641a696b4f7c246bb62c4ff984979f2feed)
- [c1c22ff32f - Fix style issues](https://github.com/phpmyadmin/phpmyadmin/commit/c1c22ff32fce53cbc963582082d068892e1abed1)
- [76cbe9f961 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/76cbe9f961f6adc01ce9df0ec3b80e97d9f0b74d)
- [61eef951f0 - Add ChangeLog entry for #14853](https://github.com/phpmyadmin/phpmyadmin/commit/61eef951f0687345deb8e770d00f7c24baa3a651)
- [298ecbd0ba - Fix #14853 - Insert page should not allow entering things into virtual columns](https://github.com/phpmyadmin/phpmyadmin/commit/298ecbd0ba898a9caa721aaca8b1a417f04284e0)
- [ae51387092 - Add ChangeLog entry for #14957](https://github.com/phpmyadmin/phpmyadmin/commit/ae51387092570fe9b5cc79883ec18e249c6f8991)
- [7339d91fa5 - Fix #14957 - Virtuality is not selected when editing generated column](https://github.com/phpmyadmin/phpmyadmin/commit/7339d91fa51707783355ef9a2b2f9735aacb9ee9)
- [42d313d358 - Add ChangeLog entry for #14205](https://github.com/phpmyadmin/phpmyadmin/commit/42d313d358a1baa96522399179c46679be073ebe)
- [9b134037c7 - Fix #14205 - "No tables found in database" when all tables are deleted on last page](https://github.com/phpmyadmin/phpmyadmin/commit/9b134037c7e014e1831206c312ebe34eba9bc016)
- [a35f127236 - Add ChangeLog entry for #15077, #15100](https://github.com/phpmyadmin/phpmyadmin/commit/a35f1272362ecf71fbc586ff2d61cad6c9e1a069)
- [ec2e28fa04 - Fix #15077, #15100 - Incorrect page numbers](https://github.com/phpmyadmin/phpmyadmin/commit/ec2e28fa0403a534aaf1c330d80aa7aa3ef3eb1d)
- [0988f9cf1b - Fix style issues](https://github.com/phpmyadmin/phpmyadmin/commit/0988f9cf1b9e122200fcb940b2584ad14e052f76)
- [2b72b35a21 - Add ChangeLog entry for #14926](https://github.com/phpmyadmin/phpmyadmin/commit/2b72b35a212e9dd8026fc9b3778b80e359c1a2ab)
- [a7ac037b16 - Fix #14926 - Add an Edit link for each view in tables list](https://github.com/phpmyadmin/phpmyadmin/commit/a7ac037b168259eb32ee4e2ba599a5548d56d6de)
- [79840be362 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/79840be3621a1788d831fd541c55268f127cf115)
- [cd79a5f822 - Fix #14916 - Filling existing fields form while editing a view](https://github.com/phpmyadmin/phpmyadmin/commit/cd79a5f82261b92306259ff7a70accb72f1b75d5)
- [6de38a0435 - Remove added link to edit](https://github.com/phpmyadmin/phpmyadmin/commit/6de38a0435f26cd40c11750546b463a2015ede42)
- [1bb68a8925 - Merge branch 'QA_4_8'](https://github.com/phpmyadmin/phpmyadmin/commit/1bb68a89259827de34d296019abcb4c7707e7009)
- [4cae76832f - Add ChangeLog entry for #15074](https://github.com/phpmyadmin/phpmyadmin/commit/4cae76832f72329f647068feba5f26957972e788)
- [10cd180442 - Fix #15095 - Wrong format of comments](https://github.com/phpmyadmin/phpmyadmin/commit/10cd180442dcd7571500f0b37d84fa4206ee5f18)
- [5ba97aa1de - Fix #15095 - Wrong format of comments](https://github.com/phpmyadmin/phpmyadmin/commit/5ba97aa1de76fe7a6f5eb2efe3c568ba5c43bedf)
- [7fba7ff3a0 - Fix #15071 - Improper display of hover box for original and pmahomme](https://github.com/phpmyadmin/phpmyadmin/commit/7fba7ff3a062aff72aa13b7ee9eb77782bdfb758)
- [88185f585c - Fix #15071 - Improper display of hover box](https://github.com/phpmyadmin/phpmyadmin/commit/88185f585c798e8a2ef8cd435d29713b20b1287e)
- [36359ec8f4 - Fix #15065 - login page layout on theme original](https://github.com/phpmyadmin/phpmyadmin/commit/36359ec8f4c59137071b82fd879b31d5d57aa763)

## Other projects

Outside of phpMyAdmin I added tests and a fix to the SQL hint addon of CodeMirror ([codemirror5 #5819](https://github.com/codemirror/codemirror5/pull/5819)) and made snack-cli green again ([#1](https://github.com/subchen/snack-cli/pull/1), [#2](https://github.com/subchen/snack-cli/pull/2)).

