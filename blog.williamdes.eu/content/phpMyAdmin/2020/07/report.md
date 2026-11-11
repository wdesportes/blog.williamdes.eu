+++
title = "Report for July 2020"
date = 2020-07-01T12:00:00Z
updated = 2026-11-10T12:00:00Z
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
co_authors = ["DeepSeek"]

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for July 2020.

<!-- more -->

In July 2020 I fixed bugs, worked on code cleanup and on the release bundles, and started the replacement of Sami by Doctum.

## First week (27)

I merged fixes for the JSON columns, which now use a textarea, the JSON input transformation editor being too narrow, and the search page when a table has special characters. I also fixed the missing logo in the navigation panel.

- [0ee39388f5 - Add a ChangeLog entry for #16223](https://github.com/phpmyadmin/phpmyadmin/commit/0ee39388f5a077598e3b1ac08e5f75ba18c63b06)
- [3d4949191e - Merge #16238 - Fixes #16223 - JSON input transformation editor is very narrow](https://github.com/phpmyadmin/phpmyadmin/commit/3d4949191e94719d80c1d9904732c5db8dd6f000)
- [4e6d455644 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/4e6d455644e472e54ff48157592186812d8bdee1)
- [f757da7fae - Do not use phpstan test case class, use PHPUnit\Framework\TestCase](https://github.com/phpmyadmin/phpmyadmin/commit/f757da7fae3234465d1c9b65774f38c121333a15)
- [b41e17124b - Add a ChangeLog entry for #16139](https://github.com/phpmyadmin/phpmyadmin/commit/b41e17124b01c718f130b5274c6ec55a3db596bb)
- [c8bc76b8dd - Merge #16236 - Fixes #16139 - ✨ Use TextArea for JSON columns.](https://github.com/phpmyadmin/phpmyadmin/commit/c8bc76b8dd35751e6ca9184f0c0aef5cf8f44243)
- [0c81adcff2 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/0c81adcff2f6eb727a3206c3b2da1bb99ce001b9)
- [68d6e26453 - Add a ChangeLog entry for #16222](https://github.com/phpmyadmin/phpmyadmin/commit/68d6e264536e292f3f3730c6cbfeae90a0cee137)
- [25297a0b0e - Merge #16240 - Fixes #16222 - Can't use search page when table have a special characters](https://github.com/phpmyadmin/phpmyadmin/commit/25297a0b0e209cae502eba1b99cd2fa40bf8f5ca)
- [fd21520711 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/fd215207110bc9967c26939595057a0413a787a0)
- [50af2c9baa - Fix coding standard issues](https://github.com/phpmyadmin/phpmyadmin/commit/50af2c9baaf2c7fd6dc445edfcad3157e871e010)
- [bbe1132484 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/bbe1132484b86707e86f7d7ab77e702f5607a09d)
- [66f0c9cb1e - Merge remote-tracking branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/66f0c9cb1e8053ca903b9f44892f5dbbf0ac35d4)
- [9444234e78 - Fix #16237 - Logo missing in upper left corner of navigation panel](https://github.com/phpmyadmin/phpmyadmin/commit/9444234e78447a61ac9eb6536677f9bb71122222)
- [2cd16d4b56 - Fix 2 typos in debian/doc-base](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2cd16d4b5683b5ad3963b011339272ed53b8ae15)

## Second week (28)

I converted a vendor JS file to UTF-8 to fix a Debian lintian national-encoding warning, and merged an input validation fix for the zoom search.

- [06ffb871b4 - Merge branch 'QA_5_0' and sync Search controllers](https://github.com/phpmyadmin/phpmyadmin/commit/06ffb871b45d6cba47bf22af9cdde9c792b97739)
- [a35586938f - Convert js/vendor/jquery/jquery.event.drag-2.2.js to UTF-8 to fix Debian lintian national-encoding](https://github.com/phpmyadmin/phpmyadmin/commit/a35586938f906aa2ed95a89363ce406bac2e578a)
- [f646764d77 - Add a ChangeLog entry for #16248](https://github.com/phpmyadmin/phpmyadmin/commit/f646764d7745c362f3d26be788a874f93d61d9c7)
- [5c61a51351 - Merge #16249 - Fixes #16248 - Zoom Search is not performing input validation on INT columns](https://github.com/phpmyadmin/phpmyadmin/commit/5c61a513518251fee5555ffd247b45cec7aa0156)

## Third week (29)

I worked on typehints in the test suite and fixed some Scrutinizer reports. I also merged fixes for the modal headings, the setup tabs and the error messages padding.

- [f993c46e76 - Fix failing tests and failing GitTest](https://github.com/phpmyadmin/phpmyadmin/commit/f993c46e76b5dfe36b3bff42b7bb892929b686a1)
- [e78eb340bc - Some code improvements and fixes related to issue reported by Scrutinizer](https://github.com/phpmyadmin/phpmyadmin/commit/e78eb340bce21151355b3e82109f23ce4e7dc2c4)
- [ce6a12bf56 - Remove more typehints as object for php 7.1](https://github.com/phpmyadmin/phpmyadmin/commit/ce6a12bf56982028064d69e7c9a86a9a5a12c5fe)
- [7a78895f6b - Remove typehint as object for php 7.1](https://github.com/phpmyadmin/phpmyadmin/commit/7a78895f6b640f2475b3e8849018daa947e98f96)
- [ddfdbc2134 - Remove some useless doc blocks and fix some coding standard warnings ](https://github.com/phpmyadmin/phpmyadmin/commit/ddfdbc21345ae7d72454d66be714f3db40687323)
- [66a7d2a84c - Update baselines after fixing some tyephints](https://github.com/phpmyadmin/phpmyadmin/commit/66a7d2a84c317ecea63fa6df1d046c29f756ed41)
- [de0426aa48 - Add some typehints on tests](https://github.com/phpmyadmin/phpmyadmin/commit/de0426aa48353bd43980cbcf38abd852a506412b)
- [0340f66740 - Fix some tests having wrong typehints](https://github.com/phpmyadmin/phpmyadmin/commit/0340f66740554b0025ea4b026c3a05188b60a32b)
- [a80153a633 - Add typehints using phpcbf on test/*](https://github.com/phpmyadmin/phpmyadmin/commit/a80153a633b608aa8d6acb134d1b43495480ed42)
- [902cd89de9 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/902cd89de910fe52e57f89274b181cbda6de3572)
- [398e3112e0 - Add a ChangeLog entry for #16261](https://github.com/phpmyadmin/phpmyadmin/commit/398e3112e0fc7003cb123a9d5135de7902dc4f42)
- [701e662cae - Merge #16266 - Fixes #16261 - Modal headings missing](https://github.com/phpmyadmin/phpmyadmin/commit/701e662caee0cfa80aeba62812b90979953306d1)
- [8c9c4cf732 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/8c9c4cf7320bf609fba672af8bb6a7b5408873d7)
- [cec35f4e9e - Merge #16267 - Fixes #16265 - Setup tabs are not aligned](https://github.com/phpmyadmin/phpmyadmin/commit/cec35f4e9e8443e44d93b9707c41b9ed586e1e8d)
- [3efa759ae2 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/3efa759ae2fe3293d2e5c9a7d2eded1595379126)
- [d1462e92cb - Fix PhpMyAdmin\Database\Designer\Common::saveDisplayField return type](https://github.com/phpmyadmin/phpmyadmin/commit/d1462e92cb6dddbb53854a8d0bf48ce3ad3b428c)
- [6744a7de06 - Merge #16263 - Fixes #16217 - Missing padding and css for error messages ](https://github.com/phpmyadmin/phpmyadmin/commit/6744a7de06080d0f74f94bc6d6249c1e048e3834)

## Fourth week (30)

I merged several fixes: tinyint(1) in the search page, the rows selector after sorting, and the SQL query display for views in MySQL 8, using sql-parser to get the CREATE VIEW SELECT. I added a button on the export page to show the SQL query and rewrote the exit handling. And phpMyAdmin was added to the docker official images. I also opened the pull-request to replace Sami by Doctum.

- [a1312c7af2 - Add a ChangeLog entry for #16256](https://github.com/phpmyadmin/phpmyadmin/commit/a1312c7af2eda52087f565f62f5471dab8dff733)
- [0e344b6a50 - Fix #16256 - Warning: error_reporting() has been disabled for security reasons on php 7.x](https://github.com/phpmyadmin/phpmyadmin/commit/0e344b6a50d0cec40428f4f33a16089d36a44954)
- [47c70dacc7 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/47c70dacc7ec06048483b3ccea7f0e89924323b8)
- [a2fb692d91 - Add a ChangeLog entry for #16255](https://github.com/phpmyadmin/phpmyadmin/commit/a2fb692d91221db26fa27eed53f49b21a4422ad3)
- [fe9e7ba89d - Fix #16255 - Tinyint(1) shown as INT in search page](https://github.com/phpmyadmin/phpmyadmin/commit/fe9e7ba89d4435e9d32f36c6a8ad08414693640f)
- [7331688a09 - Use strict === on constants of Results class](https://github.com/phpmyadmin/phpmyadmin/commit/7331688a09d64325575501b22c2fe2b44ae4a3f8)
- [c45137af04 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/c45137af04cb36b0c304fb1559525e85f93a1d3f)
- [02efcee4ad - Add a ChangeLog entry for #16194](https://github.com/phpmyadmin/phpmyadmin/commit/02efcee4ad8d52f60c4e26c20357031639bb16a6)
- [00998605a8 - Merge #16274 - Fix #16194 - SQL query does not appear in case of editing view where definer is not you on MySQL 8](https://github.com/phpmyadmin/phpmyadmin/commit/00998605a8282be42a30ac13b5df735de4ba8e67)
- [b47c7060fa - Use sql-parser to get the create view select as](https://github.com/phpmyadmin/phpmyadmin/commit/b47c7060fae350b31534dc8cb58154876ba969be)
- [38c09bcee9 - Fallback on empty string for #16146 if session_max_rows is not set](https://github.com/phpmyadmin/phpmyadmin/commit/38c09bcee97c2ae5d5f7b0409802a2c5149da0b9)
- [3891a0834c - Add a ChangeLog entry for #16146](https://github.com/phpmyadmin/phpmyadmin/commit/3891a0834ce290f60bd616c32cec2bb2c5f1d09f)
- [54efb1e2d4 - Merge #16275 - Fix #16146 - sorting does not keep the number of rows selector](https://github.com/phpmyadmin/phpmyadmin/commit/54efb1e2d4e3e9e1d08cd0f493f0f69ae210d88d)
- [41b8c41de1 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/41b8c41de11824d7bdd4953c4b29f5fef2a6c178)
- [839564fc85 - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/839564fc85e243d2c20d3633dc7c7b667426ca69)
- [ebbd959ba1 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/ebbd959ba1691e287e2d667db1b62ff4cb216c18)
- [9e39713b5a - Document "DELETE HISTORY" for translators](https://github.com/phpmyadmin/phpmyadmin/commit/9e39713b5ac319741f84d9c7a11f21faf2eee786)
- [411ea73628 - Update po files](https://github.com/phpmyadmin/phpmyadmin/commit/411ea73628b17a6f55ffdf9db3d502ad364dcbf2)
- [e97d82061d - Coding standard fixes after #14340](https://github.com/phpmyadmin/phpmyadmin/commit/e97d82061d390bb2b3d8104861e93ba578028a30)
- [b5677a9c6a - Disable automatic final new lines for *.twig files using .editorconfig](https://github.com/phpmyadmin/phpmyadmin/commit/b5677a9c6a32a7cb238628aa0ce7e127409401ae)
- [4bc4a44078 - Add a ChangeLog entry for #14340](https://github.com/phpmyadmin/phpmyadmin/commit/4bc4a440781ca526743b3227af9040bd648c82ed)
- [5fcac2fa9d - Merge #15365 - #14340 - Add a button on Export Page to show SQL Query](https://github.com/phpmyadmin/phpmyadmin/commit/5fcac2fa9d1c67a93f582093cff95ab3e29075e7)
- [3174048943 - Merge #15248 - #15247 exit handing in the codebase](https://github.com/phpmyadmin/phpmyadmin/commit/3174048943f3fdc2835a5d4b9feeb13ab3509738)
- [d75b83d452 - Fix #15247 - Move and rename the exit for sendResponseForGridEdit to getResponseForGridEdit](https://github.com/phpmyadmin/phpmyadmin/commit/d75b83d4525c8ddbed07ab8357fb65e014a699b5)
- [c2232357fe - Add phpMyAdmin repository](https://github.com/docker-library/official-images/commit/c2232357fecd559e945bf05db67977e165870347)
- [cc3fa5a366 - Change encoding of sv.po from windows-1252 to UTF-8](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/cc3fa5a366baa5793d310e2527038e9539bf2bb1)

## Fifth week (31)

I cleaned up the release and vendor bundles (removing CODE_OF_CONDUCT, DCO, .browserslistrc and .editorconfig), fixed the sorting by column header with SignON auth and the primary/replica links on the replication page. On the docker repository I improved the UPLOAD_LIMIT documentation. And I did the Debian packaging of mariadb-mysql-kbs 1.2.10-3.

- [ca6ee4298a - Translated using Weblate (French)](https://github.com/phpmyadmin/phpmyadmin/commit/ca6ee4298a67149f48b3c82bc63bfbcc7c5b10f3)
- [14bd9a1f2e - Remove CODE_OF_CONDUCT.md and DCO from released bundles](https://github.com/phpmyadmin/phpmyadmin/commit/14bd9a1f2e3b97e49ef9067ab3dc4a1b809d4419)
- [b9ed4e6990 - Remove .browserslistrc from released bundles](https://github.com/phpmyadmin/phpmyadmin/commit/b9ed4e6990f74476088aba86860ff630b7858d9f)
- [4703f472fd - Remove HHVM from build.xml](https://github.com/phpmyadmin/phpmyadmin/commit/4703f472fd002ff4049a572a962ef003d7a55c1e)
- [6581bd0a59 - Use --no-coverage instead of a custom phpunit config file](https://github.com/phpmyadmin/phpmyadmin/commit/6581bd0a593ae7d2132784f5c1f554df4a3acfe8)
- [1a54a0e4e8 - Exclude .browserslistrc from vendor bundles](https://github.com/phpmyadmin/phpmyadmin/commit/1a54a0e4e8525f733da4114425c0cdce152e5101)
- [4f42cc8695 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/4f42cc8695ec5576fc55c429ef5b7c5016563e81)
- [a567fbcd48 - Merge branch 'QA_4_9' into QA_5_0](https://github.com/phpmyadmin/phpmyadmin/commit/a567fbcd48d03d34ffafb4179cfaa2dad3135993)
- [84ff004c0f - Add a ChangeLog entry for #16058](https://github.com/phpmyadmin/phpmyadmin/commit/84ff004c0ff7cab6cd7340f2e7eae13febf679f9)
- [ec3d1d7c14 - Exclude .vscode in .gitignore](https://github.com/phpmyadmin/phpmyadmin/commit/ec3d1d7c146546ad8d987231e7acbea943fcc671)
- [bc30994d6f - Exclude .editorconfig and DCO from vendor bundles](https://github.com/phpmyadmin/phpmyadmin/commit/bc30994d6fb6acf7a45b18b23b2cc87199dea951)
- [3641d26f04 - Remove ['extension'] from config documentation ](https://github.com/phpmyadmin/phpmyadmin/commit/3641d26f044fc01609452dcedfb974336b088823)
- [f5440f8c76 - Fix #16058 - Update examples](https://github.com/phpmyadmin/phpmyadmin/commit/f5440f8c763f24fa88cbb052681cedaf1f2765ef)
- [e9b1a560f9 - Move Git tests to GitTest](https://github.com/phpmyadmin/phpmyadmin/commit/e9b1a560f91db316b11109231a28cfcfedf938cf)
- [96797ab79b - Fix #16058 - Clicking on table header don't sort by fieldname when using SignON Auth](https://github.com/phpmyadmin/phpmyadmin/commit/96797ab79b0801808e595ae293b1804a41161e04)
- [b3bf635c21 - Add a ChangeLog entry for #15367](https://github.com/phpmyadmin/phpmyadmin/commit/b3bf635c219a8075c244e0b217127d187c852660)
- [1f9ef1ffb9 - Fix #15367 - First replica links, start, stop, ignore links](https://github.com/phpmyadmin/phpmyadmin/commit/1f9ef1ffb96abd2146873e087a59706e76007283)
- [79bcc06a96 - Add a ChangeLog entry for #15367](https://github.com/phpmyadmin/phpmyadmin/commit/79bcc06a969ace711baee22d932321e40819576a)
- [facdc773bd - Fix #15367 - "Change or reconfigure primary server" link](https://github.com/phpmyadmin/phpmyadmin/commit/facdc773bd50c2d464446c5a7a3be410de268375)
- [bcf21c4081 - Merge branch 'QA_5_0'](https://github.com/phpmyadmin/phpmyadmin/commit/bcf21c4081232df1bb77a076a3ff551ee7d7b40c)
- [39cec98bb5 - Use fences for pseudo regex example of #297](https://github.com/phpmyadmin/docker/commit/39cec98bb53d9d04799e440b06c3c05cb9b01a7e)
- [300ade5226 - Merge #297 - Improve UPLOAD_LIMIT documentation](https://github.com/phpmyadmin/docker/commit/300ade5226e9e795a29cfb8bd3d65c22dd1e869c)
- [c54452c5f9 - Fix automatic dependencies resolving](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/c54452c5f914bdbf30bb90ee3cffd64e04a28975)
- [b89314bd59 - Add changelog entries for 1.2.10-3](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/b89314bd59f21cf5f53c2d05def82697ff398d20)
- [50f9007b8e - Fix automatic dependencies](https://salsa.debian.org/phpmyadmin-team/mariadb-mysql-kbs/-/commit/50f9007b8e0d3b9b1023b200c02e8bfd8a53ebc2)

