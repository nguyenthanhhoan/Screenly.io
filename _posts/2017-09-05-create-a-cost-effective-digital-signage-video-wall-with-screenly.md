---
group: blog
layout: post
title-short: Create a cost effective digital signage video wall with Screenly
title: Create a cost effective digital signage video wall with Screenly
tags: [Raspberry Pi, Digital Signage, Video Wall, DIY, Open Source]
author: vpetersson
category: Tech
medium-url: https://news.screenly.io/create-a-cost-effective-digital-signage-video-wall-with-screenly-9c2f10343dcf
class: blog post
description: We recognised that while most enterprises would benefit from video walls, few can afford them. To resolve the gaping need for more digital signage, we provide a simple, affordable solution - available in both commercial and open source versions. Sign up for a free Screenly account.
---

# Create a cost effective digital signage video wall with Screenly
![Create a cost effective digital signage video wall with Screenly]({% asset_path "blog/2-by-2-video-wall.png" %})*Create a cost effective digital signage video wall with Screenly*

If you’ve ever entered the headquarters for a trendy company or a flagship retail store, you have most likely seen video walls. They come in all shapes and sizes, but what they have in common is that if they tend to stand out. Another thing that they have in common is that they come with a hefty price tag.

The traditional signage companies will try to sell you extremely complex solutions that can be configured all sorts of ways. How about a T-shaped sign with 8k resolution? While this might be desirable for 0.01% of the market, such as the flagship store for a luxury brand, the reality is that it isn’t viable for the vast majority of users. Here’s why:

* It’s extremely expensive to purchase the hardware and software. On top of that comes the installation, consultants and support contracts to get the system to operate the way you want it to.

* Creating 4k and 8k content is very expensive. If you’re dealing with non-standard resolutions (i.e. non-16:9), it tends to get even more expensive. While 4k and 8k are trendy buzz word in the digital signage industry, and bloggers and journalists love to write about it, the reality is that the average business struggles to even get their video content in full HD.

At [Screenly](https://www.screenly.io), our value proposition is to make digital signage easy. We don’t claim to be able to support every single edge case (but you can do some pretty fancy things with our [API](https://www.screenly.io/api/)). What we aim to solve is the needs for 80% of the market. For the vast majority of digital signage users, all they need to do is to manage content for 5–100 screens remotely using a simple interface. Why shouldn’t the same be true for video walls?

If you agree with our hypothesis that 4k and 8k content is hard to come by, why would a video wall be any different than a regular player? A video wall is really just a digital signage player projecting content to a grid of screens.

We’ve been using the Raspberry Pi for years now as our digital signage player. It’s a great little device that works great for digital signage (and there are over 10,000 Screenly players running around the world).

Now you may ask, how would I be able to create a video wall using the Raspberry Pi? After all, it only has one HDMI port. This is a very good question. Fortunately there is an easy answer to this question.

As it turns out, there are a vast number of products on the market that can take a single HDMI input and split it out to multiple screens. The [Gefen HD Video Wall Controller](http://www.gefen.com/product/hd-video-wall-controller-EXT-HD-VWC-144) is one of these devices, and it [retails for about $1,300](https://www.bhphotovideo.com/c/product/1029279-REG/gefen_ext_hd_vwc_144_hd_video_wall_controller.html) at the moment[1]. If you think that’s hefty, take a look at the pricing for video walls from the traditional digital signage companies. Oh right, they don’t even publish their prices for them…wonder why.

It should be said that these configurations would only work in a 2x2 grid configuration. A 4x4 configuration may even work depending on the size of your monitors as you’re pushing the limit where full HD content starts to become pixelated/blurry.

From Screenly’s perspective, this would work like any other player. There are no extra licenses to pay, or hidden fees involved. Oh, and did we mention that this works both for [Screenly Pro](https://www.screenly.io/tour) (our commercial version) and [Screenly OSE](https://www.screenly.io/ose) (our open source version)?

Don’t have a Screenly account yet? Sign up for one for free [here](https://login.screenlyapp.com/signup).

*[1] We don’t endorse the Gefen HD Video Wall Controller in particular, it just serves as an illustration.*
