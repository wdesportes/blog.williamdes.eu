+++
title = "Setup Debian sbuild chroots"
date = 2023-01-18T12:40:00+00:05
updated = 2023-04-25T19:52:00+00:02

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

If you have an SSD and some useless RAM, you can use tmpfs to hold some files and avoid SSD writes: [Debian wiki](https://wiki.debian.org/sbuild#sbuild_with_tmpfs_.28schroot.29)

## Share APT cache across chroots

It takes less bandwith, you can skip this if this is not an issue for you.

This mounting technique is described on [Ubuntu wiki](https://wiki.ubuntu.com/SimpleSbuild).

```sh
mkdir /var/lib/sbuild/apt-cache
sudo chown sbuild:sbuild /var/lib/sbuild/apt-cache
# Add: /var/lib/sbuild/apt-cache  /var/cache/apt/archives  none    rw,bind 0   0
# Into: /etc/schroot/sbuild/fstab
# Run a sbuild
# Check that /var/lib/sbuild/apt-cache has new files or folders
```

### Sid chroot

```sh
sudo sbuild-createchroot --extra-repository='deb http://incoming.debian.org/debian-buildd/ buildd-unstable main' --extra-repository='deb http://incoming.debian.org/debian-buildd/ buildd-sid main' --alias=sid --chroot-prefix=sid --include=eatmydata,ccache sid /srv/chroot/sid-amd64-sbuild http://ftp.fr.debian.org/debian
```

#### Update the sid chroot

```sh
sudo sbuild-shell source:sid-amd64-sbuild
apt update
apt upgrade -y
exit
```

### Normal chroot

```sh
sudo sbuild-createchroot --alias=bookworm --chroot-prefix=bookworm --include=eatmydata,ccache bookworm /srv/chroot/bookworm-amd64-sbuild http://ftp.fr.debian.org/debian
```

### Experimental chroot

Create the chroot:

```sh
sudo sbuild-createchroot --chroot-prefix=experimental --extra-repository='deb http://deb.debian.org/debian experimental main' --include=eatmydata,ccache bookworm /srv/chroot/experimental-amd64-sbuild http://ftp.fr.debian.org/debian
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
# Update the chroot
apt update
apt upgrade
exit
```

#### Early backports testing

```sh
sbuild -d bullseye-backports --extra-repository='deb http://incoming.debian.org/debian-buildd/ buildd-bullseye-backports main'
```

More about this on this [blog post](https://aerostitch.github.io/linux_and_unix/debian/sbuild_with_experimental_distribution.html)

#### Ubuntu focal chroot

```sh
sudo sbuild-createchroot \
    --extra-repository='deb http://security.ubuntu.com/ubuntu focal-security main restricted universe multiverse' \
    --extra-repository='deb http://archive.ubuntu.com/ubuntu/ focal-updates main restricted universe multiverse' \
    --alias=focal --chroot-prefix=focal --include=eatmydata,ccache \
    --components main,restricted,universe,multiverse \
    focal /srv/chroot/focal-amd64-sbuild http://archive.ubuntu.com/ubuntu/
```

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
