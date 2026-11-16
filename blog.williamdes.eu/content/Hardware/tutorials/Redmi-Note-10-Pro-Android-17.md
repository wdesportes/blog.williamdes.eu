+++
title = "Installing Android 17 on a Redmi Note 10 Pro"
date = 2026-11-16T18:27:00+00:02
updated = 2026-11-16T20:18:00+01:00

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

### Play Integrity

Banking apps, Google Wallet and others refuse to work when the Google play integrity service does not say the phone is "secure".

The fix is a JSON file describing the phone. And another file named keybox.

#### The `pif.json` file

Download [Redmi-Note-10-Pro-sweet-pif.json](../Redmi-Note-10-Pro-sweet-pif.json), it was generated from this exact phone, then run:

```sh
adb push Redmi-Note-10-Pro-sweet-pif.json /storage/emulated/0/
```

This did push the file to the internal storage root folder.

Load this into Settings > System > Developper options > "Applications", Spoofing > Play integrity fix > Import configuration.

#### The keybox file

Check the verdicts with [Play Integrity API Checker](https://play.google.com/store/apps/details?id=gr.nikolasspyr.integritycheck).

On the freshly installed phone I only got `MEETS_BASIC_INTEGRITY`.

#### Final checking

On Android 13 and above, like here, Google made the DEVICE verdict as strict as the old STRONG one: a fingerprint alone is not enough anymore, you also need [TrickyStore](https://github.com/5ec1cff/TrickyStore) with a valid keybox.

#### For another phone / Generate the `pif.json` file

The file comes from [PIF-Config-Generator](https://github.com/Elcapitanoe/PIF-Config-Generator), run inside Docker so nothing is installed on your machine. 

Save this as `gen-pif.sh` in your current folder:

```sh
#!/usr/bin/env bash
# Generate a Play Integrity profile from the phone plugged on adb.
# Runs inside python:3-trixie:  bash gen-pif.sh sweet
set -euo pipefail

# keep apt and mktemp out of /tmp, which Docker replaces with the user's directory
export TMPDIR=/var/tmp

CODENAME="${1:-}"
[ -n "$CODENAME" ] || { echo "usage: bash gen-pif.sh <codename>   (e.g. sweet)" >&2; exit 1; }

OUT_DIR="${OUT_DIR:-/tmp}"
TARBALL="https://github.com/Elcapitanoe/PIF-Config-Generator/archive/refs/tags/v26.1115.tar.gz"
WORK="$(mktemp -d)"
trap 'rm -r "$WORK"' EXIT

apt-get update -qq
apt-get install -y -qq --no-install-recommends adb
pip install -q --disable-pip-version-check --root-user-action=ignore "$TARBALL"

echo ":: waiting for the phone"
adb wait-for-device
FOUND="$(adb shell getprop ro.product.device | tr -d '\r')"
[ "$FOUND" = "$CODENAME" ] || { echo "ERROR: expected '$CODENAME', the phone says '$FOUND'" >&2; exit 1; }

echo ":: reading the build properties"
adb shell getprop | sed -E 's/^\[([^]]+)\]: \[([^]]*)\]$/\1=\2/' > "$WORK/system.prop"

echo ":: building the profile"
pif-gen build --file "$WORK/system.prop" --format legacy --output-dir "$WORK"

# A custom ROM mixes its own system props with the stock vendor fingerprint, so
# align everything with that fingerprint instead of keeping the ROM's values.
PROFILE="$(python3 - "$WORK/system.prop" "$WORK/system.json" "$OUT_DIR" "$CODENAME" <<'PY'
import json, os, re, sys
props = dict(l.rstrip("\n").split("=", 1) for l in open(sys.argv[1]) if "=" in l)
profile = json.load(open(sys.argv[2]))
fingerprint = props["ro.vendor.build.fingerprint"]
brand, product, device = fingerprint.split("/")[:3]
profile.update(
    BRAND=brand,
    PRODUCT=product,
    DEVICE=device.split(":")[0],
    FINGERPRINT=fingerprint,
    SECURITY_PATCH=props["ro.vendor.build.security_patch"],
)
model = props.get("ro.product.system.model") or props["ro.product.model"]
name = re.sub(r"\W+", "-", f"{model}-{sys.argv[4]}-pif").strip("-")
path = f"{sys.argv[3]}/{name}.json"
json.dump(profile, open(path, "w"), indent=2)
# the container runs as root, world-writable keeps the file usable on the host
os.chmod(path, 0o777)
print(os.path.basename(path))
PY
)"

echo ":: done, the profile is in the folder you ran this from: $PROFILE"
```

In that same folder, open a terminal and run (phone plugged by USB and modal accepted):

```sh
docker run --rm --network host -v "$PWD:/tmp" -v "$PWD/gen-pif.sh:/gen-pif.sh:ro" python:3-trixie bash /gen-pif.sh sweet
```

Mounting the folder on `/tmp` is what brings the profile back next to the script, and `--network host` is what lets `adb` inside the container see the phone plugged on your USB port. The last line printed is the file name, for this phone `Redmi-Note-10-Pro-sweet-pif.json`, and it is in the folder you ran the command from, not in `/tmp` on your machine.
