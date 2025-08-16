+++
title = "How to install phpMyAdmin on Debian 13 - Trixie ?"
date = 2025-08-10T00:29:00+00:01
updated = 2025-08-11T03:25:00+00:01

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "How to install phpMyAdmin on Debian 13 - Trixie ?"
keywords = ["phpMyAdmin", "Debian", "Trixie"]
category = "Tutorial"
images = [
    "Debian/tutorials/phpMyAdmin_Debian_13_Home_BooDark_root.png",
    "Debian/tutorials/phpMyAdmin_Debian_13_Home_Bootstrap_root.png",
    "Debian/tutorials/phpMyAdmin_Debian_13_Home_Metro_root.png",
    "Debian/tutorials/phpMyAdmin_Debian_13_Home_Original_root.png",
    "Debian/tutorials/phpMyAdmin_Debian_13_Home.png",
    "Debian/tutorials/phpMyAdmin_Debian_13_Home_root.png",
    "Debian/tutorials/phpMyAdmin_Debian_13_Login.png",
    "Debian/tutorials/phpMyAdmin_Debian_13_table-list_BooDark.png",
    "Debian/tutorials/phpMyAdmin_Debian_13_table-list.png",
]
banner_path = "static/Debian/tutorials/phpMyAdmin_Debian_13_Home_BooDark_root.png"

[taxonomies]
tags = ["debian-tutorial", "phpMyAdmin"]
+++

How to install phpMyAdmin on Debian 13 - Trixie ? By APT.

<!-- more -->

In this post I will explain how to install using APT.

### Introduction

