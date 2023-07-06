+++
title = "Install racadm for iDRAC on Proxmox 7/8"
date = 2023-05-25T14:10:00+00:02
updated = 2023-07-06T16:07:00+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "Install racadm for iDRAC on Proxmox 7/8"
keywords = ["infra-tutorial", "iDRAC"]
category = "Tutorial"
images = []

[taxonomies]
tags = ["infra-tutorial", "iDRAC"]
+++

Install iDRAC racadm tool on Proxmox 7/8

<!-- more -->

This is how to setup iDRAC's racadm tool on Proxmox 7/8. And iDRAC Service Module(iSM).

This article is inspired by [DELL's manual](https://linux.dell.com/repo/community/openmanage/) and this [blog post](https://www.ceremade.dauphine.fr/doc/fr/blog/installer-dell-oms).

## Install

### Fetch the GPG key

```sh
curl -fsSL https://linux.dell.com/repo/pgp_pubkeys/0x1285491434D8786F.asc | gpg --dearmor -o /etc/apt/trusted.gpg.d/dell-apt-key.gpg
```

### Add sources file

Create a file at `/etc/apt/sources.list.d/linux.dell.com.sources.list` and put the following contents:

```deb
deb [signed-by=/etc/apt/trusted.gpg.d/dell-apt-key.gpg] http://linux.dell.com/repo/community/openmanage/11000/jammy jammy main
# For Proxmox 7
#deb [signed-by=/etc/apt/trusted.gpg.d/dell-apt-key.gpg] http://linux.dell.com/repo/community/openmanage/10300/focal focal main
# If you want iDRAC Service Module(iSM)
deb [signed-by=/etc/apt/trusted.gpg.d/dell-apt-key.gpg] http://linux.dell.com/repo/community/openmanage/iSM/5100/bullseye bullseye main
```

The `10300` (`v10.3.0.0`) part is the OMSA version found on the matrix available on [DELL's page](https://linux.dell.com/repo/community/openmanage/).

If you use the `jammy` release on a Debian 11 it will throw `uses unknown compression for member 'control.tar.zst', giving up` at install time. This is explained [on stackoverflow (stackexchange)](https://unix.stackexchange.com/a/669008/155610).


### Install it

```apt
apt-get install srvadmin-idracadm8
# If you want iDRAC Service Module(iSM)
apt-get install dcism
```

### Try `racadm`

```sh
racadm getsysinfo
```

```text
RAC Information:
RAC Date/Time           = Thu May 25 12:25:11 2023

Firmware Version        = 2.84.84.84
Firmware Build          = 02
Last Firmware Update    = 05/23/2023 11:30:51
[...]
```

With `dcism` and a reboot:

```text
Host Name               = proxmox.local
OS Name                 = Debian GNU/Linux 12 (bookworm)
OS Version              = 12 (bookworm) Kernel 6.2.16-3-pve (x86_64)
```

### On Proxmox 8

I added back `deb http://ftp.debian.org/debian bullseye main` to the `/etc/apt/sources.list` file and ran: `apt install libssl1.1`.
Because the binary `/opt/dell/srvadmin/iSM/bin/Invoke-iSMPKIHelper` needs it (`ldd /opt/dell/srvadmin/iSM/bin/Invoke-iSMPKIHelper`).

And after added a file `/etc/apt/preferences.d/bullseye` with the contents:

```rfc822
Package: *
Pin: release n=bullseye
Pin-Priority: -1
```
