---
layout: post
title-short: Screenly OSE 0.13 is out
title: Screenly OSE 0.13 is out
tags: [Raspberry Pi, Screenly OSE]
author: vpetersson
category: Screenly OSE
class: blog post
description: Screenly OSE 0.13 (code name Paradise City) brings improved WiFi configuration and more.
---

# Screenly OSE 0.13 (Paradise City) is out

We're happy to announce the availability of the latest release of Screenly OSE, v0.13 (code name Paradise City).

This release focused mostly on improving the network configuration experience. In the past, we have experimented with various ways of configuring both static networking and WiFi in Screenly. Some of it ended up being successful, while other experiments were caused some confusion and we will continue to experiment until we're happy.

## Network overhaul

With this release, we have decommissioned the use of Screenly Network Configuration, which means that you can no longer configure the network using a `network.ini` file in the boot partition.

Inspired by the way that most IoT devices configure networking, we have adopted a WiFi hotspot solution with a captive portal (using [Resin WiFi Connect](https://github.com/resin-io/resin-wifi-connect)). This, of course, requires a WiFi interface, such as the built-in one on the Raspberry Pi 3 Model B.

What this means is that (on the first boot), the device will check if there is any active network connection (such as Ethernet with DHCP). If there isn't one, instructions for how to connect to the device will appear on the screen.

In short, it will look something like this:

 * You connect to the SSID displayed on your screen using your smartphone or laptop
 * Once you're connected, you will see a list of all available SSIDs/networks
 * You select one of them and enter the passphrase (if applicable)
 * Once the Raspberry Pi successfully connected to the network specified, it will shut down the hotspot and continue as normal

Behind the scenes, what happens is that a Network Manager configuration is created. This means that upon next reboot, the device will connect automatically to the network without the hotspot being launched.

For custom Ethernet configuration and advanced configurations, you can either use `nmcli` by hand on the device, or configure networking through `/etc/network/interfaces`.

## Change in port

In addition to the network changes, we have also decided to change the default port of Screenly. Historically, it has been using port 8080, which can sometime cause some inconvenience when accessing the web interface. As such, this release now uses the regular port 80 for HTTP (and 443 if you've enabled SSL).

## New API call

Another theme as of lately is to improve the API support. In this release, we've added a new API call for [navigating to a specific asset](https://github.com/Screenly/screenly-ose/issues/662).

This can be very useful when Screenly OSE is used with external input. For instance, you could program physical buttons to cause events to happen on the screen. An example for this could be an [art exhibition]({{ site.url }}/use-cases/modern-art-installations/) or a museum, where the visitor can learn more about a given item by pressing a button.

For more information, and to download the disk image, visit the [Github Release page](https://github.com/Screenly/screenly-ose/releases/tag/v0.14).
