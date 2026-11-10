# Consulting Services for phpMyAdmin

## Report - August 2026

## Overview

In August I did some issues triage, and spent most of the time on the Debian packaging
of phpMyAdmin.

## First week (32)

I worked on the Debian package of phpMyAdmin: bumped the Standards-Version to 4.7.4 and
the copyright years, fixed the snapshot watch file, and relaxed the psr/http-message
dependency so it accepts v1.1 as well as v2.

I also made create-release.sh publish the full version in the daily snapshot JSON,
read from libraries/classes/Version.php. Until then that JSON carried only the date
and the commit, so Debian's snapshot watch file had to hardcode the release number.
It can now take the version from the JSON itself, which lets `uscan` import a
snapshot under the version it really is — 5.2.4-dev+20260809.e0909b211b mangling to
5.2.4~dev~git20260809.e0909b211b+dfsg, below the eventual 5.2.4 but above the
shipped 5.2.3 — and the number follows the branch on its own.

## Second week (33)

I continued on the Debian package. I added a DEP-8 test reproducing the dbconfig-common
password-policy failure and asserted the root cause, imported a new upstream snapshot
(5.2.4~dev) and replaced the bundled jquery.validate.js with node-jquery-validation.

I also did some cleanup on motranslator (Standards-Version, and removing fields that are
now the default).

# Commit list

## phpmyadmin/phpmyadmin (GitHub)

### Week 32

- [e0909b211b - create-release.sh: publish version in daily snapshot JSON](https://github.com/phpmyadmin/phpmyadmin/commit/e0909b211ba785dfa54f038fc25771f067ce2255)

## phpmyadmin-team/phpmyadmin (GitLab)

### Week 32

- [99b88bc3c9 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/99b88bc3c92cc7e1ad613699bd126ba34147ee51)
- [9de2919e3c - watch.snapshot: use ~dev instead of ~git for snapshot versions](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/9de2919e3cf896be52a3265fefb1daf5f9d017fb)
- [fdb3e14f3e - Bump upstream team copyright](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/fdb3e14f3ed9af69f3d9f8537dcdd3f1b9c39218)
- [68eb44ee09 - Bump my d/copyright](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/68eb44ee095b6deb5cb61e38f4cef289adbf331b)
- [90a79eed6b - Bump Standards-Version to 4.7.4](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/90a79eed6b1cb6b5a9e0586a0aa9e3cbd95cdbb3)
- [bacf8ea4ec - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/bacf8ea4ec1d78be39a51eda4e22756a0ae68b3c)
- [e9204f6743 - Support psr/http-message v1.1 and v2 instead of requiring v2](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e9204f6743a1ac72b2878f976dcf56daf5bbcd64)
- [bf060cfa36 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/bf060cfa36f06468d8265f4d63b4c6d9ed0bbc75)
- [946c25c047 - dbconfig: do not abort the 4.5.0.1 upgrade on an already-applied migration](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/946c25c04728a3ea715a836ba5094a17d10ee794)
- [51a60c1d23 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/51a60c1d236b08409aee9f99058a3762a79ac32f)
- [e30752ca14 - Add DEP-8 test reproducing the dbconfig upgrade-script failure](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/e30752ca1457640c960cb02cb4cc01963c72a41f)
- [3b5138e87d - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/3b5138e87df45a322a22c6cc6b37db9f05181afd)
- [aa580b4e3d - Refresh patches](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/aa580b4e3d6b8b29a957ea659a615df368dc06eb)
- [2017d75c4b - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2017d75c4b016f685aabb52202167381347f5fba)
- [3c44dd6d2b - Update upstream source from tag 'upstream/5.2.4_git20260809.e0909b211b+dfsg'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/3c44dd6d2b25e311a400e2702d9eb2353308b701)
- [d549de153a - New upstream version 5.2.4~git20260809.e0909b211b+dfsg](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d549de153ad9214e072895483ffc6852e83bb1ea)
- [41f41c5317 - Add debian/watch.snapshot for importing 5.2 dev snapshots](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/41f41c5317d92060ee1df333796091fdb0b95f0f)
- [b630873907 - Migrate debian/watch to version 5 format](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/b6308739076cdc8afeadd2b369783ba6b63ab0d1)

### Week 33

- [69ab44e092 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/69ab44e092655d306da82b6cac4599928fe9c1f3)
- [61d219dddd - dbconfig-password-policy test: assert the ERROR 1819 root cause](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/61d219ddddae47a0cd3fb1dcd9b937786d928694)
- [61213800f7 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/61213800f7ba277e9418c475e3e20ded6bb57635)
- [155f82224f - Add DEP-8 test reproducing the dbconfig-common password-policy failure](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/155f82224f42278f689e7e9e2757d4331bc877c2)
- [46d415556d - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/46d415556d6909601cd9075c6912780821f93c5c)
- [2c29f61a13 - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/2c29f61a13f8a0e5990c28cb6835298347ff0352)
- [d4b1f60788 - watch.snapshot: use ~dev~git for snapshot versions](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/d4b1f60788f98ff8e92d99aec0e5f60468795919)
- [ce47896eff - d/ch](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/ce47896eff8df4dcaa3d85c71c772b0ce7d364dc)
- [04ed952bec - Update upstream source from tag 'upstream/5.2.4_dev+20260809.e0909b211b+dfsg'](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/04ed952bec6affb0031eb36214beccb9bc4eb38d)
- [93aa5ffc80 - New upstream version 5.2.4~dev+20260809.e0909b211b+dfsg](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/93aa5ffc80262cc1d0dcd71207dbe02412e6fbbb)
- [847121c677 - Update upstream copyright of Jörn Zaefferer for jquery.validate.js](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/847121c67754719dc35504010052a2a5ad6ff281)
- [04e9a9403f - Replace jquery.validate.js with node-jquery-validation](https://salsa.debian.org/phpmyadmin-team/phpmyadmin/-/commit/04e9a9403f6ba14adf126c609cab2e6d5e185b9c)

## phpmyadmin-team/motranslator (GitLab)

### Week 33

- [b66d34306c - Bump Standards-Version to 4.7.4](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/b66d34306cbe8c3728332100e4ea8b61a91999fd)
- [90ed96e284 - Remove now default Priority: optional](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/90ed96e284eea3e98df6dd9b3469213f60452c0b)
- [8e80a6745c - Remove now default Rules-Requires-Root: no](https://salsa.debian.org/phpmyadmin-team/motranslator/-/commit/8e80a6745ca28a035ef3ede52f1dd0bf4454ec90)

