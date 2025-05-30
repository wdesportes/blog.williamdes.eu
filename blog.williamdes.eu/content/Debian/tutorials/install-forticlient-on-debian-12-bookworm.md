+++
title = "Install fortinet client on Debian 12/13 - Bookworm/Trixie"
date = 2023-02-13T13:10:00+00:02
updated = 2025-05-30T11:45:00+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "Install fortinet client on Debian 12/13 - Bookworm/Trixie"
keywords = ["debian-tutorial", "fortinet"]
category = "Tutorial"
images = []
banner_path = "static/Debian/tutorials/FortiClient--ZeroTrustFabricAgent_Debian_12_bookworm.jpg"


[taxonomies]
tags = ["debian-tutorial", "fortinet"]
+++

Install [fortinet client](https://www.fortinet.com/fr/support/product-downloads) on Debian 12 - Bookworm/Trixie

<!-- more -->

This is how to setup fortinet on Debian 12/13 - Bookworm/Trixie.

Their [webpage](https://www.fortinet.com/fr/support/product-downloads/linux) is outdated and broken, here is my updated tutorial.

## Install

### Fetch the GPG key

```sh
curl -fsSL https://repo.fortinet.com/repo/7.0/ubuntu/DEB-GPG-KEY | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/fortinet.gpg
```

### Add sources file

#### Debian 12 "Bookworm"

Create a file at `/etc/apt/sources.list.d/fortinet.list` and put the following contents:

```apt
deb [signed-by=/etc/apt/trusted.gpg.d/fortinet.gpg] https://repo.fortinet.com/repo/7.0/ubuntu bionic multiverse
```

#### Debian 13 "Trixie"

Create a file at `/etc/apt/sources.list.d/fortinet.sources` and put the following contents:

```yaml
Types: deb
URIs: https://repo.fortinet.com/repo/7.0/ubuntu/
Suites: bionic
Components: multiverse
Signed-By: /etc/apt/trusted.gpg.d/fortinet.gpg
```

### Install it

#### Debian 12 "Bookworm"

```apt
sudo apt update
sudo apt install forticlient
```

#### Debian 13 "Trixie"

```sh
# Download missing libraries
wget http://ftp.debian.org/debian/pool/main/g/gconf/gconf2-common_3.2.6-8_all.deb
wget http://ftp.debian.org/debian/pool/main/g/gconf/libgconf-2-4_3.2.6-8_amd64.deb
wget http://ftp.debian.org/debian/pool/main/liba/libayatana-appindicator/libayatana-appindicator1_0.5.92-1_amd64.deb
wget http://ftp.debian.org/debian/pool/main/liba/libayatana-indicator/libayatana-indicator7_0.9.3-1_amd64.deb
wget http://ftp.debian.org/debian/pool/main/libd/libdbusmenu/libdbusmenu-gtk4_18.10.20180917~bzr492+repack1-3_amd64.deb
# Install
sudo apt install ./libayatana-appindicator1_0.5.92-1_amd64.deb ./libayatana-indicator7_0.9.3-1_amd64.deb ./libdbusmenu-gtk4_18.10.20180917~bzr492+repack1-3_amd64.deb ./libgconf-2-4_3.2.6-8_amd64.deb ./gconf2-common_3.2.6-8_all.deb
# Cleanup
rm ./libgconf-2-4_3.2.6-8_amd64.deb ./gconf2-common_3.2.6-8_all.deb ./libayatana-appindicator1_0.5.92-1_amd64.deb ./libayatana-indicator7_0.9.3-1_amd64.deb ./libdbusmenu-gtk4_18.10.20180917~bzr492+repack1-3_amd64.deb
# Update & install
sudo apt update
sudo apt install forticlient
```

### License

At some point it bugged me into buying the license, so I `apt purge purge forticlient` and re-installed the deb from [the website](https://www.fortinet.com/fr/support/product-downloads#vpn).
But I think it's the same as the one from the repo. And after it did switch in the free mode.

```sh
sudo apt purge purge forticlient
sudo apt install /home/williamdes/Downloads/forticlient_vpn_7.4.3.1736_amd64.deb
```

### Screenshots

On 2023-02-13 I followed this and it installed: `7.0.7.0246`

![FortiClient -- Zero Trust Fabric Agent on Debian 12/13 - bookworm](../FortiClient--ZeroTrustFabricAgent_Debian_12_bookworm.jpg "FortiClient -- Zero Trust Fabric Agent on Debian 12/13 - bookworm")

And on 2025-05-30 I installed the version `7.0.13.0376` using Debian 13.
