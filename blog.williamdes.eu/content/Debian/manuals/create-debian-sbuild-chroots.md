+++
title = "Setup Debian sbuild chroots"
date = 2023-01-18T12:40:00+00:05
updated = 2023-01-21T14:32:00+00:05

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "Setup Debian sbuild chroots"
keywords = ["debian-manual", "sbuild"]
category = "Manual"
images = []


[taxonomies]
tags = ["debian-manual", "sbuild"]
+++

Creating [sbuild](https://wiki.debian.org/sbuild) chroots for Debian package testing

<!-- more -->

This is how to setup sbuild chroots for Debian packaging.

The [Debian wiki](https://wiki.debian.org/sbuild) explains this already pretty good.

But here is how I use and setup my chroots.

## Setup the chroots

### Normal chroot

```sh
sudo sbuild-createchroot --include=eatmydata,ccache bullseye /srv/chroot/bullseye-amd64-sbuild http://ftp.fr.debian.org/debian
```

### Experimental chroot

Create the chroot:

```sh
sudo sbuild-createchroot --chroot-prefix=experimental --extra-repository='deb http://deb.debian.org/debian experimental main' --include=eatmydata,ccache bullseye /srv/chroot/experimental-amd64-sbuild http://ftp.fr.debian.org/debian
```

Make sure the packages in backports are preferred above the original ones:

```sh
sudo sbuild-shell source:experimental-amd64-sbuild
echo "Package: *\nPin: release a=experimental\nPin-Priority:900" > /etc/apt/preferences.d/experimental.pref
exit
```

### Backports chroot

Create the chroot:

```sh
sudo sbuild-createchroot --chroot-prefix=bullseye-backports --extra-repository='deb http://deb.debian.org/debian bullseye-backports main' --include=eatmydata,ccache bullseye /srv/chroot/bullseye-backports-amd64-sbuild http://ftp.fr.debian.org/debian
```

Make sure the packages in backports are preferred above the original ones:

```sh
sudo sbuild-shell source:bullseye-backports-amd64-sbuild
echo "Package: *\nPin: release a=bullseye-backports\nPin-Priority:900" > /etc/apt/preferences.d/bullseye-backports.pref
exit
```

More about this on this [blog post](https://aerostitch.github.io/linux_and_unix/debian/sbuild_with_experimental_distribution.html)

## Use the chroots

```sh
cd /home/user/packages/my-package
# Normal dist
sbuild -d bullseye
# Backports dist
sbuild -d bullseye-backports
```

### List chroots

```sh
schroot -l
```

### Remove a chroot

```sh
rm -r /srv/chroot/experimental-amd64-sbuild
# Find config the file and remove it
rm /etc/schroot/chroot.d/experimental-amd64-sbuild-F28TrU
rm /etc/sbuild/chroot/experimental-amd64-sbuild
```
