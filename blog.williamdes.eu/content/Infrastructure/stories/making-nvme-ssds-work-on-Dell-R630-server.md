+++
title = "Making NVME SSDs work on a DELL R630"
date = 2022-05-20T00:07:00+00:02
updated = 2023-05-24T15:40:00+00:02

[extra]
author = "William Desportes"
author_url = "https://williamdes.eu"
headline = "The adventure it has been to make NVME SSDs work on a DELL R630 server."
keywords = ["housing", "nvme", "ssd", "sas", "sata"]
category = "Story"
images = []


[taxonomies]
tags = ["infra-story", "DELL", "DELL-R630"]
+++

The adventure it has been to make NVME SSDs work on a DELL R630 server.

<!-- more -->

This is the story about a R630 server having NVME, SAS and SATA disks working together.
The server is owner by my company but for this blog post let's say it is my server.
I did buy the server ([Dell PowerEdge R630 1U 10x 2.5" (SFF)](https://www.bargainhardware.co.uk/dell-poweredge-r630-10-sff-configure-to-order)) in January of 2022.

![DELL R630 missing a CPU](../DELL_PowerEdge_R630_MissingACPU.jpg "DELL R630 missing a CPU")

### The failed deployment in a datacenter

I was confident I could swap this new machine with the other one, they where quite identical.
But this turned out not to work, when we booted it up in the datacenter (I received it some days ago and could not do testing until then) we had a hard time understanding why it was complaining about the missing SAS cables for the 2 backplane ports.

The machine was configured to have a [NVME U2 extender](https://www.bargainhardware.co.uk/dell-gy1td-poweredge-r630-u2-nvme-enablement-kit-k9tvp) and I had did the mistake to say in the configurator that I wanted not RAID card. Of course because I did not want RAID on this system. But anyway, I had to order a [PERC (SAS HBA card)](https://www.bargainhardware.co.uk/dell-thn56-hba330-mini-mono-12g-13g-internal-sas-hba-p2r3r) that had [the cables](https://www.bargainhardware.co.uk/dell-f7p5j-poweredge-r730-12xlff-perc-to-2x-mini-sas-hd-18-26-0f7p5j) included with it and that did solve the error I had that prevented the boot the other day at the datacenter.

This requirement is explained in [this YouTube video](https://youtu.be/h9ZJoIqtayY?t=236).

#### The PERC card

This one is a: Dell HBA330 Mini Mono 12G/13G Internal SAS HBA

This card is NOT a RAID card [says some techs on dell forums](https://www.dell.com/community/PowerEdge-HDD-SCSI-RAID/Replaced-H730-mini-with-HBA330-cant-install-anything-on-any/m-p/8077919/highlight/true#M58005). Be sure to choose a RAID card if you need RAID.

There is different cards, this [YouTube video](https://youtu.be/h9ZJoIqtayY?t=165) has a good summary about them.

This card seems to be required in some ways to make the normal disks work.
Follow this [YouTube video](https://youtu.be/h9ZJoIqtayY?t=267) to find out how to install it.

![PERC card](../DELL_PowerEdge_R630_PERC_Card.jpg "PERC card")

#### The NVME expander

This extender card is only used to make NVME disks work. SAS, SATA & SSD disks work without it.

It's power consumption is about 45W at idle time. And seems to make the fans spin a bit faster too.

![NVME expander](../DELL_PowerEdge_R630_NVME_Expander_Card.jpg "NVME expander")

#### Mounting the cables and the kit

![PERC card plugged in](../DELL_PowerEdge_R630_PERC_Plugged_In.jpg "PERC card plugged in")

I put in place the kit and plugged it the cables each one according to the labels. (yes it knows and complains if you switch them)

![PERC card plugged in BackPlane cables](../DELL_PowerEdge_R630_PERC_BP_Plugged_Cables.jpg "PERC card plugged in BackPlane cables")

##### The cables

##### PERC card

![PERC card cables](../DELL_PowerEdge_R630_PERC_Cables.jpg "PERC card cables")

##### NVME expander into the BackPlane

![NVME expander card cables](../DELL_PowerEdge_R630_NVME_Expander_Card_BackPlane_PluggedIn.jpg "NVME expander card cables")

### Trying to make NVME disks work

I did buy some NVME drives so I could test my setup. I was innocently thinking that it would work right after I slide then in the [caddies](https://www.bargainhardware.co.uk/dell-8fkxc-poweredge-13g-sff-hot-swap-caddy-08fkxc) but obviously there was more funny things to happen.
So I received the disks and did setup up one and then two. None of the disks where showing up, and the NVME card was not showing.

I was not understanding what was wrong because the NVME card had green leds and the disks too. I then took the bet it was because they where NVME gen 4 and the system could only handle gen 3 but that was not it. I also did order a SAS disk to try it.

I was now having a system with: 3 NVMEs not working, one SAS and one SATA disk showing up.
After some debug and trying dumb things I tried to put the NVME card on the reizer of CPU 1.
And boom ! it did show up in Linux. This was it, I had found something (written in very small on the other reizer was "CPU 2"). But on this reizer the cables where too short. So I was still having 3 non showing NVMEs.

#### A second CPU

I decided to contact the seller to buy a second CPU and RAM. Got them delivered very quickly (thank you "UPS express" !).
Now I did put the CPU 2 and still nothing shows up, not even the CPU 2.
After some [asking Internet on Reddit](https://www.reddit.com/r/Dell/comments/usm9m8/r630_dual_cpu_not_showing_up/) people started saying it was probably the motherboard.

#### New motherboard

After contacting the seller I got it repaired by them and when I got back this server it did boot up and show 2 CPUs, all RAM, SAS, NVME and SATA disks.
This was the end of 6 months of searching how to make a R630 work with NVME disks.

### Conclusion

A second CPU+RAM and a reizer PERC card + NVME enhancement card where needed for this setup.
After that 4 NVME slots where available, SAS and SATA disks work too. All those types of disks can be together.

![DELL R630 with two CPUs a NVME expander and a PERC card](../DELL_PowerEdge_R630_Two_CPU_NVME_PERC_SAS_SATA.jpg "DELL R630 with two CPUs a NVME expander and a PERC card")

### lspci

This are the new lines in `lspci`

```diff
03:00.0 PCI bridge: PLX Technology, Inc. PEX 8734 32-lane, 8-Port PCI Express Gen 3 (8.0GT/s) Switch (rev ab)
04:04.0 PCI bridge: PLX Technology, Inc. PEX 8734 32-lane, 8-Port PCI Express Gen 3 (8.0GT/s) Switch (rev ab)
04:05.0 PCI bridge: PLX Technology, Inc. PEX 8734 32-lane, 8-Port PCI Express Gen 3 (8.0GT/s) Switch (rev ab)
04:06.0 PCI bridge: PLX Technology, Inc. PEX 8734 32-lane, 8-Port PCI Express Gen 3 (8.0GT/s) Switch (rev ab)
04:07.0 PCI bridge: PLX Technology, Inc. PEX 8734 32-lane, 8-Port PCI Express Gen 3 (8.0GT/s) Switch (rev ab)
ff:0e.2 Unassigned class [ffff]: Intel Corporation Device 6ff2 (rev 01)
ff:0e.3 Unassigned class [ffff]: Intel Corporation Device 6ff3 (rev 01)
```

#### Full `lspci` before

```lspci
00:11.0 Unassigned class [ff00]: Intel Corporation C610/X99 series chipset SPSR (rev 05)
00:11.4 SATA controller: Intel Corporation C610/X99 series chipset sSATA Controller [AHCI mode] (rev 05)
00:16.0 Communication controller: Intel Corporation C610/X99 series chipset MEI Controller #1 (rev 05)
00:16.1 Communication controller: Intel Corporation C610/X99 series chipset MEI Controller #2 (rev 05)
00:1a.0 USB controller: Intel Corporation C610/X99 series chipset USB Enhanced Host Controller #2 (rev 05)
00:1c.0 PCI bridge: Intel Corporation C610/X99 series chipset PCI Express Root Port #1 (rev d5)
00:1c.7 PCI bridge: Intel Corporation C610/X99 series chipset PCI Express Root Port #8 (rev d5)
00:1d.0 USB controller: Intel Corporation C610/X99 series chipset USB Enhanced Host Controller #1 (rev 05)
00:1f.0 ISA bridge: Intel Corporation C610/X99 series chipset LPC Controller (rev 05)
00:1f.2 SATA controller: Intel Corporation C610/X99 series chipset 6-Port SATA Controller [AHCI mode] (rev 05)
01:00.0 Ethernet controller: Broadcom Inc. and subsidiaries NetXtreme II BCM57800 1/10 Gigabit Ethernet (rev 10)
01:00.1 Ethernet controller: Broadcom Inc. and subsidiaries NetXtreme II BCM57800 1/10 Gigabit Ethernet (rev 10)
01:00.2 Ethernet controller: Broadcom Inc. and subsidiaries NetXtreme II BCM57800 1/10 Gigabit Ethernet (rev 10)
01:00.3 Ethernet controller: Broadcom Inc. and subsidiaries NetXtreme II BCM57800 1/10 Gigabit Ethernet (rev 10)
02:00.0 Serial Attached SCSI controller: Broadcom / LSI SAS3008 PCI-Express Fusion-MPT SAS-3 (rev 02)
09:00.0 PCI bridge: Renesas Technology Corp. SH7758 PCIe Switch [PS]
0a:00.0 PCI bridge: Renesas Technology Corp. SH7758 PCIe Switch [PS]
0b:00.0 PCI bridge: Renesas Technology Corp. SH7758 PCIe-PCI Bridge [PPB]
0c:00.0 VGA compatible controller: Matrox Electronics Systems Ltd. G200eR2 (rev 01)
```

#### Full `lspci` after

```lspci
00:11.0 Unassigned class [ff00]: Intel Corporation C610/X99 series chipset SPSR (rev 05)
00:11.4 SATA controller: Intel Corporation C610/X99 series chipset sSATA Controller [AHCI mode] (rev 05)
00:16.0 Communication controller: Intel Corporation C610/X99 series chipset MEI Controller #1 (rev 05)
00:16.1 Communication controller: Intel Corporation C610/X99 series chipset MEI Controller #2 (rev 05)
00:1a.0 USB controller: Intel Corporation C610/X99 series chipset USB Enhanced Host Controller #2 (rev 05)
00:1c.0 PCI bridge: Intel Corporation C610/X99 series chipset PCI Express Root Port #1 (rev d5)
00:1c.7 PCI bridge: Intel Corporation C610/X99 series chipset PCI Express Root Port #8 (rev d5)
00:1d.0 USB controller: Intel Corporation C610/X99 series chipset USB Enhanced Host Controller #1 (rev 05)
00:1f.0 ISA bridge: Intel Corporation C610/X99 series chipset LPC Controller (rev 05)
00:1f.2 SATA controller: Intel Corporation C610/X99 series chipset 6-Port SATA Controller [AHCI mode] (rev 05)
01:00.0 Ethernet controller: Broadcom Inc. and subsidiaries NetXtreme II BCM57800 1/10 Gigabit Ethernet (rev 10)
01:00.1 Ethernet controller: Broadcom Inc. and subsidiaries NetXtreme II BCM57800 1/10 Gigabit Ethernet (rev 10)
01:00.2 Ethernet controller: Broadcom Inc. and subsidiaries NetXtreme II BCM57800 1/10 Gigabit Ethernet (rev 10)
01:00.3 Ethernet controller: Broadcom Inc. and subsidiaries NetXtreme II BCM57800 1/10 Gigabit Ethernet (rev 10)
02:00.0 Serial Attached SCSI controller: Broadcom / LSI SAS3008 PCI-Express Fusion-MPT SAS-3 (rev 02)
03:00.0 PCI bridge: PLX Technology, Inc. PEX 8734 32-lane, 8-Port PCI Express Gen 3 (8.0GT/s) Switch (rev ab)
04:04.0 PCI bridge: PLX Technology, Inc. PEX 8734 32-lane, 8-Port PCI Express Gen 3 (8.0GT/s) Switch (rev ab)
04:05.0 PCI bridge: PLX Technology, Inc. PEX 8734 32-lane, 8-Port PCI Express Gen 3 (8.0GT/s) Switch (rev ab)
04:06.0 PCI bridge: PLX Technology, Inc. PEX 8734 32-lane, 8-Port PCI Express Gen 3 (8.0GT/s) Switch (rev ab)
04:07.0 PCI bridge: PLX Technology, Inc. PEX 8734 32-lane, 8-Port PCI Express Gen 3 (8.0GT/s) Switch (rev ab)
0e:00.0 PCI bridge: Renesas Technology Corp. SH7758 PCIe Switch [PS]
0f:00.0 PCI bridge: Renesas Technology Corp. SH7758 PCIe Switch [PS]
10:00.0 PCI bridge: Renesas Technology Corp. SH7758 PCIe-PCI Bridge [PPB]
11:00.0 VGA compatible controller: Matrox Electronics Systems Ltd. G200eR2 (rev 01)
ff:0e.2 Unassigned class [ffff]: Intel Corporation Device 6ff2 (rev 01)
ff:0e.3 Unassigned class [ffff]: Intel Corporation Device 6ff3 (rev 01)
```

<style>
img {
    width: 24rem;
}
</style>
