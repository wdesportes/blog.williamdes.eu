+++
title = "Install OpenFortiGUI client on Debian 12/13 - Bookworm/Trixie"
date = 2023-04-05T21:16:00+00:02
updated = 2025-05-30T11:45:00+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "Install OpenFortiGUI client on Debian 12/13 - Bookworm/Trixie"
keywords = ["debian-tutorial", "OpenFortiGUI"]
category = "Tutorial"
images = []
banner_path = "static/Debian/tutorials/OpenFortiGUI_0.9.8_Debian_12_bookworm.jpg"

[taxonomies]
tags = ["debian-tutorial", "OpenFortiGUI"]
+++

Install [OpenFortiGUI](https://hadler.me/linux/openfortigui/) on Debian 12/13 - Bookworm/Trixie

<!-- more -->

This is how to setup OpenFortiGUI on Debian 12/13 - Bookworm/Trixie.

[OpenFortiGUI](https://hadler.me/linux/openfortigui/) uses [the openfortivpn project](https://github.com/adrienverge/openfortivpn).

OpenFortiGUI is still not in Debian or Ubuntu, but someone did open a ITP for it: [#888518](https://bugs.debian.org/888518)

## Install

### Fetch the GPG key

```sh
curl -fsSL https://apt.iteas.at/iteas-keyring.gpg -o ./iteas-keyring.gpg
gpg --no-default-keyring --keyring ./iteas-keyring.gpg --armor --export BA662621DA69F38C443F147C23CAE45582EB0928 | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/iteas-keyring.gpg
rm ./iteas-keyring.gpg
```

### Add sources file

Create a file at `/etc/apt/sources.list.d/openfortigui.list` and put the following contents:

Check on [https://apt.iteas.at/iteas/dists/](https://apt.iteas.at/iteas/dists/) if you find your dist.
I did open an issue to ask for Debian `trixie` to be added: [theinvisible/openfortigui#189](https://github.com/theinvisible/openfortigui/issues/204).

```apt
deb [signed-by=/etc/apt/trusted.gpg.d/iteas-keyring.gpg] https://apt.iteas.at/iteas bookworm main
```

### Install it

```apt
sudo apt update
apt policy openfortigui
sudo apt install openfortigui
# Or (for me)
sudo apt install openfortigui -t bookworm
```

### For Debian 13 "Trixie"

You will need to edit the PPP options in `/etc/ppp/options`:

Uncomment:
- `ipcp-accept-local`
- `ipcp-accept-remote`

See: https://github.com/adrienverge/openfortivpn/issues/1076#issuecomment-2156366824

### Screenshots

On 2023-02-13 I followed this and it installed: `0.9.8`

![openFortiGUI - 0.9.8 on Debian 12/13 - bookworm](../OpenFortiGUI_0.9.8_Debian_12_bookworm.jpg "openFortiGUI - 0.9.8 on Debian 12/13 - bookworm")

And on 2025-05-30 I installed the version `0.9.10` using Debian 13.
