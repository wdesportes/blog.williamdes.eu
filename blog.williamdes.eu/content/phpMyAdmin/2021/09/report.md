+++
title = "Report for September 2021"
date = 2021-08-30T12:00:00Z
updated = 2021-09-23T23:50:00+02:00
category = "phpMyAdmin - reports"

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"

[taxonomies]
tags = ["phpMyAdmin", "OSS-report"]
+++

Here is my phpMyAdmin report for September 2021.

<!-- more -->

## First week (35)

### Monday (30/08/2021)

Today I finished working on the pmadb bug fixing. Wrote 7 changelog entries for it !
I also did merge a pull-request.

### Tuesday

Today I sorted out a lof of old issues.
And finished a merge of QA into master, updating the proper baselines.

### Wednesday, Thursday, Friday, Saturday, Sunday

__off__

## Second week (36)

__not working on the project__

## Third week (37)

__not working on the project__

## Fourth week (38)

__not working on the project__

## Fifth week (39)

__not working on the project__

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 35

- [8fdef86a89 - Update phpstan & phpstan baseline](https://github.com/phpmyadmin/phpmyadmin/commit/8fdef86a8975b0ee88bff2ea69c7eb60592dcadc)
- [aca838370c - Add ChangeLog entries for #16693 and #12753](https://github.com/phpmyadmin/phpmyadmin/commit/aca838370c7a736a7bca73e4b45c83c67d93c7c2)
- [68206dbac7 - Merge #17089 - Fix #16693, Fix #12753 - Show the new column query and the table structure on the same page](https://github.com/phpmyadmin/phpmyadmin/commit/68206dbac74f8f06421707905c93e01328af0c3a)

### Week 36

- [fe884f4547 - Update phpstan and phpstan baseline](https://github.com/phpmyadmin/phpmyadmin/commit/fe884f4547534b6f4e09a3397a767c6348a32204)

## phpmyadmin/sql-parser (GitHub)

### Week 35

- [1db358c64c - Disable all default extensions except mbstring on PHP CIs](https://github.com/phpmyadmin/sql-parser/commit/1db358c64cf7d78b53ccb06631fa66df946fd2e9)
- [2bf4eb1cde - Ignore coding standard PHP 8.1 errors and update phpstan](https://github.com/phpmyadmin/sql-parser/commit/2bf4eb1cde701f12f2b720ca34b4ba743e281f10)
- [a2122882f9 - Add PHP 8.1 composer arguments as other libs are not yet compatible](https://github.com/phpmyadmin/sql-parser/commit/a2122882f9c84163cb85d8595b216a2ce1e52386)
- [dd2f634b99 - Set PHP 8.1 to official/non failing mode and prepare for 8.2](https://github.com/phpmyadmin/sql-parser/commit/dd2f634b9918ef7986783b324c734016ef7d2f09)
- [ed900e5b21 - Use fully qualified syntax for "#[\ReturnTypeWillChange]"](https://github.com/phpmyadmin/sql-parser/commit/ed900e5b219b13c62dd260fd03ff65c31723d385)

### Week 36

- [eab0f93513 - Add required extensions for phpunit and phpcs to work on CI](https://github.com/phpmyadmin/sql-parser/commit/eab0f935132c27447731a92fde496d5fa48ee4bf)
- [a7f41d7f3a - Add curl and tokenizer extension for composer and testing code to work on CI](https://github.com/phpmyadmin/sql-parser/commit/a7f41d7f3abb48a48929d5f1c66147bf01831485)
- [7961c1c3d8 - Add json extension for composer and testing code to work on CI](https://github.com/phpmyadmin/sql-parser/commit/7961c1c3d89cb48dfd857b82396e54b8811e9b8a)
- [eabb78dac9 - Add phar extension for composer to work on CI](https://github.com/phpmyadmin/sql-parser/commit/eabb78dac981503404eb4e6f8a244ae1754b2ffd)
- [eb5e3cf58e - Enable php nightly on test matrix](https://github.com/phpmyadmin/sql-parser/commit/eb5e3cf58e2b9855085c626a3b2bde3a82143e00)

### Week 37

- [1daa8283c3 - Add a ChangeLog entry for #341](https://github.com/phpmyadmin/sql-parser/commit/1daa8283c3b141a3a0f29a4231d891b32f0c4e97)
- [34abcd3f97 - Update out files after #341](https://github.com/phpmyadmin/sql-parser/commit/34abcd3f97ae45c304222a7d4ea3f95f399571dd)
- [ed38f164a4 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/ed38f164a42717f053371414ace097760dcbbcf6)
- [c15837042d - Add a ChangeLog entry for #341](https://github.com/phpmyadmin/sql-parser/commit/c15837042d383ef735ea17735e7d1f82c4b54b3b)
- [0b43c26356 - Merge #355 - Fix #341 - Fixing validation exception when using enforced option](https://github.com/phpmyadmin/sql-parser/commit/0b43c26356d4f2894102dad8c0b6ff0353d5ed33)
- [c19fd32160 - Update out files after #348](https://github.com/phpmyadmin/sql-parser/commit/c19fd321607cfe2eb34a71f1fcf66e59c29c3749)
- [02762c1b63 - Merge branch 'QA'](https://github.com/phpmyadmin/sql-parser/commit/02762c1b638d10e97a750ef96e1afbcf70487df4)
- [b8fc4f9d2c - Add a ChangeLog entry for #348](https://github.com/phpmyadmin/sql-parser/commit/b8fc4f9d2c87eee7ddee6deb33ec4a4a449ef81e)
- [45a5c602a5 - Merge #354 and #349 - Fix #348 - Fixing missing KEY options for MySQL and MariaDB](https://github.com/phpmyadmin/sql-parser/commit/45a5c602a51497f49d6b6137683a81cee5bc86ed)

# Handled issues

## phpmyadmin/phpmyadmin (GitHub)

### Week 35

- [#17094 - How do I apply a "fix"?](https://github.com/phpmyadmin/phpmyadmin/issues/17094)
- [#16693 - Can't see SQL after adding new column in 5.1.0](https://github.com/phpmyadmin/phpmyadmin/issues/16693)
- [#12753 - Show structure after alter table query](https://github.com/phpmyadmin/phpmyadmin/issues/12753)

### Week 38

- [#17109 - Php extensions in Moodle 3.10.2](https://github.com/phpmyadmin/phpmyadmin/issues/17109)

## phpmyadmin/sql-parser (GitHub)

### Week 37

- [#348 - Missing KEY options](https://github.com/phpmyadmin/sql-parser/issues/348)
- [#341 - Perfectly valid CHECK constraint on MySQL query throws a validation exception](https://github.com/phpmyadmin/sql-parser/issues/341)

