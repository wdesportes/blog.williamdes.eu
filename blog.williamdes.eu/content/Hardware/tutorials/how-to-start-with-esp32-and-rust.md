+++
title = "How to start with Rust and ESP32"
date = 2024-10-18T13:10:00+00:02
updated = 2025-10-09T13:51:00+00:02

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
It seems to be `ESP32-S3FN8` according to the [Heltec doc](https://docs.heltec.org/en/node/esp32/wireless_stick/hardware_update_log.html#v3) that says: `MCU is changed from ESP32-D0WDQ6 to [`ESP32-S3FN8`](https://products.espressif.com/#/product-comparison?names=ESP32-S3FN8&type=SoC) for V3.


The Amazon pinout picture is garbage, see [heltec.org](https://heltec.org/project/wireless-stick-v3/) for the real one.
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

Obviously you will have to install Rust. My current version is: `rustc 1.88.0 (6b00bc388 2025-06-23)`.

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
[2025-10-09T12:02:26Z INFO ] Serial port: '/dev/ttyUSB0'
[2025-10-09T12:02:26Z INFO ] Connecting...
[2025-10-09T12:02:26Z INFO ] Using flash stub
Chip type:         esp32s3 (revision v0.2)
Crystal frequency: 40 MHz
Flash size:        8MB
Features:          WiFi, BLE, Embedded Flash
MAC address:       48:27:e2:e4:8a:6c

Security Information:
=====================
Flags: 0x00000000 (0)
Key Purposes: [0, 0, 0, 0, 0, 0, 12]
Chip ID: 9
API Version: 0
Secure Boot: Disabled
Flash Encryption: Disabled
SPI Boot Crypt Count (SPI_BOOT_CRYPT_CNT): 0x0
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
🤷   Project Name: esp32-lcd
🔧   Destination: <workdir>/esp32-lcd ...
🔧   project-name: esp32-lcd ...
🔧   Generating template ...
✔ 🤷   Which MCU to target? · esp32s3
✔ 🤷   Configure advanced template options? · true
✔ 🤷   ESP-IDF version (master = UNSTABLE) · v5.3
✔ 🤷   Configure project to use Dev Containers (VS Code and GitHub Codespaces)? · false
✔ 🤷   Configure project to support Wokwi simulation with Wokwi VS Code extension? · false
✔ 🤷   Add CI files for GitHub Action? · false
[ 1/11] Done: .cargo/config.toml
[ 2/11] Done: .cargo
[ 3/11] Done: .gitignore
[ 4/11] Done: .vscode
[ 5/11] Done: Cargo.toml
[ 6/11] Done: build.rs
[ 7/11] Ignored: pre-script.rhai
[ 8/11] Done: rust-toolchain.toml
[ 9/11] Done: sdkconfig.defaults
[10/11] Done: src/main.rs
[11/11] Done: src
🔧   Moving generated files into: `<workdir>/esp32-lcd`...
🔧   Initializing a fresh Git repository
✨   Done! New project created <workdir>/esp32-lcd
```

### Run it

```sh
cd esp32-lcd
cargo run
```

After the build you will see this output:

```
[2025-10-09T12:16:10Z INFO ] Serial port: '/dev/ttyUSB0'
[2025-10-09T12:16:10Z INFO ] Connecting...
[2025-10-09T12:16:11Z INFO ] Using flash stub
Chip type:         esp32s3 (revision v0.2)
Crystal frequency: 40 MHz
Flash size:        8MB
Features:          WiFi, BLE, Embedded Flash
MAC address:       48:27:e2:e4:8a:6c
App/part. size:    517,568/8,323,072 bytes, 6.22%
[00:00:01] [========================================]      14/14      0x0      Verifying... OK!
[00:00:00] [========================================]       1/1       0x8000   Verifying... OK!
[00:00:27] [========================================]     261/261     0x10000  Verifying... OK!
[2025-10-09T12:16:41Z INFO ] Flashing has completed!
Commands:
    CTRL+R    Reset chip
    CTRL+C    Exit

ESP-ROM:esp32s3-20210327
Build:Mar 27 2021
rst:0x1 (POWERON),boot:0x9 (SPI_FAST_FLASH_BOOT)
SPIWP:0xee
mode:DIO, clock div:2
load:0x3fce2810,len:0x15a0
load:0x403c8700,len:0x4
load:0x403c8704,len:0xd24
load:0x403cb700,len:0x2f04
entry 0x403c8928
I (30) boot: ESP-IDF v5.4.1-426-g3ad36321ea 2nd stage bootloader
I (30) boot: compile time Apr 24 2025 15:55:11
I (30) boot: Multicore bootloader
I (32) boot: chip revision: v0.2
I (34) boot: efuse block revision: v1.3
I (38) boot.esp32s3: Boot SPI Speed : 40MHz
I (42) boot.esp32s3: SPI Mode       : DIO
I (46) boot.esp32s3: SPI Flash Size : 8MB
I (49) boot: Enabling RNG early entropy source...
I (54) boot: Partition Table:
I (56) boot: ## Label            Usage          Type ST Offset   Length
I (63) boot:  0 nvs              WiFi data        01 02 00009000 00006000
I (69) boot:  1 phy_init         RF data          01 01 0000f000 00001000
I (76) boot:  2 factory          factory app      00 00 00010000 007f0000
I (82) boot: End of partition table
I (86) esp_image: segment 0: paddr=00010020 vaddr=3c050020 size=20308h (131848) map
I (125) esp_image: segment 1: paddr=00030330 vaddr=3fc90e00 size=0296ch ( 10604) load
I (129) esp_image: segment 2: paddr=00032ca4 vaddr=40374000 size=0cd48h ( 52552) load
I (144) esp_image: segment 3: paddr=0003f9f4 vaddr=00000000 size=00624h (  1572)
I (145) esp_image: segment 4: paddr=00040020 vaddr=42000020 size=4e570h (320880) map
I (231) boot: Loaded app from partition at offset 0x10000
I (232) boot: Disabling RNG early entropy source...
I (242) cpu_start: Multicore app
I (252) cpu_start: Pro cpu start user code
I (252) cpu_start: cpu freq: 160000000 Hz
I (252) app_init: Application information:
I (255) app_init: Project name:     libespidf
I (260) app_init: App version:      1
I (264) app_init: Compile time:     Oct  9 2025 14:15:30
I (270) app_init: ELF file SHA256:  000000000...
I (275) app_init: ESP-IDF:          v5.3.3
I (280) efuse_init: Min chip rev:     v0.0
I (285) efuse_init: Max chip rev:     v0.99
I (290) efuse_init: Chip rev:         v0.2
I (295) heap_init: Initializing. RAM available for dynamic allocation:
I (302) heap_init: At 3FC940C8 len 00055648 (341 KiB): RAM
I (308) heap_init: At 3FCE9710 len 00005724 (21 KiB): RAM
I (314) heap_init: At 3FCF0000 len 00008000 (32 KiB): DRAM
I (320) heap_init: At 600FE000 len 00001FE8 (7 KiB): RTCRAM
I (328) spi_flash: detected chip: gd
I (331) spi_flash: flash io: dio
W (335) pcnt(legacy): legacy driver is deprecated, please migrate to `driver/pulse_cnt.h`
W (343) i2c: This driver is an old driver, please migrate your application code to adapt `driver/i2c_master.h`
W (354) timer_group: legacy driver is deprecated, please migrate to `driver/gptimer.h`
I (363) sleep: Configure to isolate all GPIO pins in sleep state
I (370) sleep: Enable automatic switching of GPIO sleep configuration
I (377) main_task: Started on CPU0
I (387) main_task: Calling app_main()
I (387) esp32_lcd: Hello, world!
I (387) main_task: Returned from app_main()
```

Success !


## Writing some code

### Testing the board with Arduino

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

The [example](https://github.com/esp-rs/esp-idf-hal/blob/2af4695/examples/ledc_simple.rs) to light the LED (GPIO 35) works, just change the pin number in the code.

To be done, the OLED display !

// https://github.com/ivmarkov/rust-esp32-std-demo/issues/158
// http://cholla.mmto.org/electronics/displays/oled/
