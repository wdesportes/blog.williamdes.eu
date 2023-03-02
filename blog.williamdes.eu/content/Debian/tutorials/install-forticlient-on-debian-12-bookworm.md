+++
title = "Install fortinet client on Debian 12 - bookworm"
date = 2023-02-13T13:10:00+00:02
updated = 2023-03-02T14:00:00+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "Install fortinet client on Debian 12 - bookworm"
keywords = ["debian-tutorial", "fortinet"]
category = "Tutorial"
images = []
banner_path = "static/Debian/tutorials/FortiClient--ZeroTrustFabricAgent_Debian_12_bookworm.jpg"


[taxonomies]
tags = ["debian-tutorial", "fortinet"]
+++

Install [fortinet client](https://www.fortinet.com/fr/support/product-downloads) on Debian 12 - bookworm

<!-- more -->

This is how to setup fortinet on Debian 12 - bookworm.

Their [webpage](https://www.fortinet.com/fr/support/product-downloads/linux) is outdated and broken, here is my updated tutorial.

## Install

### Fetch the GPG key

```sh
curl -fsSL https://repo.fortinet.com/repo/7.0/ubuntu/DEB-GPG-KEY | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/fortinet.gpg
```

### Add sources file

Create a file at `/etc/apt/sources.list.d/fortinet.list` and put the following contents:

```apt
deb [signed-by=/etc/apt/trusted.gpg.d/fortinet.gpg] https://repo.fortinet.com/repo/7.0/ubuntu bionic multiverse
```

### Install it

```apt
sudo apt update
sudo apt install forticlient
```

### License

At some point it bugged me into buying the license, so I `apt purge purge forticlient` and re-installed the deb from the website.
But I think it's the same as the one from the repo. And after it did switch in the free mode.

```sh
sudo apt purge purge forticlient
sudo apt install /home/williamdes/forticlient_vpn_7.0.7.0246_amd64.deb
```

### Screenshots

On 2023-02-13 I followed this and it installed: `7.0.7.0246`

![FortiClient -- Zero Trust Fabric Agent on Debian 12 - bookworm](../FortiClient--ZeroTrustFabricAgent_Debian_12_bookworm.jpg "FortiClient -- Zero Trust Fabric Agent on Debian 12 - bookworm")