First of all, this post has been tested on Debian Trixie on 10/08/2025.<br>
This post is written by a phpMyAdmin team member (williamdes/myself),<br> I am also the one responsible for the APT package [`phpmyadmin`](https://tracker.debian.org/pkg/phpmyadmin) in Debian, [Ubuntu](https://launchpad.net/ubuntu/+source/phpmyadmin) and [derivatives](https://repology.org/project/phpmyadmin/versions). And the [Ubuntu PPA](https://launchpad.net/~phpmyadmin/+archive/ubuntu/ppa) for `phpmyadmin`.

### Installing on Debian Trixie

Using the ISO image [debian-13.0.0-amd64-netinst.iso](https://cdimage.debian.org/mirror/cdimage/release/current/amd64/iso-cd/debian-13.0.0-amd64-netinst.iso) and VirtualBox 7.0.
After adding my user to the sudo group, I did open a terminal and ran the install command:

#### Stay up to date

You should setup Debian backports in your APT sources: [Debian wiki for backports](https://wiki.debian.org/Backports#Adding_the_repository)<br>
I will provide updated versions of phpMyAdmin on this official backports channel. No need to do manual and insecure installations ;)

#### Install with Apache2

```sh
sudo apt install phpmyadmin libapache2-mod-php
```

Then it asks:
- For the webserver to reconfigure: I checked "apache2".
- If I want to configure the "phpmyadmin" database: I opted for "No". Because the DB server is not yet installed.

You can now access phpMyAdmin from [http://localhost/phpmyadmin/](http://localhost/phpmyadmin/).<br>
There is normally no need to reload the apache2 webserver, in case of a 404 error run: `sudo service apache2 reload`

![phpMyAdmin on Debian 13 - Trixie | Login page](../phpMyAdmin_Debian_13_Login.png "phpMyAdmin on Debian 13 - Trixie | Login page")

##### Install a database server

```sh
sudo apt install mariadb-server
```

###### Configure phpMyAdmin to the database server

```sh
sudo dpkg-reconfigure phpmyadmin
```

Then it asks:
- If I want to configure the "phpmyadmin" database: I opted for "Yes".
- The connection method: I used "socket".
- The password hashing method: I kept "default".
- The phpMyAdmin database name: I kept "phpmyadmin".
- The phpMyAdmin database user name: I kept "phpmyadmin@localhost".
- The phpMyAdmin database password: Keep blank.
- The database server admin username: I kept "root".
- For the webserver to reconfigure: I kept "apache2".

The values are written to `/etc/phpmyadmin/config-db.php` you can edit them instead of running `dpkg-reconfigure`.

You can login on phpMyAdmin from [http://localhost/phpmyadmin/](http://localhost/phpmyadmin/) using `phpmyadmin` as the username, and using the password for the user found in `/etc/phpmyadmin/config-db.php`.

![phpMyAdmin on Debian 13 - Trixie | Home page for the phpmyadmin user](../phpMyAdmin_Debian_13_Home.png "phpMyAdmin on Debian 13 - Trixie | Home page for the phpmyadmin user")

![phpMyAdmin on Debian 13 - Trixie | Table list for the phpmyadmin user](../phpMyAdmin_Debian_13_table-list.png "phpMyAdmin on Debian 13 - Trixie | Table list for the phpmyadmin user")

##### Allow no password access ?

You might have noticed that you can not access phpMyAdmin using "root" and no password.
But there is solutions for this. Ref: [StackOverflow answers to allow no password login](https://stackoverflow.com/questions/5908752/does-phpmyadmin-allownopassword-work-with-mysql-databases)

I recommend adding a custom config file instead of changing the default config file (`/etc/phpmyadmin/config.inc.php`):

Create the config file `/etc/phpmyadmin/conf.d/no-password.php`:

```php
<?php

$i = 1;

$cfg['Servers'][$i]['AllowNoPassword'] = true;
```

##### Change the root password

Open the MariaDB terminal by running:
```sh
sudo mariadb
```

Then enter the query:
```sql
SET PASSWORD FOR root@localhost = PASSWORD('new_password');
```

Quit the MariaDB terminal by using <kbd>CTRL</kbd>+<kbd>C</kbd>

You should be able to login using the password:
```sh
mariadb -u root -h 127.0.0.1 -p
```

If it works, go to [http://localhost/phpmyadmin/](http://localhost/phpmyadmin/) and enjoy phpMyAdmin !

### Installing more themes

This method works but could make your installed themes go away with each phpMyAdmin update.
Sorry, there is no Debian packages for each theme. This is too much work.

Go to [phpMyAdmin website - themes](https://phpmyadmin.net/themes/#pma_5_2).
Find one that is compatible with phpMyAdmin 5.2.x

I will be using Boodark Nord 1.1.0 for this example:

```sh
wget https://files.phpmyadmin.net/themes/boodark-nord/1.1.0/boodark-nord-1.1.0.zip -O /tmp/theme.zip
cd /usr/share/phpmyadmin/themes/
# If needed: sudo apt-get install unzip -y
unzip /tmp/theme.zip
# Should show boodark-nord with all the other themes
ls -lah
# Cleanup
rm /tmp/theme.zip
```

![phpMyAdmin on Debian 13 - Trixie | BooDark theme](../phpMyAdmin_Debian_13_Home_BooDark_root.png "phpMyAdmin on Debian 13 - Trixie | BooDark theme")

![phpMyAdmin on Debian 13 - Trixie | BooDark theme on the table list page](../phpMyAdmin_Debian_13_table-list_BooDark.png "phpMyAdmin on Debian 13 - Trixie | BooDark theme on the table list page")

### Themes included in phpMyAdmin

#### Original

![phpMyAdmin on Debian 13 - Trixie | Original theme on the home page](../phpMyAdmin_Debian_13_Home_Original_root.png "phpMyAdmin on Debian 13 - Trixie | Original theme on the home page")

#### Metro

![phpMyAdmin on Debian 13 - Trixie | Metro theme on the home page](../phpMyAdmin_Debian_13_Home_Metro_root.png "phpMyAdmin on Debian 13 - Trixie | Metro theme on the home page")

#### Bootstrap

![phpMyAdmin on Debian 13 - Trixie | Bootstrap theme on the home page](../phpMyAdmin_Debian_13_Home_Bootstrap_root.png "phpMyAdmin on Debian 13 - Trixie | Bootstrap theme on the home page")
