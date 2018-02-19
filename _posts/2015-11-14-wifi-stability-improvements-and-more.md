---
group: blog
layout: post
title-short: WiFi, Stability improvements and more
title: WiFi, Stability improvements and more
tags: [Raspberry Pi, Technology, Internet of Things, Screenly Newsletter]
author: vpetersson
category: Screenly Digest
medium-url: https://news.screenly.io/wifi-stability-improvements-and-more-40f24f7ca31e
class: blog post
description: To meet our customers’ demands, the Screenly team introduces Screenly Pro SD cards, and beta WiFi support, among other improvements. Sign up if you aren’t a Screenly user.
---

# WiFi, Stability improvements and more

This is the November update for Screenly, where you can read about the latest updates to Screenly.

## Join us in Madrid

On Monday (November 16th), we’re hosting an IoT event together with [BBVA](https://www.bbva.com/), Canonical (the makers of [Ubuntu](https://www.ubuntu.com/)) and [Cloud.net](https://jager.cloud.net/) in Madrid, Spain. During this event, we will be giving a talk about [Screenly](https://www.screenlyapp.com/) and what we have learned so far. We will also be hosting a Raspberry Jam in the evening.

The event is hosted at BBVA’s Innovation Center, and is free to attend. You will however have to register [here](https://www.centrodeinnovacionbbva.com/evento/evento-workshop-build-iot-startup-coding-raspberry-pi).

## Experimental WiFi support

By far the most popular feature request that we have received for Screenly has been the ability to use USB WiFi dongles with the Raspberry Pi.

After extensive tests here at Screenly HQ, we are today excited to announce experimental support for WiFi. The WiFi support is limited to certain USB Wireless dongles. We still recommend wired network connectivity for production, but we understand that there are certain situation where that simply isn’t possible.

If you’re interested to enroll in the WiFi beta, [please let us know](https://support.screenly.io).

## Improved stability

One of the most important priorities for us is to make sure that Screenly is super stable. We truly aspire to make Screenly a *set and forget* solution. As such, we closely monitor the uptime of the Screenly deployment base. Thanks to the improvements by our fine engineers, we have been able to significantly improve this figure over the last couple of months.

We’ve also made improvements to the logging mechanism for the clients, which allows us to proactively solve problems.

## Improved network features

Over the last year, we have attracted many larger customers. These customers tend to have both larger, and more complex networks. The most common way to manage and restrict these networks is by using [MAC addresses](https://en.wikipedia.org/wiki/MAC_address).

We have displayed the MAC address during the pairing process for some time. Many users however requested that we would make this information available even after the pairing (as it is frequently used for device discovery and identification).

We’re happy to announce that we have now made this information available to you. In addition, we also now expose the local network IP address for the device.

![]({% asset_path "blog/network-status.png" %})

## Screenly Pro SD cards are now available

Earlier this year, we started to sell pre-configured Screenly [hardware bundles](https://www.pi-supply.com/product/screenly-pro-digital-signage-starter-kit) through our partner Pi Supply. This was a huge success.

When we later started to announced that we’re [giving away free Screenly players](https://screenly.wufoo.com/forms/screenly-pro-hardware-bundles/) with our annual plans, the demand increased far beyond what we could have imagined.

We did however receive feedback from a number of users saying that they already had the hardware, but were just interested in buying the actual SD card with Screenly Pro pre-loaded.

Today we are happy to announce the availability of Screenly Pro SD cards. These SD cards are available to purchase [from our partner Pi Supply](https://www.pi-supply.com/product/screenly-software-sd-cards-pro-and-ose/) for £7.99 each.

Thank you for taking the time to read this. As always, please let us know if you have any comments or questions by simply raising a [support ticket](https://support.screenly.io/).

Still haven’t tried Screenly? [Sign up now](https://login.screenlyapp.com/signup).
