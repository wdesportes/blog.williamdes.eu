+++
title = "How to start with Rust and ESP32"
date = 2024-10-18T13:10:00+00:02
updated = 2024-10-18T13:10:00+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "How to start with Rust and ESP32"
keywords = ["hardware-tutorial", "ESP32", "Rust"]
category = "Tutorial"
images = []

[taxonomies]
tags = ["hardware-tutorial", "ESP32", "Rust"]
+++

How to start with Rust and an ESP32 board ?

<!-- more -->

In this blog post I will explain you how to get started with an ESP32 and Rust.

One big question you may be asking yourself: what model does support Rust ?

The [supported board versions](https://github.com/esp-rs/esp-idf-svc) seem to be:

- esp32

- esp32c2
- esp32c3
- esp32c6

- esp32h2

- esp32s2
- esp32s3

And maybe `ESP32-P4` according to the README.

What device should I buy ?

I did buy the [Hailege ESP32 Wireless Stick Lora+WiFi+BLE Development Board SX1262 Module LoRa WiFi Bluetooth Arduino LoRaWAN 863/928MHz with 0.49 inch OLED Display](https://www.amazon.fr/dp/B07X92FSW7) from Amazon but you should maybe buy it at [heltec.org](https://heltec.org/project/wireless-stick-v3/).

It has support for:
- LoRa/LoRaWAN
- WiFi
- Bluetooth

It comes with the OLED 64*32 (0.49 inch) screen [`nfp1315-99a`](https://www.opldisplaytec.com/product/134).
The screen uses the chip [SSD1315](https://cursedhardware.github.io/epd-driver-ic/SSD1315.pdf).
It seems to be `ESP32-S3FN8` according to the [Heltec doc](https://docs.heltec.org/en/node/esp32/wireless_stick/hardware_update_log.html) that says: `MCU is changed from ESP32-D0WDQ6 to ESP32-S3FN8` for V3.


The Amazon pinout picture is gargabe, see [heltec.org](https://heltec.org/project/wireless-stick-v3/) for the real one.
High resolution picture: [heltec.cn (HTIT-WS_V3.png)](https://resource.heltec.cn/download/Wireless_Stick_V3/HTIT-WS_V3.png)

High resolution schematic diagram: [heltec.cn (HTIT-WS_V3_Schematic_Diagram.pdf)](https://resource.heltec.cn/download/Wireless_Stick_V3/HTIT-WS_V3_Schematic_Diagram.pdf)

The OLED pins are advertised as [Heltec source code](https://github.com/Heltec-Aaron-Lee/WiFi_Kit_series/blob/3.0.2/variants/heltec_wireless_stick_v3/pins_arduino.h):
GPIO 4 -> OLED SDA
GPIO 15 -> OLED SCL
GPIO 16 -> OLED reset

static const uint8_t Vext = 36;
static const uint8_t LED  = 35;
static const uint8_t RST_OLED = 21;
static const uint8_t SCL_OLED = 18;
static const uint8_t SDA_OLED = 17;

// Slave address bit (SA0)
SSD1306 has to recognize the slave address before transmitting or receiving any information by the
I 2 C-bus.

// SDA acts as a communication channel between the transmitter and the receiver. The data and the
acknowledgement are sent through the SDA

// I 2 C-bus clock signal (SCL)
The transmission of information in the I2
C-bus is following a clock signal, SCL. Each transmission of
data bit is taken place during a single clock period of SCL

// https://www.smart-prototyping.com/image/data/9_Modules/101855%200.66%20OLED%206448%20IICSPI/SSD1306.pdf

## Tooling install

Obviously you will have to install Rust. My current version is: `rustc 1.83.0 (90b35a623 2024-11-26)`.

If there is a some build failure related to Python you may need to install this:

```sh
sudo apt install python3.11-venv
```

[Install espflash and tools](https://github.com/esp-rs/esp-idf-template?tab=readme-ov-file#install-cargo-sub-commands):

```sh
cargo install espup
cargo install espflash
cargo install ldproxy
cargo install cargo-generate
```

If you do not install `ldproxy` the `cargo run` will fail:
```
error: linker `ldproxy` not found
  |
  = note: No such file or directory (os error 2)
```

## Device info

```sh
espflash board-info
```

```
2024-12-21T15:46:46Z INFO ] Serial port: '/dev/ttyUSB0'
[2024-12-21T15:46:46Z INFO ] Connecting...
[2024-12-21T15:46:46Z INFO ] Using flash stub
Chip type:         esp32s3 (revision v0.2)
Crystal frequency: 40 MHz
Flash size:        8MB
Features:          WiFi, BLE
MAC address:       48:27:e2:ee:aa:cc
```

This may throw an error:
```
$ espflash board-info

  × Failed to open serial port /dev/ttyUSB0
  ├─▶ Error while connecting to device
  ├─▶ IO error while using serial port: Permission denied
  ╰─▶ Permission denied
```

Add your user to the group of the file:

```sh
$ ls -lah /dev/ttyUSB0
crw-rw---- 1 root dialout 188, 0 Dec 21 16:37 /dev/ttyUSB0
```

```sh
# Print current user groups
id
sudo usermod -a -G dialout $USER
# Add the group without re-login
newgrp dialout
# Print current user groups
id
```

## Setup the project

```sh
cargo generate esp-rs/esp-idf-template cargo
```

```
⚠️   Favorite `esp-rs/esp-idf-template` not found in config, using it as a git repository: https://github.com/esp-rs/esp-idf-template.git
🤷   Project Name: my-project
🔧   Destination: <workdir>/my-project ...
🔧   project-name: my-project ...
🔧   Generating template ...
✔ 🤷   Which MCU to target? · esp32s3
✔ 🤷   Configure advanced template options? · true
✔ 🤷   ESP-IDF version (master = UNSTABLE) · v5.2
✔ 🤷   Configure project to use Dev Containers (VS Code and GitHub Codespaces)? · false
✔ 🤷   Configure project to support Wokwi simulation with Wokwi VS Code extension? · false
✔ 🤷   Add CI files for GitHub Action? · false
🔧   Moving generated files into: `<workdir>/my-project`...
🔧   Initializing a fresh Git repository
✨   Done! New project created <workdir>/my-project
```

### Run it

```sh
cd my-project
cargo run
```

After the build you will see this output:

```
ESP-ROM:esp32s3-20210327
Build:Mar 27 2021
rst:0x1 (POWERON),boot:0x9 (SPI_FAST_FLASH_BOOT)
SPIWP:0xee
mode:DIO, clock div:2
load:0x3fce3818,len:0x16f8
load:0x403c9700,len:0x4
load:0x403c9704,len:0xc00
load:0x403cc700,len:0x2eb0
entry 0x403c9908
I (30) boot: ESP-IDF v5.1-beta1-378-gea5e0ff298-dirt 2nd stage bootloader
I (30) boot: compile time Jun  7 2023 08:07:32
I (31) boot: Multicore bootloader
I (35) boot: chip revision: v0.2
I (39) boot.esp32s3: Boot SPI Speed : 40MHz
I (44) boot.esp32s3: SPI Mode       : DIO
I (49) boot.esp32s3: SPI Flash Size : 4MB
I (53) boot: Enabling RNG early entropy source...
I (59) boot: Partition Table:
I (62) boot: ## Label            Usage          Type ST Offset   Length
I (70) boot:  0 nvs              WiFi data        01 02 00009000 00006000
I (77) boot:  1 phy_init         RF data          01 01 0000f000 00001000
I (85) boot:  2 factory          factory app      00 00 00010000 00100000
I (92) boot: End of partition table
I (96) esp_image: segment 0: paddr=00010020 vaddr=3c060020 size=20340h (131904) map
I (137) esp_image: segment 1: paddr=00030368 vaddr=3fc91300 size=028b8h ( 10424) load
I (141) esp_image: segment 2: paddr=00032c28 vaddr=40374000 size=0d234h ( 53812) load
I (159) esp_image: segment 3: paddr=0003fe64 vaddr=00000000 size=001b4h (   436)
I (159) esp_image: segment 4: paddr=00040020 vaddr=42000020 size=51aa0h (334496) map
I (253) boot: Loaded app from partition at offset 0x10000
I (253) boot: Disabling RNG early entropy source...
I (264) cpu_start: Multicore app
I (275) cpu_start: Pro cpu start user code
I (275) cpu_start: cpu freq: 160000000 Hz
I (275) cpu_start: Application information:
I (278) cpu_start: Project name:     libespidf
I (283) cpu_start: App version:      1
I (287) cpu_start: Compile time:     Dec 21 2024 16:14:50
I (293) cpu_start: ELF file SHA256:  000000000...
I (299) cpu_start: ESP-IDF:          v5.2.2
I (304) cpu_start: Min chip rev:     v0.0
I (308) cpu_start: Max chip rev:     v0.99
I (313) cpu_start: Chip rev:         v0.2
I (318) heap_init: Initializing. RAM available for dynamic allocation:
I (325) heap_init: At 3FC94518 len 000551F8 (340 KiB): RAM
I (331) heap_init: At 3FCE9710 len 00005724 (21 KiB): RAM
I (337) heap_init: At 3FCF0000 len 00008000 (32 KiB): DRAM
I (344) heap_init: At 600FE010 len 00001FD8 (7 KiB): RTCRAM
I (351) spi_flash: detected chip: gd
I (354) spi_flash: flash io: dio
W (358) spi_flash: Detected size(8192k) larger than the size in the binary image header(4096k). Using the size in the binary image header.
W (372) pcnt(legacy): legacy driver is deprecated, please migrate to `driver/pulse_cnt.h`
W (380) timer_group: legacy driver is deprecated, please migrate to `driver/gptimer.h`
I (389) sleep: Configure to isolate all GPIO pins in sleep state
I (395) sleep: Enable automatic switching of GPIO sleep configuration
I (403) main_task: Started on CPU0
I (413) main_task: Calling app_main()
I (413) bob: Hello, world!
I (413) main_task: Returned from app_main()
```

Success !


## Writing some code

### Testing the board

Using Arduino IDE and as explained on [Heltec ESP32's GitHub](https://github.com/HelTecAutomation/Heltec_ESP32/) I verified I could get the screen working.

```ino
#include <Wire.h>
#include "HT_SSD1306Wire.h"

static SSD1306Wire  display(0x3c, 500000, SDA_OLED, SCL_OLED, GEOMETRY_128_64, RST_OLED); // addr , freq , i2c group , resolution , rst

void drawLines() {
  for (int16_t i=0; i<display.getWidth(); i+=4) {
    display.drawLine(0, 0, i, display.getHeight()-1);
    display.display();
    delay(10);
  }
}

void LedON(void)
{
  pinMode(LED,OUTPUT);
  digitalWrite(LED, HIGH);
}

void VextON(void)
{
  pinMode(Vext,OUTPUT);
  digitalWrite(Vext, LOW);
}

void VextOFF(void) //Vext default OFF
{
  pinMode(Vext,OUTPUT);
  digitalWrite(Vext, HIGH);
}

void setup() {
  LedON();
  VextON();
  delay(100);
  display.init();
  drawLines();
}

void loop() { }
```

### Writing Rust !

Now that we know the pins and addresses are correct, let's Rust !

// https://github.com/ivmarkov/rust-esp32-std-demo/issues/158
// http://cholla.mmto.org/electronics/displays/oled/

```rs

```
