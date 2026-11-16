+++
title = "Installing Android 17 on a Redmi Note 10 Pro"
date = 2026-11-16T18:27:00+00:02
updated = 2026-11-16T18:27:00+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "Install Android 17 on a Redmi Note 10 Pro"
keywords = ["Android"]
category = "Tutorial"
images = [
]
banner_path = ""

[taxonomies]
tags = ["Android", "Redmi"]
+++

Install Android 17 on a Redmi Note 10 Pro.

<!-- more -->

Since years I have been using an upgraded version of Android on my Redmi Note 10 Pro.
Not many people seem to know but this phone can be upgraded from the initial Android version up to very recent versions.
And the phone costs nothing nowdays, due to owners abandonning it for new phone. The initial specs are sufficient for newer Android versions.

The OS I will install is named PixelOS. And you will see your phone in your Google account as a "Google Pixel".

There is another OS I tried named HyperOS. It works fine too and uses MIUI.

This phone is code name ["sweet"](https://pixelos.net/download/sweet).

### Unlock your phone

### Fastboot mode

You will need to have adb tools. You can download the kit that contains ADB.
On Debian based systems install the package [`adb`](https://packages.debian.org/trixie/adb).

Run the following commands when you have your phone over USB.

#### Unlock your phone first

```console
$ adb devices
* daemon not running; starting now at tcp:5037
* daemon started successfully
List of devices attached
1d488ced	unauthorized
```

You should see your device in the list after you did hit allow to the modal that shows up.
I recommend you to tick the box that says to always allow that computer.

#### Reboot in fastboot mode

```sh
adb reboot fastboot
```

### Flash the recovery image

This will give you a new recovery system.

You also can install [OrangeFox recovery](https://orangefox.download/device/61e6c2efeff912e9c6328516) if you prefer.
That might not be a good idea, I tried it and it works and looks great.

```console
$ fastboot flash recovery /mnt/Glacier/recovery-sweet_20261111_0408.img
Sending 'recovery' (131072 KB)                     OKAY [  2.834s]
Writing 'recovery'                                 OKAY [  0.552s]
Finished. Total time: 3.395s
```

The original recovery images can be found [here](https://xmfirmwareupdater.com/miui/sweet/stable%20beta/V14.0.7.0.TKFEUXM/).

### Reboot into recovery

This command will reboot into the flashed recovery image.
The official tutorial says to use "Reboot to recovery by holding volume up + power button".

```sh
fastboot reboot recovery
```

### Get into sideload mode

The official tutorial says "On your phone [which is in recovery mode], select Apply update, then Apply from ADB to begin sideload".
So you will click "Apply update", then click "Apply from ADB".

At this step if you have OrangeFox recovery you will need to find similar menus.

#### Update the firmware

You need to download the firmware ZIP from [this link for Europeans](https://xmfirmwareupdater.com/firmware/sweet/stable/V14.0.9.0.TKFEUXM/).
Or go to https://xmfirmwareupdater.com/firmware/ and search "sweet". Do not take "sweetin" if you are not in India !
Basically your options are Europe, India, or "Global" for everything else.

Run this command:
```sh
adb sideload /mnt/Glacier/fw_sweet_miui_SWEETEEAGlobal_V14.0.9.0.TKFEUXM_79417d5d99_13.0.zip
```

Click "Yes" when it says the signature is invalid, and check it says "Install completex with status 0"

#### Install the OS

At this point: IF YOU PROCEED, YOU UNDERSTAND ALL DATA LEFT OVER IS LOST.
Installing a new OS will make your currently installed apps broken, that's why the last step will require to clean all data.

Get back into sideload mode, click "Apply update", then click "Apply from ADB".

And run this command:
```sh
adb sideload /mnt/Glacier/PixelOS_sweet-17.0-20261111-0408.zip
```

Congratulations, you updated your phone !
Now you MUST CLEAR all the data.

#### Final cleanup

The official tutorial says: Go to main menu > Wipe > Format Data > Type "yes" and confirm.

You should aready be back to the main menu.
Click "Factory reset", then click "Format data/factory reset" and click "Format data".

Now all the data is removed, no need to "Format cache partition" as you can see in the log it has been done.

Click back arrow and hit "Reboot system now".

Admire your new phone booting, enjoy !
