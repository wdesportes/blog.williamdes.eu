+++
title = "Add a crypt data volume to Alpine 3.17"
date = 2022-05-20T00:07:00+00:02
updated = 2024-03-09T11:44:00+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "Add a crypt data volume to Alpine 3.17"
keywords = ["cryptsetup", "crypttab", "luks"]
category = "Tutorial"
images = []


[taxonomies]
tags = ["infra-tutorial", "LUKS"]
+++

Add a crypt data volume to Alpine 3.17

<!-- more -->

This is how to setup a data volume on an already configured Alpine 3.17 system.

The disk is at: `/dev/sdb`, it also could be `/dev/vdb`

### Creating partitions

You can even skip this step and use all the disk at once.
Just rename `sdb1` to `sdb` in other commands & scripts.

```sh
fdisk /dev/sdb
```

Enter the keyboard sequence:

```sh
# p
# n
# p
# 1
# ENTER
# ENTER
# p
# w
```

### Creating LUKS setup

```sh
apk add --update cryptsetup lsblk
```

### Creating the LUKS/LVM/EXT4 partition

Make the LUKS drive:

```sh
cryptsetup luksFormat --hash sha512 /dev/sdb1
cryptsetup luksOpen /dev/sdb1 enc_storage
```

Create LVM and ext4 into it:

```sh
mkfs.ext4 /dev/mapper/enc_storage
```

Mount it:

```sh
mkdir /mnt/storage
lsblk
echo -e "/dev/mapper/enc_storage\t/mnt/storage\text4\tdefaults\t0\t0\n" >> /etc/fstab
mount -a
lsblk
df -h
```

#### Helper script

I often put this in `~/open.sh` to help unlocking the system when I have forgot the commands.

```sh
#!/bin/sh -exu

cryptsetup luksOpen /dev/sdb1 enc_storage
mount -a -v
#echo 'Starting docker'
#rc-service docker start
#echo 'Waiting 4sec for Docker to start'
#sleep 4
echo 'Done !'
```

#### Or `crypttab`

See: https://manpages.ubuntu.com/manpages/focal/en/man5/crypttab.5.html - `initramfs` "This option is specific to the Debian crypttab format. It's not supported by systemd." - `luks` "Force LUKS mode" - `discard` "Allow using of discards (TRIM) requests for device"

Use `lsblk -o uuid,mountpoint,path | grep -F "/dev/sdb1"`
Add `enc_storage UUID=xxx-xxx-xx-xx-xxxx none luks,discard,initramfs` to `/etc/crypttab`
And `update-initramfs -c -k $(uname -r)`

See: https://serverfault.com/a/1101450/336084
