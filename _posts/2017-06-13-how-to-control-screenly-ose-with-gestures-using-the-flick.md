---
group: blog
layout: post
title-short: How to control Screenly OSE with gestures using the Flick
title: How to control Screenly OSE with gestures using the Flick
tags: [Docker, Kubernetes, Digital Signage, IoT, Screenly OSE]
author: vpetersson
category: Screenly OSE
medium-url: https://news.screenly.io/how-to-control-screenly-ose-with-gestures-using-the-flick-7060968efb68
class: blog post
description: Flick is a new product for the Raspberry Pi that enables gesture controls. Since Screenly utilizes the Raspberry Pi, our open source version promptly adopted Flick’s feature. Read up on the setup and installation process and watch our demo to see for how it works.
---

# How to control Screenly OSE with gestures using the Flick

Last week our friends over at Pi Supply launched a cool new product called Flick. In short, it’s a HAT (i.e. add-on board) for the Raspberry Pi that enables you to use gestures to control the Raspberry Pi.

![A pi-topCEED running Screenly OSE]({% asset_path "blog/pi-topceed-running-screenly-ose.jpeg" %})*A pi-topCEED running Screenly OSE*

I got my hands on one of these and the first thing that came to my mind was to use it to add gesture controls for [Screenly OSE](https://www.screenly.io/ose/).

## Setup

First, you need to [install the driver and Python library for the Flick](https://github.com/PiSupply/Flick), this is as simple as typing in one command. Once installed, you can use the test application to ensure that it is working properly.

With the Flick installed, [install Screenly OSE](https://github.com/Screenly/screenly-ose). Similarly, it’s just one line of code. This installation will however take a bit longer, as it requires a fair number of dependencies to be installed.

In terms of hardware, my particular setup is using a [pi-topCEED](https://pi-top.com/buy/ceed), which is a great little hardware kit. It also hides the board behind plexiglass, creating a better looking device. Unfortunately, since I didn’t have any pi-topPROTO, I had to run a separate power cable to power the Raspberry Pi in order to use it with the Flick.

![I had to disable the pi-top power supply to the Raspberry Pi to fit the Flick HAT.]({% asset_path "blog/raspberry-ri-to-fit-the-flick-hat.jpeg" %})*I had to disable the pi-top power supply to the Raspberry Pi to fit the Flick HAT.*

## Integration

Since my objective was simply to detect movement, the coding part was very straight forward. In short, the script below simply compares the previous and current state of the sensor to determine if there was a movement. If a movement is detected, the script sends a SIGUSR1 signal to viewer.py which causes it to jump to the next image.

<iframe src="https://medium.com/media/87a5c74f1a3858cef3d1316fd45ceeba" frameborder=0></iframe>

The approach is very much similar to the approach used in the previous article [How to add a physical button to Screenly OSE using Node-RED](https://news.screenly.io/how-to-add-a-physical-button-to-screenly-ose-using-node-red-2be7148bae98).

## Demo

To better get an idea on how this work, I recorded a quick video on how everything works nicely together.

<center><iframe width="560" height="315" src="https://www.youtube.com/embed/SSL310oriiw" frameborder="0" allowfullscreen></iframe></center>

Happy hacking!
