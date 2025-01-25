+++
title = "Encrypt an existing Debian 12 system with LUKS"
date = 2025-01-19T21:58:00+00:01
updated = 2025-01-20T14:11:00+00:01

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "Encrypt an existing Debian 12 system with LUKS"
keywords = ["LUKS", "encryption"]
category = "Tutorial"
images = []


[taxonomies]
tags = ["infra-tutorial", "security", "LUKS"]
+++

Encrypt an existing Debian system with LUKS

<!-- more -->

This is how to encyrpt an existing Debian system using LUKS.

In this example the VM (virtual machine) has one virtual disk attached.
You will need some megabytes free on your disk.

## References

On Internet you can find other posts asking/showing how to encrypt a drive:
- This [Reddit post on linuxadmin](https://www.reddit.com/r/linuxadmin/comments/j3gyk9/possible_to_convert_to_luks_encryption_without/) has some interesting answers.
- A [Reddit post on Debian](https://www.reddit.com/r/debian/comments/feaa7g/is_it_possible_to_perform_full_disk_encryption/)
- A [Reddit post on Fedora](https://www.reddit.com/r/Fedora/comments/kyj373/cryptsetup_reencrypt_it_worked/) that says that it works.
- This [blog post on education.fr](https://blog.apps.education.fr/articles/debian-linux-en-full-disk-encryption-sur-machine-efi2022-10-26t160921692z).
- [krzys-h's gist to automate the disk conversion](https://gist.github.com/krzys-h/226a16eb56c82df0dc3a9d35fad989c8).

There was another tool that did the conversion on the fly, named [luksipc](https://www.johannes-bauer.com/linux/luksipc/).
I am not sure you should use it.

## Actual machine disk disposition

```sh
$ lsblk
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda       8:0    0    2G  0 disk
├─sda1    8:1    0  1.9G  0 part /
├─sda14   8:14   0    3M  0 part
└─sda15   8:15   0  124M  0 part /boot/efi
```

```sh
$ fdisk -l
Disk /dev/sda: 2 GiB, 2147483648 bytes, 4194304 sectors
Disk model: QEMU HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 56E4EDE3-4BA3-6942-9E58-D1EFDCB32B4A

Device      Start     End Sectors  Size Type
/dev/sda1  262144 4192255 3930112  1.9G Linux root (x86-64)
/dev/sda14   2048    8191    6144    3M BIOS boot
/dev/sda15   8192  262143  253952  124M EFI System

Partition table entries are not in disk order.
```

```sh
$ blkid
/dev/sda15: SEC_TYPE="msdos" UUID="E6F2-C0D9" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="cec893d8-f47d-4f0f-b0b7-c3f3a4fac1cf"
/dev/sda1: UUID="4594baf1-164a-4cb0-980f-105744df462c" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="54c133f2-e7f5-43a6-9540-cea1cbc4654c"
/dev/sda14: PARTUUID="3747106c-99e7-1748-8308-ee6ae31f457b"
```

## Prepare the actual system

```sh
apt install cryptsetup cryptsetup-initramfs
```

Add `GRUB_ENABLE_CRYPTODISK=y` to `/etc/default/grub`

Ensure the keyboard layout is usable in `/etc/default/keyboard`

```env
XKBMODEL="pc105"
XKBLAYOUT="fr"
XKBVARIANT="latin9"
```

Run `update-initramfs -u`

You can check that the cryptsetup is installed: `lsinitramfs /boot/initrd.img-6.11.10+bpo-amd64 | grep crypt`
Using the filename from the `update-initramfs` command.

You may want to `reboot` and check that everything still works fine.
Now shut down the machine.

## Setup Debian live

- Load `https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-12.9.0-amd64-standard.iso` on a CD or USB stick.
- Boot the VM/machine on the ISO.
- Choose the "Live" option.
- Install `cryptsetup`: `sudo apt install cryptsetup -y`

You will probably need to add the `nameserver 1.1.1.1` line to the `/etc/resolv.conf` file.
And add an IP manually
- Check before with `ip link`.
- `sudo ip addr add 10.10.10.3/24 dev ens18`.
- `sudo ip net add default via 10.10.10.1`.
- `ping 1.1.1.1` should reply


At this point I installed `openssh-server` to work remotely: `sudo apt install openssh-server -y`
And did allow root access and changed the root password. And restarted the service.

## Start converting the drive

Run `fdisk -l` and find the drive path.

Now, you can paste the script from [krzys-h's gist](https://gist.github.com/krzys-h/226a16eb56c82df0dc3a9d35fad989c8).
Or use my version of this script:

```sh
#!/bin/bash

set -euo pipefail

# Uncomment to debug/inspect the commands
#set -x

# Encrypt an existing partition with LUKS2 on Debian 12

# DISCLAIMER: USE AT YOUR OWN RISK AND MAKE BACKUPS
# Made for my personal use and has almost NO error checking!!

# Based on instructions from:
# https://wiki.archlinux.org/index.php/dm-crypt/Device_encryption#Encrypt_an_existing_unencrypted_filesystem

DISK="${1:-}"

if [ -z "$DISK" ]; then
	echo "Usage: $0 /dev/sdXY"
	exit 1
fi

# Run a filesystem check
e2fsck -f "$DISK"

# Make the filesystem slightly smaller to make space for the LUKS header
BLOCK_SIZE=`dumpe2fs -h $DISK | grep "Block size" | cut -d ':' -f 2 | tr -d ' '`
BLOCK_COUNT=`dumpe2fs -h $DISK | grep "Block count" | cut -d ':' -f 2 | tr -d ' '`
SPACE_TO_FREE=$((1024 * 1024 * 32)) # 16MB should be enough, but add a safety margin
NEW_BLOCK_COUNT=$(($BLOCK_COUNT - $SPACE_TO_FREE / $BLOCK_SIZE))
resize2fs -p "$DISK" "$NEW_BLOCK_COUNT"

# Run the encryption process
# MAN: https://man7.org/linux/man-pages/man8/cryptsetup-reencrypt.8.html
cryptsetup reencrypt --encrypt --reduce-device-size 16M "$DISK"

# Resize the filesystem to fill up the remaining space (i.e. remove the safety margin from earlier)
cryptsetup open "$DISK" recrypt
resize2fs /dev/mapper/recrypt
cryptsetup close recrypt

# Don't forget to update /etc/crypttab and /etc/fstab if required!
#
# For example:
# /etc/crypttab
# crypt_root    UUID=xxx    none    luks
# /etc/fstab
# /dev/mapper/crypt_root    /        ext4    errors=remount-ro    0    1
#
# Remember to run "update-initramfs -u -k all" after updating the rootfs crypttab
```

## Adjust the encryption key

As said on [Debian's reddit](https://www.reddit.com/r/debian/comments/15w9c6e/cryptomount_invalid_passphrase_despite_being/) and [Unix StackExchange](https://unix.stackexchange.com/q/764872/155610) GRUB will not unlock if the keyslot is `PBKDF: argon2id`

You will need to run:
- `cryptsetup luksDump /dev/sda` to check that is needs to be converted
- `cryptsetup luksConvertKey --pbkdf pbkdf2 /dev/sda` to convert the key
- `cryptsetup luksDump /dev/sda` to check that is worked
- `sudo cryptsetup --verbose open --test-passphrase /dev/sda` to check the password is working

Note: always use `--pbkdf pbkdf2` to change the password or do other key changes.
Example to change the password: `cryptsetup luksChangeKey --pbkdf pbkdf2 /dev/sda`

## Chroot into the system and adjust it

Thank you [finnie.org](https://www.finnie.org/2009/07/26/howto-encrypt-an-existing-debian-installation/) for this part of the tutorial !

```sh
DEVICE_NAME="root_crypt"
cryptsetup open /dev/sda1 ${DEVICE_NAME}
mkdir /mnt/${DEVICE_NAME}
mount /dev/mapper/${DEVICE_NAME} /mnt/${DEVICE_NAME}
mount -t proc none /mnt/${DEVICE_NAME}/proc
mount -t sysfs none /mnt/${DEVICE_NAME}/sys
mount --bind /dev /mnt/${DEVICE_NAME}/dev
```

Enter the chroot: `chroot /mnt/${DEVICE_NAME}`

### Once in the chroot

- run `fdisk -l` and check if you have an EFI partition
  - If you have one, mount it: `mount /dev/sda15 /boot/efi`
- run `blkid -o value -s UUID /dev/sda1` and keep the value
- edit `/etc/crypttab` and add the following line: `root_crypt	UUID=<blkid value here>	none	luks`
  - Example: `root_crypt	UUID=24bfb42b-007d-4777-9889-46d3e016e60b	none	luks`
- edit `/etc/fstab` to change the root line
  - Example: `PARTUUID=54c133f2-e7f5-43a6-9540-cea1cbc4654c / ext4 rw,discard,errors=remount-ro 0 1`
    Is now `/dev/mapper/root_crypt / ext4 rw,discard,errors=remount-ro 0 1`
- Check that the `/etc/mtab` does not differ from reality: `diff -u /etc/mtab /proc/mounts`
  If it differs (the diff command returns a difference), run: `cat /proc/mounts >/etc/mtab`

#### Fix the boot process

- Re-install grub `grub-install /dev/sda` (I am not sure this step is required)
- Update initramfs: `update-initramfs -k all -u`
- Run `lsblk -o uuid,name`
  - `24bfb42b-007d-4777-9889-46d3e016e60b ├─sda1`
  - `4594baf1-164a-4cb0-980f-105744df462c │ └─root_crypt`

In `/etc/default/grub` edit `GRUB_CMDLINE_LINUX=`

- Add `cryptdevice=UUID=<your_encrypted_crypt_device_uuid>:root_crypt root=UUID=<your_unencrypted_root_partition_uuid>`
  - Example `cryptdevice=UUID=24bfb42b-007d-4777-9889-46d3e016e60b:root_crypt root=UUID=4594baf1-164a-4cb0-980f-105744df462c`
  - Example (should work) `cryptdevice=UUID=24bfb42b-007d-4777-9889-46d3e016e60b:root_crypt root=/dev/mapper/root_crypt`
- Check that it boots on `root=` and has `cryptdevice=` by running `cat /boot/grub/grub.cfg | grep -F "root="`
- Run `update-grub`
- Check that it boots on `root=` and has `cryptdevice=` by running `cat /boot/grub/grub.cfg | grep -F "root="`

You can learn more about [the boot parameters on the wiki page of Archlinux](https://wiki.archlinux.org/title/Dm-crypt/System_configuration#cryptdevice).

Exit the chroot: `exit`

### Cleanup the chroot

```sh
umount /mnt/${DEVICE_NAME}/proc
umount /mnt/${DEVICE_NAME}/sys
umount /mnt/${DEVICE_NAME}/dev
umount /mnt/${DEVICE_NAME}/boot/efi
umount /mnt/${DEVICE_NAME}
cryptsetup close ${DEVICE_NAME}
rmdir -v /mnt/${DEVICE_NAME}
```

## Finishing the job

Shutdown the live VM: `poweroff`
And boot the machine to see if it works ?!

If the system hangs on `random: crng init done` then the unlock may be waiting for you on another TTY.
[Explained on RaspberryPi StackExchange](https://raspberrypi.stackexchange.com/a/136648/114760).
