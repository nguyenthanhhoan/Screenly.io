---
layout: post
title-short: Screenly OSE 0.13 is out
title: Screenly 0.13 comes with support for resin.io and more
tags: [Raspberry Pi, Screenly OSE, resin.io, Moby, Balena, API]
author: vpetersson
category: Screenly OSE
class: blog post
description: With its resion.io support and other features, Screenly Open Source Edition brings you seamless usability. Find out how Screenly installations can let you manage the IoT platform more simply than ever.
---

# Screenly OSE 0.13 is out

We're happy to announce the release of Screenly OSE 0.13 (code name [Mr. Brownstone](https://www.youtube.com/watch?v=b5VJa-sYsyU)). The release is now available both through [NOOBS](https://www.raspberrypi.org/downloads/noobs/) and as [a disk image](https://github.com/Screenly/screenly-ose/releases/tag/v0.13). Let's dive into what's new in this release.

## Added support for resin.io

The biggest focus of this release was to add support for [resin.io](https://resin.io). If you're not familiar with resin.io, it's an innovative IoT platform that simplifies deployment and management of IoT devices. We've worked with our friends there to add support for Screenly OSE in their platform. To do this, we had to make a fair amount of changes to Screenly OSE, but it was well worth it as it significantly simplifies the deployment and management of Screenly OSE devices, as well as provide remote access to the management interface. As an added bonus, Screenly OSE can now fully run inside Docker (or Moby to be precise)/[Balena](https://www.balena.io/) on ARM, which is what resin.io uses as a runtime environment.

![Screenly OSE running on resin.io]({% asset_path "blog/screenly-ose-on-resin.png" %})

If you want to learn more about this, we wrote a guest blog post titled [Deploy a digital signage application with Screenly OSE and resin.io](https://resin.io/blog/deploy-a-digital-signage-application-with-screenly-and-resin/) that walks you through the process from scratch. The article even includes a screencast.

## New navigation buttons

In [0.12](https://www.screenly.io/blog/2017/10/26/screenly-ose-0-12-is-out/) we added new API calls for telling the screen to navigate back and forward. This is very handy when you want to extend Screenly OSE with things like physical buttons. In this release we've added buttons to the web interface that allows you to fire off these API calls to demonstrate the functionality.

![Screenly OSE with navigation buttons]({% asset_path "blog/screenly_ose_next_forward.png" %})

## Improved API

As you have likely seen, we've focused a fair amount over the last few sprints on improving both the API and back-end of Screenly OSE. As part of this, we discovered that the `/api/v1/assets` API end-point wasn't well designed as it used `Content-Type: application/x-www-form-urlencoded`. To maintain backward compatibility, we introduced `/api/v1.1/assets`, which is using JSON payloads instead.

You can find the full automated API documentation at [ose.demo.screenlyapp.com/api/docs](http://ose.demo.screenlyapp.com/api/docs/).

## Numerous bugfixes

In addition to the above features, the release also includes various bug fixes. You can learn more about the exact changes in this release on the [Github Release page](https://github.com/Screenly/screenly-ose/releases/tag/v0.13).
