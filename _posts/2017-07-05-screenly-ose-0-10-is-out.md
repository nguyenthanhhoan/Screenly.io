---
group: blog
layout: post
title-short: Screenly OSE 0.10 is out
title: Screenly OSE 0.10 is out
tags: [Raspberry Pi, Screenly OSE, Axis, Security, Security Camera]
author: vpetersson
category: Screenly OSE
medium-url: https://news.screenly.io/screenly-ose-0-10-is-out-a34978d98a54
class: blog post
description: From livestream support to backup function and more, Screenly OSE 0.10’s useful updates will enhance and ease your digital signage experience. To reap the most of Screenly’s digital signage solution, find out how to upgrade.
---

# Screenly OSE 0.10 is out
![Screenly OSE 0.10 “Night Train” is out]({% asset_path "blog/screenly-ose-0.10-is-out.png" %})*Screenly OSE 0.10 “Night Train” is out*

We’re proud to announce [Screenly OSE 0.10](https://github.com/Screenly/screenly-ose/releases/tag/v0.10) (code name “Night Train”). The release includes a number of new features that we’ll go over in this brief post.

### Added support for live streams

One feature that we’re excited about is the new support for live streams. To be more specific, we’ve added support for RTSP feeds. This is a common format used for instance network cameras (such as the Axis camera you can see below).

![An Axis network camera]({% asset_path "blog/axis-network-camera.jpeg" %})*An Axis network camera*

In order to use an RTSP feed in Screenly OSE, you need to add it as a regular URL, such as rtsp://192.168.50.25/axis-media/media.amp.

Locating the RTSP feed can sometimes be tricky, as it usually varies between models and is often not clearly displayed. Fortunately, you can use the database from [iSpyConnect](https://www.ispyconnect.com/sources.aspx) to locate the URL for your particular camera model.

### Backup and restore functionality

Another new feature in this release is the backup/restore function that you can find in the settings menu. When you download a backup, this will include not only your settings, but also your assets. This means that if you want to switch out your SD card, all you need to do is to do a backup and then restore it on the new installation. Easy as pi(e).

### Batch uploads

In previous release, you had to upload images and videos one-by-one. Starting from this release, you can now batch upload assets. To do this, simply drag in the assets into the new drop field inside the ‘add asset’ section.

![Batch add assets]({% asset_path "blog/batch-add-assets.png" %})*Batch add assets*

### New authentication system

One frequently requested feature request we’ve received is to have the ability to restrict access to the admin interface. Starting this release you can.

To set this up, open up your ~/.screenly/screenly.conf and locate the [auth] section. You then need to set a username and password there. Once you have done this, you need to restart the server. You can do this by running pkill -f server.py.

Next time you access the management interface, you should be prompted to enter the username and password that you specified.

### No SSH by default

Starting a few versions back of Raspbian, SSH is no longer enabled by default. Since Screenly OSE is built on top of Raspbian, this is something we inherited too (which is a good thing).

If you do want to enable SSH, you can find instructions on how to do that [here](https://www.raspberrypi.org/documentation/remote-access/ssh/).

### Support for the Zero W

Since the previous version of Screenly OSE came out prior to the Raspberry Pi Zero W release, that chipset was not supported. We’re happy to announce however, that this board now supported in this release.

### Display power management

While it’s not a feature in this release, we recently posted a blog post titled [How to automatically turn off and on your monitor from your Raspberry Pi](https://news.screenly.io/how-to-automatically-turn-off-and-on-your-monitor-from-your-raspberry-pi-5f259f40cae5). In this article, we walk over a few ways of how to control the power of the monitor using software.

If you’re interested in this, please take a look at that article and let us know what works and doesn’t work for you in the comment section of that article. Once we have a better sense of what works and doesn’t, we can hopefully implement this logic inside Screenly.

### And lots of bug fixes…

In addition to these new features, the release also includes a large number of bug fixes.

### How do I upgrade?

You have a few ways you can upgrade. The easiest way is to SSH into your Screenly OSE device and run:

    $ bash <(curl -sL [https://www.screenly.io/install-ose.sh)](https://www.screenly.io/install-ose.sh))

If you instead prefer to do a fresh installation, you can either:

* Grab the latest disk image from [here](https://github.com/Screenly/screenly-ose/releases/tag/v0.10)

* Use [NOOBS](https://www.raspberrypi.org/downloads/noobs/) to install Screenly OSE

### Other relevant articles

* [Screenly OSE is now available in NOOBS](https://news.screenly.io/screenly-ose-is-now-in-noobs-5e6e0245d868)

* [Introducing Screenly Cast for WordPress](https://news.screenly.io/introducing-screenly-cast-for-wordpress-a27ff26667b7)

* [How to control Screenly OSE with gestures using the Flick](https://news.screenly.io/how-to-control-screenly-ose-with-gestures-using-the-flick-7060968efb68)

* [How to add a physical button to Screenly OSE using Node-RED](https://news.screenly.io/how-to-add-a-physical-button-to-screenly-ose-using-node-red-2be7148bae98)
