# Consulting Services for phpMyAdmin

## Report - December 2020

## Overview

Over the month of December 2020 my amount of work was variable.
I handled issues and pull-requests and made some code improvements.
Also did work on the Debian packaging before the Debian 11 freeze.

### First week (week number 50)

I did some code improvements and worked on having reproductible builds from source.

### Second week (week number 51)

Some preparation for the QA_5_1 series.

### Third week (week number 52)

On the docker repository I did merge all the work pending and made some documentation improvements.

### Fourth week (week number 53)

This week was focused on getting the latest version of phpMyAdmin into next Debian version before the freeze.
I did make some changes to update the version and comply to the Debian policy.

## Handled issues

* [#16485 Visual query builder missing "Build Query" button](https://github.com/phpmyadmin/phpmyadmin/issues/16485)
* [#16551 Added "Build Query" button to Visual Query Builder phpmyadmin#16485](https://github.com/phpmyadmin/phpmyadmin/pull/16551)
* [#16513 Replace style image with Linear-gradient](https://github.com/phpmyadmin/phpmyadmin/pull/16513)
* [#16550 16485 fix visual query button missing](https://github.com/phpmyadmin/phpmyadmin/pull/16550)
* [#16546 Password containing two %-characters breaks chart display](https://github.com/phpmyadmin/phpmyadmin/issues/16546)
* [#16543 Improve RTL support](https://github.com/phpmyadmin/phpmyadmin/pull/16543)
* [#16501 Correct language: reCAPTCHA, set up, Internet, URL](https://github.com/phpmyadmin/phpmyadmin/pull/16501)
* [#16495 \[5.1\] Drop tables checkbox check constraints above yes/no on large screens](https://github.com/phpmyadmin/phpmyadmin/issues/16495)
* [#16497 Fix #16495 Drop tables checkbox](https://github.com/phpmyadmin/phpmyadmin/pull/16497)
* [#16505 Drop tables strange wrapping with many tables](https://github.com/phpmyadmin/phpmyadmin/issues/16505)
* [#15658 Empty error box ](https://github.com/phpmyadmin/phpmyadmin/issues/15658)
* [#16540 Update themes for 5.2](https://github.com/phpmyadmin/phpmyadmin/pull/16540)
* [#16537 Cannot create new Server](https://github.com/phpmyadmin/phpmyadmin/issues/16537)
* [#16538 DE translation typo](https://github.com/phpmyadmin/phpmyadmin/issues/16538)
* [#16532 Deprecation Notice error Message](https://github.com/phpmyadmin/phpmyadmin/issues/16532)
* [#16531 Fix remaining issues due to #15823 changes](https://github.com/phpmyadmin/phpmyadmin/pull/16531)
* [#16530 Fix wrong logic introduced by #15823](https://github.com/phpmyadmin/phpmyadmin/pull/16530)
* [#16527 Errors in the Export tab](https://github.com/phpmyadmin/phpmyadmin/issues/16527)
* [#16526 Attempt to run setup script with PHP 8.0.0 with Dec 8, 2020 snapshot reports errors](https://github.com/phpmyadmin/phpmyadmin/issues/16526)
* [#16525 PHP 8.0 tests failing](https://github.com/phpmyadmin/phpmyadmin/issues/16525)
* [#16523 A PHP Error was encountered](https://github.com/phpmyadmin/phpmyadmin/issues/16523)
* [#16519 5.0.4 hits deprecation notices with PHP 8.0.0](https://github.com/phpmyadmin/phpmyadmin/issues/16519)
* [#16427 Renaming Database with views error](https://github.com/phpmyadmin/phpmyadmin/pull/16427)
* [#16422 Renaming Database with views throws an error](https://github.com/phpmyadmin/phpmyadmin/issues/16422)
* [#16512 Call to a member function getPath() on null when the theme directory does not exist](https://github.com/phpmyadmin/phpmyadmin/issues/16512)
* [#16520 $cfg\['ShowDatabasesNavigationAsTree'\] = false; on select not working](https://github.com/phpmyadmin/phpmyadmin/issues/16520)
* [#16507 Fixed empty text not appearing after deleting all Routines](https://github.com/phpmyadmin/phpmyadmin/pull/16507)
* [#16498 Inconsistent empty list behaviour after dropping multiple routines/events/triggers](https://github.com/phpmyadmin/phpmyadmin/issues/16498)
* [#16467 export PDF file - PHP notice Trying to access array offset on value of type null](https://github.com/phpmyadmin/phpmyadmin/issues/16467)
* [#16313 php74 mbstring.func_overload = 2 how to combine mbstring.func_overload = 0](https://github.com/phpmyadmin/phpmyadmin/issues/16313)
* [#16475  \[func_overload\] Twig\\Error\\SyntaxError: Unexpected character ";". in templates/navigation/main.twig on line 60](https://github.com/phpmyadmin/phpmyadmin/issues/16475)
* [#16511 cannot access phpMyAdmin after upgrading to php 8.0](https://github.com/phpmyadmin/phpmyadmin/issues/16511)
* [#317 Update config.inc.php](https://github.com/phpmyadmin/docker/pull/317)
* [#313 Add GitHub CI](https://github.com/phpmyadmin/docker/pull/313)
* [#292 Documentation fixes](https://github.com/phpmyadmin/docker/pull/292)
* [#309 Add PMA_QUERYHISTORYMAX config parameter](https://github.com/phpmyadmin/docker/pull/309)
* [#314 Add the possibility to change max_execution_time](https://github.com/phpmyadmin/docker/pull/314)
* [#305 add 'max_input_vars = 10000' to phpmyadmin_misc.ini](https://github.com/phpmyadmin/docker/pull/305)

# Commit list

## phpmyadmin-team/phpmyadmin (GitLab)

- [a21d30c82a - Update lintian overrides](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/a21d30c82a3650448ff076ef647cbca10badba51)
- [1b6590d56e - Remove a no more existing file](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/1b6590d56e246ab5b32d75367ad8d0b85d5eb992)
- [7ab8cb8d33 - Update d/copyright and d/changelog](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/7ab8cb8d33e62bc93087ec97c776066de2c27fee)
- [1056e2b44f - Allow .yml files until phpMyAdmin 5.1 because of service declaration for dependency injection](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/1056e2b44fab68ec1c09e100f2bf8463edc4c3e4)
- [6b80b16d10 - Refresh Debian patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/6b80b16d103647e17aa092e92dd70a914547dcaa)
- [2354ba1c4c - Update dependencies and link js libs](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2354ba1c4cbd0d36e26ace09fd2fad71b658eded)
- [4f7bee6eb5 - Compile scss files](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/4f7bee6eb510014377f63ce9c0bce2e1e6dd0b9d)
- [85184aa747 - Update phpunit rules ](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/85184aa747895940da8b0729f8186e9055046b4a)
- [23d1529389 - Update patches to make php-twig 4 not installable for safety reasons](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/23d152938998b186758bade224c3850b213e1c19)
- [57bafc2499 - Update upstream source from tag 'upstream/5.0.4+dfsg1'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/57bafc24990d076aa313775401ce9f7909bb9460)
- [2570d34b66 - New upstream version 5.0.4+dfsg1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2570d34b6614dd127b72877bdf13f3ef86c56d89)
- [945671a95a - Use C.UTF-8 instead of en_US.UTF-8](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/945671a95a4079d67958381f1a673d0fb9f76af7)
- [d2fd0e14fa - Add robots.txt to the installed directory to prevent robots access](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d2fd0e14fa1cf0fbe3baec0d5780e48db543c629)
- [2d404ddb3e - Bump d/watch version to 4](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2d404ddb3e840af5db2b197bf4b7db05af5ef8a9)
- [d2f86cab9d - Remove an example because the examples/ directory already has it](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d2f86cab9d9f1457bb962d4457df26295cc713ac)
- [ed2e5aa1e2 - Bump Standards-Version to 4.5.1](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ed2e5aa1e24e79eb0b3529ffb218ee8e39bbaeac)
- [3e18c116fd - Remove depends on composer](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/3e18c116fde557e9579b8384d8159f7b833eea0e)
- [2145e16356 - Run "cme fix dpkg"](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2145e163565d3df4f89dac0fce9053d9dd8218da)

## phpmyadmin-team/mariadb-mysql-kbs (GitLab)

- [d319b86631 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/d319b8663178bf46e4457eca5d5cd79694f773a8)
- [2f94cd490d - Update my GPG key](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/2f94cd490df73bef2d0b3882df7d691807665333)
- [3c30b6742f - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/3c30b6742fe937771beb75547c1ce45dc43fa0d5)
- [635addce70 - Clean up debian/upstream/signing-key.asc](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/635addce705de0cb3df66ddc74777c1f35189e24)
- [d7414a42cb - Add d/changelog entry](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/d7414a42cb204bdcde75ad185d1782eb85314328)
- [a0d8fda7e6 - Run "cme fix dpkg"](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/a0d8fda7e61b271a7a9dfbc900388fe4f4244b3f)
- [365f4694b7 - Update Standards-Version to 4.5.1](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/365f4694b7beb5c0864db65d3d91c7c44ed469d3)
- [ad7b53a719 - Set debian branch to debian/latest (DEP-14)](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/ad7b53a719c6ca859961a5d2e6a8f7a93ee3c882)

## phpmyadmin-team/google-recaptcha (GitLab)

- [fcf3f0b5be - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/fcf3f0b5be55446f9c01f7203990a7241625c39f)
- [6bb024888d - Add test autoloader to d/clean](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/6bb024888d08a434263bda1edeff3cf2baf6b434)
- [1d164fad38 - Add autoload generation](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/1d164fad38ee3a446ef9c9f8c6b3b63556c36ca9)
- [b981f4f0c8 - Add d/examples and d/docs](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/b981f4f0c8597e0d9de044e89e53ed04047c4df3)
- [d533d3ef9c - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/d533d3ef9cc37fd5a62a25ac2438e4899fd65d4f)
- [f6271890b0 - Run "cme fix dpkg"](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/f6271890b08767b3cefea9097b85a0ba237fbd48)
- [1b7e38c29c - Update d/copyright](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/1b7e38c29c52e42f992867e14418800cf51208cb)
- [7ca5f2b087 - Add .phpunit.result.cache to d/clean](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/7ca5f2b087214458c1d48810c24ca51e174a24c5)
- [0a827c586a - Fix a typo in a patch file](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/0a827c586a5c54eabc36a5c45706831d3229c454)
- [1f2be57990 - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/1f2be57990692713129e2567df3aaf06dacee030)
- [8d0196fad5 - Add myself to the uploaders](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/8d0196fad504e583d0b58ab9569b0142c6a7d7c1)
- [0b21ef706b - Update Standards-Version to 4.5.1](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/0b21ef706b0a5f56b06fd6288b6c4ae8e2eca797)
- [c704c7e0c4 - Run "cme fix dpkg"](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/c704c7e0c49b73428102d0c7eaa455aefcf05ce6)
- [b301b1be5f - Update patch format](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/b301b1be5fa3e58e6e4f372a7992a2d6cd0696c2)
- [b0d32a7e2f - Update d/changelog](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/b0d32a7e2f4c1c35c8be06a9d371807f4df73214)
- [13672a5cae - Adapt to recent version of PHPUnit (9)](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/13672a5cae6c1468d1f8488b999353d8ffb5c9ea)
- [6678b3e320 - Set debian branch to debian/latest (DEP-14)](https://salsa.debian.org/phpmyadmin-team/google-recaptcha/-/commit/6678b3e320e571f5f7928973d253f64178500631)

## phpmyadmin/phpmyadmin (GitHub)

- [0605f38d9a - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/0605f38d9a082ca9ac379e40480fccf538223d98)
- [74d9709c44 - Fix a typo](https://github.com/phpmyadmin/phpmyadmin/commit/74d9709c44723516904a33269f36badec30cd07b)
- [463eec304e - Add a ChangeLog entry for #16485](https://github.com/phpmyadmin/phpmyadmin/commit/463eec304e21c98c32cc80adcfce7d2c5e4b3533)
- [0de7efe115 - Merge #16551 - Fix #16485 - Visual query builder missing "Build Query" button](https://github.com/phpmyadmin/phpmyadmin/commit/0de7efe1153ae2e62c9f2e433acd24fed7a2c274)
- [546ea64352 - Happy new year !](https://github.com/phpmyadmin/phpmyadmin/commit/546ea643521c176250e5e2462e4bd4f0e92ec606)
- [0747f8aca1 - Merge #16513 - Replace style image with Linear-gradient](https://github.com/phpmyadmin/phpmyadmin/commit/0747f8aca155acf71c693671fddee34e61082292)
- [64efdebbd3 - Upgrade psalm and update baseline](https://github.com/phpmyadmin/phpmyadmin/commit/64efdebbd3f0791a79730b92aaf5754c87b431d8)
- [5993435e15 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/5993435e15dbaa37bc7921b79dc596fa2852757d)
- [8c676643ab - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/8c676643ab53ce8f22fb1b9ce976b78d9adf342a)
- [f01eb2cb2a - Update CodeMirror files to 5.59.0](https://github.com/phpmyadmin/phpmyadmin/commit/f01eb2cb2a34c89a59811a2a54aa90ff667f5878)
- [bb7857f0fc - Upgrade JS dependencies](https://github.com/phpmyadmin/phpmyadmin/commit/bb7857f0fcdffbf8f187074f41e220c7c56c6f9e)
- [b538a8bfdd - Upgrade phpstan and psalm](https://github.com/phpmyadmin/phpmyadmin/commit/b538a8bfdd7f60a0ac73c81c7d633117260bc7b2)
- [c63995e94b - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/c63995e94bf39d73ce475df518a920d9c6c76460)
- [d168c1cb70 - Merge #16501 - Correct language: reCAPTCHA, set up, Internet, URL](https://github.com/phpmyadmin/phpmyadmin/commit/d168c1cb703b6fffaebc58887d47a51d03c0051e)
- [0b1ccea58c - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/0b1ccea58cafe119498d99e3874f160038a355c7)
- [6ff859986e - Add a ChangeLog entry for #16495](https://github.com/phpmyadmin/phpmyadmin/commit/6ff859986e0b9089b01767ee75c8131064ebe412)
- [3be93a47f1 - Merge #16497 - Fix #16495 Drop tables checkbox](https://github.com/phpmyadmin/phpmyadmin/commit/3be93a47f1d945d639b6f4733e4f2a3c50869ed2)
- [c6bf0c21be - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/c6bf0c21beea8f2956a4ab8468de3cb7a94d5293)
- [1dbd2190ed - Merge branch 'QA_5_0' into QA_5_1](https://github.com/phpmyadmin/phpmyadmin/commit/1dbd2190edf1d4bc8b0768fde95fd061e8c3690e)
- [c1d7ec8c4a - Set ChangeLog entry for #15658 and not #15656](https://github.com/phpmyadmin/phpmyadmin/commit/c1d7ec8c4a7c8718ab41f38e39a9765fa0aaf2e7)
- [59f4385924 - Upgrade Doctum to ^5.3.0](https://github.com/phpmyadmin/phpmyadmin/commit/59f438592424bd86354196ff01efb9bf5d2c3734)
- [6547fab3a2 - Add a ChangeLog entry for #15656](https://github.com/phpmyadmin/phpmyadmin/commit/6547fab3a219ef39fe618ea37876be02d68eea8f)
- [802b6b41ba - Fix #15656 - Saving UI displayed columns on a non database request fails](https://github.com/phpmyadmin/phpmyadmin/commit/802b6b41ba005c8396d5611bfb95b5e237b20cc7)
- [07487c1e18 - Translated using Weblate (German)](https://github.com/phpmyadmin/phpmyadmin/commit/07487c1e18f75dc3a9f1ced9b8036d912b20e0fd)
- [ac7abd8612 - Merge #16540 - Update themes for 5.2 series](https://github.com/phpmyadmin/phpmyadmin/commit/ac7abd86129552dce96c46f9941e1ec86b05d757)
- [18c0ef4ac4 - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/18c0ef4ac40a62f52fbd5452695495a453f8a3cd)
- [2b7e5edfe0 - Update composer branch alias](https://github.com/phpmyadmin/phpmyadmin/commit/2b7e5edfe0b2aea787eac574b95c1caa8e56b7ee)
- [eba4c0e2ce - Update configuration and badges for QA_5_1](https://github.com/phpmyadmin/phpmyadmin/commit/eba4c0e2cee6ee90d8430511fe4a447d5ee52f00)
- [8304b18778 - Update psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/8304b187780d223dc57905b5d918088544c51952)
- [e53dc244f0 - Translated using Weblate (German)](https://github.com/phpmyadmin/phpmyadmin/commit/e53dc244f0bed6acdd4f0b0a731fdc48a51bdd3c)
- [46b5bd97b6 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/46b5bd97b650b1e9c3c5e51d3540943ed1d93034)
- [4f0f055792 - Add ChangeLog header for 5.2.0](https://github.com/phpmyadmin/phpmyadmin/commit/4f0f055792b444474b17d9107b9f3fafd2a3e5a6)
- [30d49dd198 - Set version to 5.2.0-dev](https://github.com/phpmyadmin/phpmyadmin/commit/30d49dd19820bfb02066befd669035f03d1aef47)
- [e2f6b0af4b - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/e2f6b0af4b58b829108619ded560b37bec80a7be)
- [9cb1a7156e - Merge branch 'QA_5_0' into QA_5_1](https://github.com/phpmyadmin/phpmyadmin/commit/9cb1a7156ec0ab0cb96f89dbc5227cd24f945ee0)
- [4620ad898e - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/4620ad898edab10c5ad9a48c6c646c78796c6ff0)
- [de3ae1123c - Fix a coding standard issue](https://github.com/phpmyadmin/phpmyadmin/commit/de3ae1123c07369c52ae81d127ca1fc907cca265)
- [8485674ffd - Merge branch 'QA_5_1'](https://github.com/phpmyadmin/phpmyadmin/commit/8485674ffde9fe218761480812f46586acfa961b)
- [b4f1e14e80 - fix or ignore phpstan 0.12.63 errors](https://github.com/phpmyadmin/phpmyadmin/commit/b4f1e14e8025def8bb047bdc6797aeeb581e1b0f)
- [fb5d6159af - Fix Doctum reported phpdoc errors](https://github.com/phpmyadmin/phpmyadmin/commit/fb5d6159af9fd9f7b6859b42d6b31528d89f7514)
- [51db118150 - Merge #16531 - Ref #15792 - Fixed deprecated jquery selectors and broken event scheduler button](https://github.com/phpmyadmin/phpmyadmin/commit/51db118150a6261bbe79d7c0c418b034c3093781)
- [f476b05503 - Merge #16530 - Ref #15792 - Fixed deprecated jquery selectors and broken monitor page](https://github.com/phpmyadmin/phpmyadmin/commit/f476b0550326183836e88d9fa5eff12103732ce2)
- [394685a885 - Upgrade phpstan/*](https://github.com/phpmyadmin/phpmyadmin/commit/394685a885a173c063cc4c04f3e07537d6c10775)
- [005b400090 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/005b400090d764e004db5f1da49e8dddf3563f5a)
- [860f035100 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/860f0351007767338def118eec05cc40568db9b8)
- [96f1a24a6f - Add ChangeLog entries for #16525, #16429 and #16490](https://github.com/phpmyadmin/phpmyadmin/commit/96f1a24a6fe8d5dcfc6d4a1c38fce568c035b760)
- [0e728a67c5 - Ref #16429 - Fix undefined array keys](https://github.com/phpmyadmin/phpmyadmin/commit/0e728a67c5fd30fb15085b80e22d2b4fc48dee4a)
- [cabe45f5a4 - Fix #16490 - [PHP 8.0] Function libxml_disable_entity_loader() is deprecated](https://github.com/phpmyadmin/phpmyadmin/commit/cabe45f5a44bec8b91f7cee463db4899555ac771)
- [b8e4d932b7 - Ref #16429 - PHP 8 error on preg_replace](https://github.com/phpmyadmin/phpmyadmin/commit/b8e4d932b7bebcd1e4371c608117b1336fff8d99)
- [ff52752bc0 - Ref #16429 - PHP 8 error TypeError: Unsupported operand types: string / int](https://github.com/phpmyadmin/phpmyadmin/commit/ff52752bc0c457154dfb9cdcb56d77a9a603fb18)
- [00b419afe1 - Ref #16429 - Fix PHP 8.0 "TypeError: preg_replace():" errors](https://github.com/phpmyadmin/phpmyadmin/commit/00b419afe147624238d44dc5fe62a7cf07b14134)
- [bdc8760bc3 - Fix #16525 - PHP 8.0 failing tests when comparing 0 to ''](https://github.com/phpmyadmin/phpmyadmin/commit/bdc8760bc350b8422cf7ac722ccfa5b9ef268ac4)
- [c1552aef43 - Backport some TravisCI fixes and changes ](https://github.com/phpmyadmin/phpmyadmin/commit/c1552aef433ef3598c92ba5fc74b4c8928943625)
- [b826234ebb - Fix #16526 - Fatal error: Uncaught TypeError: preg_replace(): Argument #3 ($subject) ](https://github.com/phpmyadmin/phpmyadmin/commit/b826234ebb5da52afd940fa0a5d552a1b9a3b0dd)
- [9f458e128c - Upgrade @babel/* dependencies, sass, eslint](https://github.com/phpmyadmin/phpmyadmin/commit/9f458e128ccf77645bcc2eef7e484088e74365b7)
- [251753bf4d - Use locutus.sprintf npm package to copy the source file](https://github.com/phpmyadmin/phpmyadmin/commit/251753bf4d74086639197c998e1f6f1e1fa84372)
- [28c80ca03d - Remove jqplot npm package as we use updated-jqplot](https://github.com/phpmyadmin/phpmyadmin/commit/28c80ca03d13e4b4947dc929a2cf6a9fb9894978)
- [dcb8572f27 - Update build.xml](https://github.com/phpmyadmin/phpmyadmin/commit/dcb8572f27c55a8b9118a4e94afd23ab8da73a6e)
- [f8736b7c3e - Remove failing command on Windows CI](https://github.com/phpmyadmin/phpmyadmin/commit/f8736b7c3e9bda49001409df6d749807d3be40df)
- [dedef60b6e - Update files from updated-jqplot](https://github.com/phpmyadmin/phpmyadmin/commit/dedef60b6ebd776606a1dd561ac4bff534a1c01f)
- [afdf57aed2 - Re-build all jqplot files from the updated-jqplot npm package](https://github.com/phpmyadmin/phpmyadmin/commit/afdf57aed25ac54cb48c8d781bd6c512def68bbc)
- [e77adf9944 - Upgrade doctum and  --ignore-parse-errors](https://github.com/phpmyadmin/phpmyadmin/commit/e77adf994409da2ff03ae50e6a849ee303667bca)
- [a5dc78edac - Sync jqplot plugins from updated-jqplot node package](https://github.com/phpmyadmin/phpmyadmin/commit/a5dc78edac859199b9b9113c02fee810eaca5fe6)
- [4d3ecbe4e7 - Fix #16525 - PHP 8.0 failing tests when comparing 0 to ''](https://github.com/phpmyadmin/phpmyadmin/commit/4d3ecbe4e71396edc80138202cbfcfa8e5907ef8)
- [61d59bc96e - Fix a typo and add a return typehint](https://github.com/phpmyadmin/phpmyadmin/commit/61d59bc96e84f26f2983eaade1c2915c0150a47d)
- [3d22da0994 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/3d22da0994d64018746cdf97ad9c5e50c5225e97)
- [f018156de3 - Merge #16427 - Fix #16422 - Renaming Database with views throws an error](https://github.com/phpmyadmin/phpmyadmin/commit/f018156de33517212c636f6991dac69a8eac9c8f)
- [f78aa880e7 - Remove scriptalicious.com blog, domain is for sale now](https://github.com/phpmyadmin/phpmyadmin/commit/f78aa880e7ce614737cba050422ed5f13366b76b)
- [e7f37fb611 - Make some links in the code base use HTTPS](https://github.com/phpmyadmin/phpmyadmin/commit/e7f37fb6110b40f609dc49720bb6c1cf4fca3339)
- [ba87114e4f - Apply some coding standard rules in Import\README.md](https://github.com/phpmyadmin/phpmyadmin/commit/ba87114e4f0f6ef15b8e1123f6fa5deafa49c332)
- [0ae5216e28 - Improve Git class by removing switch cases on request responses](https://github.com/phpmyadmin/phpmyadmin/commit/0ae5216e283ba80704a34d850ce29a4f690160a1)
- [15968b293b - Add missing globals for ImportCsv](https://github.com/phpmyadmin/phpmyadmin/commit/15968b293b157fa6ec310ebc518deedda248cd60)
- [207d6d44fa - Remove unused parameter for getHtmlSelectBox on ThemeManager class](https://github.com/phpmyadmin/phpmyadmin/commit/207d6d44fab1779c59b3ca50f7b000b8bb482c3d)
- [1d154724a5 - Add more typehints to the theme manager class](https://github.com/phpmyadmin/phpmyadmin/commit/1d154724a5192addf6015a316b7d7382c77de361)
- [35cdaf4356 - Fix #16512 - Add some code securities when the themes folder does not exist](https://github.com/phpmyadmin/phpmyadmin/commit/35cdaf435639820bc21494473b53e8dcf904553a)
- [1cdb34de93 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/1cdb34de93f5ce69d46f00f4b0fe75436e9cd23a)
- [2141d81e7e - Fix #16520 - $cfg['ShowDatabasesNavigationAsTree'] = false; on select not working](https://github.com/phpmyadmin/phpmyadmin/commit/2141d81e7ed462745e3587d319237df82ecf239e)
- [a0ee119b5f - Remove navigation static URL in the html output](https://github.com/phpmyadmin/phpmyadmin/commit/a0ee119b5fc718b38d6ab97fb19a5a40cebf424f)
- [dd0efd4435 - Ignore platform requirements on Windows TravisCI](https://github.com/phpmyadmin/phpmyadmin/commit/dd0efd4435d2798fcd2349581f1bc37a3e1692a2)
- [120021f92e - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/120021f92eb628d286103890b7404bebae26fbaa)
- [42ee268d56 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/42ee268d56e349a3ceadb626d543931f7a5092d7)
- [d3efa9b5b5 - Update TravisCI after migration to PHP8.0](https://github.com/phpmyadmin/phpmyadmin/commit/d3efa9b5b5d15cdac2a538cd0a0f317415895529)
- [66f38555d4 - Ref #14801 - Remove plain HTML for PHP code for ShowDatabasesNavigationAsTree option](https://github.com/phpmyadmin/phpmyadmin/commit/66f38555d4637362082dbe54925261687a5f0fa7)
- [2507293cdb - Add a ChangeLog entry for #16498 and #16467](https://github.com/phpmyadmin/phpmyadmin/commit/2507293cdb92efc2ce3c8ce263a6afe9e3d046f8)
- [51b9dd1bed - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/51b9dd1bed17dfa473d8259b3021fb4f719111b3)
- [50497b5ed5 - Merge #16507 - Fix #16498 - empty text not appearing after deleting bulk Routines](https://github.com/phpmyadmin/phpmyadmin/commit/50497b5ed54e80b03f360278ccbf3fc549e6889b)
- [8fddd36d75 - Ref #16467 - fetch page name in a safer way](https://github.com/phpmyadmin/phpmyadmin/commit/8fddd36d750051d79e3dbc812761ae37fbd426ee)
- [70320f256b - Fix a "PHP Fatal error:  Uncaught TypeError: rawurlencode" using sakila database](https://github.com/phpmyadmin/phpmyadmin/commit/70320f256b04dc5d5cfee06fc054bc00fdd4a625)
- [e25f2ec999 - Fix a "PHP Fatal error:  Uncaught TypeError: ucfirst()"](https://github.com/phpmyadmin/phpmyadmin/commit/e25f2ec999ce84d1cb618950fffc9e89569342b4)
- [dfce335134 - Some text code improvements](https://github.com/phpmyadmin/phpmyadmin/commit/dfce3351343f79633851465ea70d415f396df2fa)

## phpmyadmin/docker (GitHub)

- [a66e868fd0 - Merge #317 - Fix #309 QueryHistoryMax is an int](https://github.com/phpmyadmin/docker/commit/a66e868fd007faae55bf8ccc30d143e59759de0b)
- [0225133981 - Merge #292 - Documentation fixes](https://github.com/phpmyadmin/docker/commit/022513398127bd7f09ac3bd7407f4034bbde3c0e)
- [d6da7ca981 - Wording improvement](https://github.com/phpmyadmin/docker/commit/d6da7ca981758bde95d7c11646717ecc85737a81)
- [76b8d29695 - Improvements and document #309](https://github.com/phpmyadmin/docker/commit/76b8d2969587fbe28c365ab8e5b5c5aa98203401)
- [4b1fe4dc6f - Merge #314 - Add the possibility to change max_execution_time](https://github.com/phpmyadmin/docker/commit/4b1fe4dc6f7d12e150122616abb7af68ed81951b)
- [a2b0f3a5c0 - Merge #309 - Add PMA_QUERYHISTORYMAX config parameter](https://github.com/phpmyadmin/docker/commit/a2b0f3a5c0c27d88c143ae110b88672af5c7a67d)
- [06cc93a972 - #313 - Drop Build Images from TravisCI](https://github.com/phpmyadmin/docker/commit/06cc93a97235505c7e65cffc15033137e3446727)
- [7f5e91546b - Merge #305 - Add 'max_input_vars = 10000' to phpmyadmin_misc.ini](https://github.com/phpmyadmin/docker/commit/7f5e91546b93decc6ef63e19e7627bc6eeaa89b5)
- [7e3ee4e83c - Merge #313 - Add GitHub CI](https://github.com/phpmyadmin/docker/commit/7e3ee4e83c64d9dfd029a5d20c40e3122885b06a)
- [1465223b65 - Improve the README.md](https://github.com/phpmyadmin/docker/commit/1465223b65c0169ddf14658bf52ecc1fec15e463)
