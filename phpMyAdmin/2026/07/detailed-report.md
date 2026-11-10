# Consulting Services for phpMyAdmin

## Report - July 2026

## Overview

In July I merged and reviewed contributions, did some issues triage and kept up the
Debian packaging of our dependencies.

## First week (28)

I merged contributions after reviewing them. I also did some issues triage.
I fixed compressed columns not being detected on MariaDB, a TypeError when adding a column
without index data, and some test issues with PHPUnit 13.1. I updated the psalm baseline
and worked on the release tooling (create-release.sh and the list of release excludes).

I also made twig-i18n-extension compatible with Twig 3.26+, and migrated the motranslator
Debian watch file to version 5.

## Fourth week (31)

I sent twig-i18n-extension 5.0.2-1 to unstable, bumped the Standards-Version and dropped
the patches that are now upstream.

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 28

- [c05036387a - Merge #20344 - Partially fixes #20332 - Fix compressed columns not detected in MariaDB](https://github.com/phpmyadmin/phpmyadmin/commit/c05036387a3533694611a62a452f9a285b780a8f)
- [d76fd63766 - Merge #20360 - Fix tests issues in PHPUnit 13.1](https://github.com/phpmyadmin/phpmyadmin/commit/d76fd637662d3180e35e6a3f4aadbe41707b1fdc)
- [1a789d1c4d - Update the psalm baseline](https://github.com/phpmyadmin/phpmyadmin/commit/1a789d1c4d018509a0d4fa53f4100d938baaa51b)
- [ddd5440ec3 - Merge #20367 - Fix #18304 - Avoid TypeError when adding a column without index data](https://github.com/phpmyadmin/phpmyadmin/commit/ddd5440ec32bea9beba5eba1e1f701ec09dcdcfe)
- [331c8b15b8 - Merge #20371 - Update create-release.sh](https://github.com/phpmyadmin/phpmyadmin/commit/331c8b15b888392525a9f4a2dbe089bfb398a31e)
- [2f98fcdcf0 - Merge #20370 - Update create-release.sh](https://github.com/phpmyadmin/phpmyadmin/commit/2f98fcdcf05528f37d2e7187e23e95dd4603844b)
- [b89991087d - Add .codecov.yml to release excludes](https://github.com/phpmyadmin/phpmyadmin/commit/b89991087d75126e7b6f2c32ab5d3966caf11005)
- [e2819fe195 - Exclude .phpstorm.meta.php from release tarballs](https://github.com/phpmyadmin/phpmyadmin/commit/e2819fe195be1b3a28455839d262153e01908e71)
- [0a9362668c - Update the list of release excludes](https://github.com/phpmyadmin/phpmyadmin/commit/0a9362668c8dd65d6baf5f609102fd89dcda3479)

## phpmyadmin/twig-i18n-extension (GitHub)

### Week 28

- [6b63be09de - Make expected compiled output Twig-version-aware for 3.26+](https://github.com/phpmyadmin/twig-i18n-extension/commit/6b63be09de7e282569cd7ce9a45273fc8ee9b864)
- [6d76c49cf8 - CI: disable fail-fast in the test matrix](https://github.com/phpmyadmin/twig-i18n-extension/commit/6d76c49cf82c46ce7ce2cea8448e616706d52f36)
- [695688405a - Fix TransNode unwrap for sandbox + auto-escape (Twig 3.26+)](https://github.com/phpmyadmin/twig-i18n-extension/commit/695688405a014c6ff91616179cfa286729dd71f2)
- [eb4ba0f136 - Revert "Disallow Twig >=3.26"](https://github.com/phpmyadmin/twig-i18n-extension/commit/eb4ba0f136fc29a66285768bc57637fdeaf0dd95)

- [3e21dd906b - Merge branch '4.1.x'](https://github.com/phpmyadmin/twig-i18n-extension/commit/3e21dd906b271e10b43f1b8f4becc7c0c6d57181)
## phpmyadmin-team/twig-i18n-extension (GitLab)

### Week 31

- [9ced416f2e - Send 5.0.2-1 to unstable](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/9ced416f2e1dba38bc3a6dd675f55ee4b51828dd)
- [2611f708a4 - Bump Standards-Version to 4.7.4](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/2611f708a4ddb78ffac34ced1acbaf62b0b29b53)
- [71c245e69b - d/ch](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/71c245e69bcf1937c37726a5bd6335db3cb6856e)
- [ab1877822b - Drop patches that are now upstream](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/ab1877822b9c2cf128f787ca3d1e06d04280f75f)
- [26aaaefd63 - Update upstream source from tag 'upstream/5.0.2'](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/26aaaefd6386a52f713f296c70071d4c96565b94)
- [87ab81293e - New upstream version 5.0.2](https://salsa.debian.org/phpmyadmin-team/twig-i18n-extension/-/commit/87ab81293e5342ddbe0bc69969f15deb364a45e8)

## phpmyadmin-team/motranslator (GitLab)

### Week 28

- [72b207a468 - Filter dev files from the git-generated orig](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/72b207a46834ac65fe1f1f1d63a657c14a0246a5)
- [0fc3e00d82 - Migrate d/watch to version 5](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/0fc3e00d82824c80741f640db3d4056fab39b603)


## phpmyadmin-team/sql-parser (GitLab)

### Week 28

- [7c954f833f - Filter dev files from the git-generated orig](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/7c954f833fb228aefd27d8fe76025e9a2dd71bc7)
- [bf5aec4c7c - Migrate d/watch to version 5](https://salsa.debian.org/phpmyadmin-team/sql-parser/-/commit/bf5aec4c7c25891a9dd54fa9162c7a369aeb1ddb)

# Handled issues
* [#20381 .](https://github.com/phpmyadmin/phpmyadmin/issues/20381)
* [#18304 TypeError: json_decode(): Argument #1 ($json) must be of type string, null given](https://github.com/phpmyadmin/phpmyadmin/issues/18304)


## phpmyadmin/phpmyadmin (GitHub)

### Week 29

- [20381 - .](https://github.com/phpmyadmin/phpmyadmin/issues/20381)
- [18304 - TypeError: json_decode(): Argument #1 ($json) must be of type string, null given](https://github.com/phpmyadmin/phpmyadmin/issues/18304)
