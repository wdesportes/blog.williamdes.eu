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

## What is a chroot

From what I understood its like some kind of "VM" that uses the host Kernel.
But that's not really that is more like an environment where the OS root directory "/" is reset to some folder on you system.

You can read more about it on [Debian wiki](https://wiki.debian.org/chroot) [fr](https://wiki.debian.org/fr/Chroot) and on [Wikipedia](https://en.wikipedia.org/wiki/Chroot)

## Setup the chroots

### Sid chroot

```sh
sudo sbuild-createchroot --alias=sid --chroot-prefix=sid --include=eatmydata,ccache sid /srv/chroot/sid-amd64-sbuild http://ftp.fr.debian.org/debian
```

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
# sid dist
sbuild -d sid
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
