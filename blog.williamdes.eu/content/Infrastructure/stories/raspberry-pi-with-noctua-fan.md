+++
title = "Changing my RaspberryPi 4 fan for a Noctua NF-A4x10 5V PWM fan"
date = 2021-08-30T13:30:00+00:02
updated = 2021-08-30T14:40:00+00:02
category = "Story"

[extra]
author = "William Desportes"

[taxonomies]
tags = ["infra-story", "RaspberryPi"]
+++

I changed my Raspberry Pi fan for a [Noctua NF-A4x10 5V PWM](https://noctua.at/en/nf-a4x10-5v-pwm) and had a 2° temperature drop compared to the GeeekPi case fan.

<!-- more -->

### The items

When I bought my Raspberry Pi 4 in april 2021 here where the items that my setup was made of:

- [a Raspberry Pi transformer, USB-C 5.1V 3A (1873421)](https://www.amazon.fr/gp/product/B07TZ89BT7)
- [a SanDisk Extreme 64 Go microSD XC, class 10, UHS-I, U3, V30](https://www.amazon.fr/gp/product/B07FCMBLV6)
- [a SanDisk Ultra 64 Go USB 3.0 key, theoretical read speed of 130 Mo/s](https://www.amazon.fr/gp/product/B00DQGBYDC)
- [a Raspberry Pi 4 B 8 Go 4x1,5 GHz, ARM Cortex-A72](https://www.amazon.fr/gp/product/B0899VXM8F/)
- [a GeeekPi Metal Case for Raspberry pi 4B low-profile ICE Tower cooler](https://www.amazon.fr/gp/product/B086JY553B)

### A bit of story

Everything worked well for months but the two fans they provided with the case (one with fancy lighting) where making a terrible noise like they would crash anytime. Most probably because they where crappy quality fans.

I decided to buy a good (very good) fan and I found out that Noctua fans where the best fit.

So I ordered from [LDLC](https://www.ldlc.com/fiche/PB00396294.html) a fan, the [Noctua NF-A4x10 5V PWM](https://noctua.at/en/nf-a4x10-5v-pwm).
Was PWM needed, the answer is no. But it is a nice to have to make a fun project in the future.

It did come with some very cool packaging, very premium feeling and a lot of connectors.

### The hacking part

#### The kit

![Noctua NF-A4x10 5V PWM kit](../Noctua_NF-A4x10_5V_PWM_kit.jpeg "Noctua NF-A4x10 5V PWM kit")

#### Soldering time

Noctua did provide a nice adapter so I only had to cut out the old fan wires and solder them to the adapter.
I used heat shrink tubes to make a nice and secure finish (the two red tubes you can see on the picture).

(The crapy background is my soldering board)

![cutting old fan connector and soldering then to the adapter](../RaspberryPi_4_cutting_and_soldering_for_the_fan.jpeg "cutting old fan connector and soldering then to the adapter")

#### Plug the cable

I did plug the fan cable into the adapter and then plugged all this into the two GPIO pins as you can see.

![plugging into the GPIO pins](../Noctua_NF-A4x10_5V_PWM_kit_in_RaspberryPi_4_GPIO_pins.jpg "plugging into the GPIO pins")

#### Overview

The metal mounts for the fan where included in the setup of the GeeekPi case.

![an overview](../Noctua_NF-A4x10_5V_PWM_kit_in_RaspberryPi_4_overview.jpg "an overview")

![an overview from the side](../Noctua_NF-A4x10_5V_PWM_kit_in_RaspberryPi_4_overview_side.jpg "an overview from the side")

### Some temperature numbers

Was this change worth it: yes !
It's cooler and more silent.

Here is the graph of before and after, you can clearly see a 2° difference !

The spike on the graph is the moment between having old fan and having no fan at all, just the cooler.

(The graph is done with Zabbix, more on that in another blog post)
(You can click the image to see it bigger)

[![with the old fan and with the new fan](../Noctua_NF-A4x10_5V_PWM_in_RaspberryPi_4_temp_Zabbix.jpg "with the old fan and with the new fan")](../Noctua_NF-A4x10_5V_PWM_in_RaspberryPi_4_temp_Zabbix.jpg)

#### Zoomed in

(You can click the image to see it bigger)

[![with the old fan and with the new fan (zoomed in)](../Noctua_NF-A4x10_5V_PWM_in_RaspberryPi_4_temp_Zabbix_zoom.jpg "with the old fan and with the new fan (zoomed in)")](../Noctua_NF-A4x10_5V_PWM_in_RaspberryPi_4_temp_Zabbix_zoom.jpg)

### Conclusion

[Noctua](https://noctua.at/en/products/fan) fans are great, the perform very well and are silent.
I can only recommend to buy them. They provide cool wiring stuff, you will have left overs for other projects.

By the way they also do very good [thermal paste](https://noctua.at/en/products/thermal-grease).
