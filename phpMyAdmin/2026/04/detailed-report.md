# Consulting Services for phpMyAdmin

## Report - April 2026

## Overview

In April I worked on modernizing the sql-parser tests and CI, merged and reviewed a lot of
contributions in phpMyAdmin, improved MariaDB compatibility, and did some issues triage.

## First week (14)

I worked on sql-parser: I migrated the tests to PHPUnit attributes, added a native type
hint, made the data providers static, and refreshed the phpstan and psalm baselines.
I merged #631 (build the insert statement using the context's quote style), #636 (desc
index lint error), #637 (formatter spacing for the JSON path operators) and #648 (bump
zumba/json-serializer), then regenerated the test data.

I also bumped the CI: ramsey/composer-install to v4, codecov-action to v6 using the token
method, added the missing workflow permissions, and updated the coding-standard,
motranslator, phpstan, psalm and phpbench tools. On Scrutinizer I had to update the base
image and composer, and psalm needed a newer PHP.

In motranslator I updated the Scrutinizer base image and the PHP version for psalm, and
bumped the GitHub actions. Same for shapefile.

## Second week (15)

I merged contributions after reviewing them. This week's phpMyAdmin merges include: skipping
the locale directory assertion when the folder is missing (#20268), reducing the
simulate-query memory usage (#20238, #18941), skipping the user link for non-real users in
the processes list (#20259, #19842), the drag & drop difference between Firefox and
Chromium (#20189, #18557), removing the dead Suhosin warning (#20167, #19912), adding the
missing length validation when changing a column type (#20267, #19338), fixing the sliding
message container overlapping the page content (#20269, #20064), fixing the export for raw
queries without a table reference (#20266, #20041), adding a SQL button to the database list
(#20210), and updating create-release.sh with the files to exclude (#20250, #20007).

I also fixed the TOON export for the normal user (#20275), made the CSV import turn empty
values into NULL (#19381), removed getInnodbPluginVersion() and refactored
getInnodbFileFormat() for MariaDB compatibility (#18204), and improved the drag & drop to
accept application/x-moz-file.

For sql-parser I merged the Weblate translations, removed the extra spaces in the new 6.x
tests, and fixed #609 (attempt to read property "keyword" on null).

I also did some issues triage, including the demo servers being out of disk space and not
updated since December 2024.

## Third week (16)

A quieter week: I upgraded phpstan to 2.1.47.

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 15

- [900480ebd1 - Merge #20268 - Fix #20110 - Skip locale directory assertion when folder is missing](https://github.com/phpmyadmin/phpmyadmin/commit/900480ebd17aee092728349c7d4da69b6518d5fd)
- [7ba1db3daf - Add a missing new line for drag drop](https://github.com/phpmyadmin/phpmyadmin/commit/7ba1db3dafed82749a24fb8576aff396b9f348d6)
- [33c5a2293a - Merge #20238 - Fix #18941 - Reduce simulate-query memory](https://github.com/phpmyadmin/phpmyadmin/commit/33c5a2293a2fc1de15f19065ea40a513ef41bdf1)
- [43fd19b79e - Fix #20275 - TOON export should use the normal user](https://github.com/phpmyadmin/phpmyadmin/commit/43fd19b79ea63798a5dfc10f8cd5c97fff54edbb)
- [2c03905eea - Merge #19802 - Fix #19381 - Implement csv empty to null](https://github.com/phpmyadmin/phpmyadmin/commit/2c03905eeafdd096c85b89aad863aaca18637ff5)
- [9d2f4c7247 - Merge #20262 - Fix #18204 - Remove getInnodbPluginVersion() and refactor getInnodbFileFormat() for MariaDB compatibility](https://github.com/phpmyadmin/phpmyadmin/commit/9d2f4c7247b0afb1d068bcd45d62b1d96f0b10e5)
- [fa168ab7a3 - Add tests for #20262](https://github.com/phpmyadmin/phpmyadmin/commit/fa168ab7a3f10f6de340bff0e4251ccdb3efc772)
- [03ef236b57 - Improve: Specifically allow application/x-moz-file as a drag and drop valid case](https://github.com/phpmyadmin/phpmyadmin/commit/03ef236b57df9ec3c1fc6ee9be20360cffdd9959)
- [84c971aaa3 - Fixup of: Specifically allow application/x-moz-file as a drag and drop valid case](https://github.com/phpmyadmin/phpmyadmin/commit/84c971aaa36a46e685a1a468a7bff34a87fd6f87)
- [559d94d7aa - Specifically allow application/x-moz-file as a drag and drop valid case](https://github.com/phpmyadmin/phpmyadmin/commit/559d94d7aafd4111950850d5b0b946205411ac61)
- [10fc2a46b2 - Merge #20259 - Fix #19842 - skip user link for non-real users in processes list](https://github.com/phpmyadmin/phpmyadmin/commit/10fc2a46b2a6d6754cc66af9400fd0c8c263fffc)
- [2e1b85ae52 - Merge #20189 - Fixes #18557 - Drag & drop difference between Firefox & Chromium browsers](https://github.com/phpmyadmin/phpmyadmin/commit/2e1b85ae528a266de92068c6f32127f7f9e48a87)
- [10093ffb2e - Merge #20167 - Fixes #19912 - remove the dead Suhosin warning](https://github.com/phpmyadmin/phpmyadmin/commit/10093ffb2e9595280c702942ca663e4ab97285ed)
- [2cb227f125 - Merge #20267 - Fix #19338 - Add missing length validation when changing column type](https://github.com/phpmyadmin/phpmyadmin/commit/2cb227f12544c071e27d687bd51274d1f65eb0cc)
- [c6a7f7f9e9 - Merge #20269 - Fix #20064 - Fix sliding message container overlapping page content](https://github.com/phpmyadmin/phpmyadmin/commit/c6a7f7f9e93994b6bdb7ecad330b4e42ac959947)
- [0eab757cba - Merge #20266 - Fix #20041 - Fix export for raw queries without table reference](https://github.com/phpmyadmin/phpmyadmin/commit/0eab757cba80d04f3e0bfdfb0c8f0293d963254a)
- [cea7654274 - Merge #20210 - Add a SQL button to the database list](https://github.com/phpmyadmin/phpmyadmin/commit/cea76542743e8aaac9836fa781368a49f017b34d)
- [1e80398521 - Merge #20250 - Fix #20007 - Update create-release.sh with file to be excluded](https://github.com/phpmyadmin/phpmyadmin/commit/1e80398521e6892d4ebc2c0063ef979244665ba9)

- [498a1a3353 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/498a1a3353254e878b16469b2cb895c19e7fcd44)
- [be412170f7 - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/be412170f7e320d28ca8dfe6b972f84cef247d37)
- [aad16a108c - Merge branch 'QA_5_2'](https://github.com/phpmyadmin/phpmyadmin/commit/aad16a108c51205e292610e2d38d0a588f5279bd)
### Week 16

- [ad78a577c0 - Merge #20283 - Upgrading phpstan/phpstan (2.1.41 => 2.1.47)](https://github.com/phpmyadmin/phpmyadmin/commit/ad78a577c088101f94a50bcd297ee5d4becf3e99)

## phpmyadmin/sql-parser (GitHub)

### Week 14

- [5be4eed281 - Use phpunit attributes](https://github.com/phpmyadmin/sql-parser/commit/5be4eed281dcbd189ed2f01e44aaee89beb059b6)
- [dffcaea3f6 - Use a native type hint in InsertStatementTest](https://github.com/phpmyadmin/sql-parser/commit/dffcaea3f64fe5c69388c984ae5cbc3c40edbb99)
- [3e9ce57f49 - phpunit data providers must be static](https://github.com/phpmyadmin/sql-parser/commit/3e9ce57f4944e66d7b50c62632e56d74f6f983f5)
- [128db9aac1 - Update phpstan and psalm baselines](https://github.com/phpmyadmin/sql-parser/commit/128db9aac19580740b4271eadb03f087eaaa4eae)
- [cefa8027ad - Fix after #631](https://github.com/phpmyadmin/sql-parser/commit/cefa8027ad798f49ce2a802734666cd5b0ffd856)
- [0195e948ab - Merge #631 - Build insert statement with context's quote style](https://github.com/phpmyadmin/sql-parser/commit/0195e948ab403f52aecfc319061c98cc3d91d8dd)
- [5b68e01612 - Merge #636 - Fix #592 - desc index lint error](https://github.com/phpmyadmin/sql-parser/commit/5b68e0161205200dfd9169b98648b02ad1bd3d97)
- [16e7632e34 - Regenerate the test data](https://github.com/phpmyadmin/sql-parser/commit/16e7632e346680c84e21a814d4a679e1f8e446b1)
- [0df2427867 - Bump ramsey/composer-install to v4](https://github.com/phpmyadmin/sql-parser/commit/0df242786716bfe68023a05ed26a9c22f5c04a22)
- [8d57493b1d - Bump codecov/codecov-action to v6](https://github.com/phpmyadmin/sql-parser/commit/8d57493b1d454805145f18cfdefe8ea3461e8dc7)
- [4562caff68 - Add missing permissions to GitHub workflows](https://github.com/phpmyadmin/sql-parser/commit/4562caff685140c43c9ac8963f9172c0d135cf0a)
- [fe8e3bfc6d - Bump action and setup codecov using the token method](https://github.com/phpmyadmin/sql-parser/commit/fe8e3bfc6dbd3ad276cb09f4c99c2162ff703143)
- [18730fb735 - Bump phpmyadmin/coding-standard and phpmyadmin/motranslator](https://github.com/phpmyadmin/sql-parser/commit/18730fb735756e33ecca58c90a20a8507e8f29ec)
- [1f813cf4e1 - Bump phpstan, psalm and phpbench tools](https://github.com/phpmyadmin/sql-parser/commit/1f813cf4e1c881a790b319037a9dfa8b8f6f0412)
- [3a89a2abf0 - Update phpstan and psalm baselines](https://github.com/phpmyadmin/sql-parser/commit/3a89a2abf05a820d475656d96112614c518ef706)
- [9433e807c2 - vimeo/psalm needs a newer version of PHP on Scrutinizer](https://github.com/phpmyadmin/sql-parser/commit/9433e807c2b75295552f5601d37d9271b0ef8ec1)
- [caf66936b4 - Merge #637 - Fix formatter spacing for JSON path operators (->, ->>)](https://github.com/phpmyadmin/sql-parser/commit/caf66936b4b036569482270cf20fd0bfeb0c5e67)
- [018f3471b3 - Update composer to version 2 on Scrutinizer](https://github.com/phpmyadmin/sql-parser/commit/018f3471b3121d2e9281a98fb5988886bee53b65)
- [36d2ded4c9 - Merge #648 - Bump zumba/json-serializer version to ^3.2](https://github.com/phpmyadmin/sql-parser/commit/36d2ded4c916c38059975ccca1678ea240c4f70e)
- [83886f689d - Update the Scrutinizer base image for PHP 7.2 to work](https://github.com/phpmyadmin/sql-parser/commit/83886f689db6a50a7f977c8a671276bf1806b210)

- [e49cb36738 - Merge branch '5.11.x'](https://github.com/phpmyadmin/sql-parser/commit/e49cb367381b61eb355984273643a61080f17c50)
- [ebb943e1db - Merge branch '5.11.x'](https://github.com/phpmyadmin/sql-parser/commit/ebb943e1db28c76a7edcdcbdc507c9af972855f9)
- [c77153ace0 - Merge branch '5.11.x'](https://github.com/phpmyadmin/sql-parser/commit/c77153ace0591c852f06ac41fe84d82bfffe81c5)
- [95fc9a8450 - Merge branch '5.11.x'](https://github.com/phpmyadmin/sql-parser/commit/95fc9a845047fc2319a126fb8d5709b9f17374f9)
- [ff34d9d084 - Merge branch '5.11.x'](https://github.com/phpmyadmin/sql-parser/commit/ff34d9d084fa57e21a5330aa86f42b81110d1cb6)
- [53c0ef8013 - Merge branch '5.11.x'](https://github.com/phpmyadmin/sql-parser/commit/53c0ef8013efaf2d80fcef04d41014075d881622)
- [2938e1f1e5 - Merge branch '5.11.x'](https://github.com/phpmyadmin/sql-parser/commit/2938e1f1e551eceacd2cd8e74eb0d94fd5aec93d)
### Week 15

- [2c63257412 - Merge Weblate](https://github.com/phpmyadmin/sql-parser/commit/2c632574127e57b9fcf69231807efb5fecda86ae)
- [421432ce03 - Remove spaces from the new tests for 6.x](https://github.com/phpmyadmin/sql-parser/commit/421432ce038d0c89281a0d3b7a51b0d7fbed2061)
- [4c45eac1c2 - Fix #609 - Attempt to read property "keyword" on null](https://github.com/phpmyadmin/sql-parser/commit/4c45eac1c2c743a3128df542f7bcf37339adb071)

- [1c897fd596 - Merge branch '5.11.x'](https://github.com/phpmyadmin/sql-parser/commit/1c897fd596a131c97b60f376a03890eff89c06c6)
## phpmyadmin/motranslator (GitHub)

### Week 14

- [b18bf67b7e - Update the base image for Scrutinizer and the PHP version for psalm](https://github.com/phpmyadmin/motranslator/commit/b18bf67b7e81ec973129407ad440b0290c56518f)
- [0da4abeb1f - Bump GitHub actions](https://github.com/phpmyadmin/motranslator/commit/0da4abeb1fef0819af7e418e58a21ed874b46ef6)

- [3bebdb35be - Merge branch '6.0.x'](https://github.com/phpmyadmin/motranslator/commit/3bebdb35bedbd565b621364c3d471f1f54120c95)
- [6d1baed310 - Merge branch '6.0.x'](https://github.com/phpmyadmin/motranslator/commit/6d1baed310aff5b67c907061f730b98b92684f8b)
## phpmyadmin/shapefile (GitHub)

### Week 14

- [04a5812fa2 - Bump GitHub actions](https://github.com/phpmyadmin/shapefile/commit/04a5812fa2893147777233710b556a229337dcc7)

# Handled issues
* [#19911 Demo sites aren't working correctly](https://github.com/phpmyadmin/phpmyadmin/issues/19911)
* [#19924 phpMyAdmin's Demo Website is out of space](https://github.com/phpmyadmin/phpmyadmin/issues/19924)
* [#18400 Confirm modal for show all rows isn't visible](https://github.com/phpmyadmin/phpmyadmin/issues/18400)
* [#20041 [Bug]: Export raw query doesn't work due to missing db param in /table/export](https://github.com/phpmyadmin/phpmyadmin/issues/20041)
* [#20064 [6.0]: Routines container fails to push downward during SQL editing](https://github.com/phpmyadmin/phpmyadmin/issues/20064)
* [#18923 Elements aren't moving when editor is resized on Routines, Events, Triggers](https://github.com/phpmyadmin/phpmyadmin/issues/18923)
* [#19338 'Please enter a valid length!' doesn't show up when changing existing column](https://github.com/phpmyadmin/phpmyadmin/issues/19338)
* [#19912 [Feat]: Remove Suhosin support and warnings](https://github.com/phpmyadmin/phpmyadmin/issues/19912)
* [#18557 Drag and drop difference between Firefox and Chromium browsers](https://github.com/phpmyadmin/phpmyadmin/issues/18557)
* [#19842 [Bug]: Processes list should not link to non-users](https://github.com/phpmyadmin/phpmyadmin/issues/19842)
* [#18204 Unknown system variable 'innodb_version' since MariaDB 10.10](https://github.com/phpmyadmin/phpmyadmin/issues/18204)
* [#19381 Make empty values NULL when importing a CSV file](https://github.com/phpmyadmin/phpmyadmin/issues/19381)
* [#20110 [6.0]: PHPUnit test fails because of missing locale folder on Windows](https://github.com/phpmyadmin/phpmyadmin/issues/20110)
* [#19735 .](https://github.com/phpmyadmin/phpmyadmin/issues/19735)
* [#20275 [6.0]: TOON export doesn't work on demo server](https://github.com/phpmyadmin/phpmyadmin/issues/20275)
* [#17896 Cannot alter Time portion of timestamp directly via grid edit](https://github.com/phpmyadmin/phpmyadmin/issues/17896)
* [#19640 Safari - Error in processing request](https://github.com/phpmyadmin/phpmyadmin/issues/19640)
* [#19590 Marquee Selection to designer](https://github.com/phpmyadmin/phpmyadmin/issues/19590)
* [#20270 .](https://github.com/phpmyadmin/phpmyadmin/issues/20270)
* [#18941 Simulate `DELETE` in a large table with million of rows gives error 500](https://github.com/phpmyadmin/phpmyadmin/issues/18941)
* [#20287 [Feat]: Change info order in tab title](https://github.com/phpmyadmin/phpmyadmin/issues/20287)
* [#193 Demo server session_write_close(): Write failed: No space left on device (28)](https://github.com/phpmyadmin/website/issues/193)
* [#192 phpMyAdmin on demo server not updated since 2024-12-18](https://github.com/phpmyadmin/website/issues/192)
* [#630 Avoid back ticks on INSERT INTO columns with mode POSTGRESQL](https://github.com/phpmyadmin/sql-parser/issues/630)
* [#609 [Query] Attempt to read property "keyword" on null](https://github.com/phpmyadmin/sql-parser/issues/609)
* [#592 Error validating index with sort order](https://github.com/phpmyadmin/sql-parser/issues/592)


## phpmyadmin/phpmyadmin (GitHub)

### Week 15

- [19911 - Demo sites aren't working correctly](https://github.com/phpmyadmin/phpmyadmin/issues/19911)
- [19924 - phpMyAdmin's Demo Website is out of space](https://github.com/phpmyadmin/phpmyadmin/issues/19924)
- [18400 - Confirm modal for show all rows isn't visible](https://github.com/phpmyadmin/phpmyadmin/issues/18400)
- [20041 - [Bug]: Export raw query doesn't work due to missing db param in /table/export](https://github.com/phpmyadmin/phpmyadmin/issues/20041)
- [20064 - [6.0]: Routines container fails to push downward during SQL editing](https://github.com/phpmyadmin/phpmyadmin/issues/20064)
- [18923 - Elements aren't moving when editor is resized on Routines, Events, Triggers](https://github.com/phpmyadmin/phpmyadmin/issues/18923)
- [19338 - 'Please enter a valid length!' doesn't show up when changing existing column](https://github.com/phpmyadmin/phpmyadmin/issues/19338)
- [19912 - [Feat]: Remove Suhosin support and warnings](https://github.com/phpmyadmin/phpmyadmin/issues/19912)
- [18557 - Drag and drop difference between Firefox and Chromium browsers](https://github.com/phpmyadmin/phpmyadmin/issues/18557)
- [19842 - [Bug]: Processes list should not link to non-users](https://github.com/phpmyadmin/phpmyadmin/issues/19842)
- [18204 - Unknown system variable 'innodb_version' since MariaDB 10.10](https://github.com/phpmyadmin/phpmyadmin/issues/18204)
- [19381 - Make empty values NULL when importing a CSV file](https://github.com/phpmyadmin/phpmyadmin/issues/19381)
- [20110 - [6.0]: PHPUnit test fails because of missing locale folder on Windows](https://github.com/phpmyadmin/phpmyadmin/issues/20110)
- [19735 - .](https://github.com/phpmyadmin/phpmyadmin/issues/19735)
- [20275 - [6.0]: TOON export doesn't work on demo server](https://github.com/phpmyadmin/phpmyadmin/issues/20275)
- [17896 - Cannot alter Time portion of timestamp directly via grid edit](https://github.com/phpmyadmin/phpmyadmin/issues/17896)
- [19640 - Safari - Error in processing request](https://github.com/phpmyadmin/phpmyadmin/issues/19640)
- [19590 - Marquee Selection to designer](https://github.com/phpmyadmin/phpmyadmin/issues/19590)
- [20270 - .](https://github.com/phpmyadmin/phpmyadmin/issues/20270)

### Week 17

- [18941 - Simulate `DELETE` in a large table with million of rows gives error 500](https://github.com/phpmyadmin/phpmyadmin/issues/18941)
- [20287 - [Feat]: Change info order in tab title](https://github.com/phpmyadmin/phpmyadmin/issues/20287)

## phpmyadmin/website (GitHub)

### Week 15

- [193 - Demo server session_write_close(): Write failed: No space left on device (28)](https://github.com/phpmyadmin/website/issues/193)
- [192 - phpMyAdmin on demo server not updated since 2024-12-18](https://github.com/phpmyadmin/website/issues/192)

## phpmyadmin/sql-parser (GitHub)

### Week 14

- [630 - Avoid back ticks on INSERT INTO columns with mode POSTGRESQL](https://github.com/phpmyadmin/sql-parser/issues/630)
- [592 - Error validating index with sort order](https://github.com/phpmyadmin/sql-parser/issues/592)

### Week 15

- [609 - [Query] Attempt to read property "keyword" on null](https://github.com/phpmyadmin/sql-parser/issues/609)
