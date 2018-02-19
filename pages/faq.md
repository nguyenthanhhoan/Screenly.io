---
layout: innerpage
permalink: /faq/
title: Frequently Asked Questions
description: Find the answer to the most frequently asked questions for Screenly.
track_links:
  - "#top-learn-more, Clicked Learn More, marketing_site, index_top"
  - "#starter-kit-pro, Clicked Starter Kit, marketing_site, faq_middle"
  - "#starter-kit-ose, Clicked Starter Kit (OSE), marketing_site, faq_middle"
---

# Frequently Asked Questions

You'll find links to version specific FAQs at the bottom of this page.

## What hardware does Screenly require?

Both **Screenly OSE** and **Screenly Pro** require:

- An SD Card (>4GB). Class 10, preferably of "MLC" or "SLC" type.
- An HDMI-cable.
- A monitor/TV that can view full HD (and has HDMI input).

**Screenly Pro** also requires:

- A Raspberry Pi 3 Model B.
- An internet connection.

**Screenly OSE** also requires:

- A Raspberry Pi (any model).
- A network connection (it's also possible to use OSE in [offline mode](https://support.screenly.io/hc/en-us/articles/115002570873-Can-I-use-Screenly-OSE-in-offline-mode-)).
- A keyboard (if you're not using our disk image).

## Where can I buy the hardware?

The quickest way to get started is to purchase a pre-configured Screenly device from one of our [distributors]({{site.url}}/distributors/).

These kits include everything you need to get started with Screenly.

Alternatively, you can purchase the hardware directly from one of the official resellers listed on the [Rasperry Pi](http://www.raspberrypi.org/) website.

## Can I run Screenly without a Raspberry Pi?

In theory you could, but it isn't supported.

If you're using Screenly OSE, you have access to the source code and you could attempt to port it to any platform you like. In particular Debian-based systems should not be too difficult.

<h2 id="content_type">What content types are supported by Screenly?</h2>

Both Screenly OSE and Screenly Pro support three types of assets: images, videos and websites.

### Images

The most popular image formats are supported, such as PNG, JPG, and GIF.

Image formats such as BMP however is not supported.

When you prepare images make sure they are as close as possible to 1920x1080px.

### Videos

Screenly Pro supports all major video formats and automatically encodes them for the best possible playback fidelity on your screen.

Screenly OSE (or the underlaying video player, [omxplayer](https://github.com/huceke/omxplayer)) is pretty picky abut video content. In order for videos to be properly played, they must be encoded as H264 MPEG4 videos. If not, it's likely that the videos won't show up at all.

As long as you properly encode your videos, Screenly OSE can handle 1080p videos beautifully.

### Websites

Screenly is capable of rendering most websites. However, if the website uses too much JavaScript the result is likely to suffer. To get the best possible result, keep the website as lean as possible and optimize it for 1920x1080.

---

## Version specific FAQs

 * [Screenly OSE FAQ](https://support.screenly.io/hc/en-us/sections/202652366-Frequently-Asked-Questions-FAQ-)
 * [Screenly Pro FAQ](https://support.screenly.io/hc/en-us/sections/202652326-Frequently-Asked-Questions-FAQ-)
