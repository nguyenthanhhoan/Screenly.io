---
layout: post
title-short: Screenly OSE 0.12 is out
title: Screenly OSE 0.12 is out
tags: [Raspberry Pi, Screenly OSE]
author: vpetersson
category: Screenly OSE
class: blog post
description: To ensure you the best experience with our IoT services, the Screenly team is constantly improving our digital signage solution. Read up on the technical details of our latest update.
---

# Screenly OSE 0.12 (and 0.12.1) is now out

We're excited to announce version 0.12 (code name [Out ta Get Me](https://www.youtube.com/watch?v=rlA3Fa5bgig)) of Screenly Open Source Edition (OSE). While this release might not look like a major update on the surface, it does include a large number of changes behind the scenes to ensure a smother path forward.

(It should also be said that we released 0.12.1 shortly after the release as we found a bug with the splash screen in 0.12 after we had published the release.)

## We've switched to Flask

When we started out with Screenly OSE, we built it on top of a Python based framework called [Bottle](https://bottlepy.org). The main reason for picking this framework was the simplicity. As we grew however, we frequently hit its limitations.

We recently had an internal discussion about what framework we should move to. The two runner-ups were [Django](https://www.djangoproject.com/) and [Flask](http://flask.pocoo.org/). We ended up going with Flask. While moving to Django would have provided us with a large number of benefits, a migration to Django would require a large amount of the code base to be rewritten. Moving to Flask only required a fairly small rewrite, while still providing us with a much larger set of built-in features and extensions (such as the API documentation below).

## New API documentation

As mentioned in the previous paragraph, one of the reason for moving to Flask was the ability to leverage existing tools better. One of these things we wanted to have support for was automated API documentation. This was completed in this sprint and we now have automatic API documentation thanks to [Swagger](https://swagger.io/).

![Screenly OSE API documentation]({% asset_path "blog/ose-api-docs.png" %})

You can view the API documentation directly either using your own Screenly OSE installation (go to /api/docs or simply visit [ose.demo.screenlyapp.com/api/docs/](http://ose.demo.screenlyapp.com/api/docs/))

## Raspbian Stretch support

Since the last release, Raspbian Stretch was released. This required some updates to our installation script to deal with things like the new way that Stretch deals with networking.

We also decided to switch to Raspbian Stretch (Lite) as the default disk image.

## NOOBS improvements

Since we [added support for NOOBS]({{site.url}}/blog/2017/06/22/screenly-ose-is-now-in-noobs/) a few releases back we discovered that there was a bug if you used a custom network configuration (such as static IP) inside NOOBS. To cope with that, we simply disabled our own network configuration tool if we detected the presence of NOOBS.

## New API calls: next/previous

We believe [Reactive Digital Signage]({{site.url}}/digital-signage-meets-iot/) is a critical part of the future of digital signage. This means that we need to integrate with Internet of Things (IoT) devices and sensors.

With these new API calls, we are able to programmatically switch to the next and previous asset. One thing you can do with this is to control the screen using a sensor. As an example of this, we wrote a simple [example script](https://github.com/PiSupply/Flick/blob/master/bin/flick-screenly-ose.py) for the 3D tracker [Flick](https://www.pi-supply.com/brand/pi-supply/flick/) that we showed at [CamJam](http://camjam.me/). The script allows you to simply waive your hand back and forth to navigate between assets.

We could as well have replaced the Flick with regular buttons. The concept would have been the same. The idea is simply to bring in real world sensors into a digital signage environment without using custom (and expensive) hardware.

## SSH is now disabled by default

Recent Raspbian releases now come with SSH disabled by default. We support this move, as it significantly improves the security of devices out in the wild. As such, all disk images starting this release will have SSH disabled (including NOOBS installations). If you want to enable SSH, please follow [these steps](https://www.raspberrypi.org/documentation/remote-access/ssh/).

## Get started

If you haven't tried Screenly OSE yet, you can either fetch the latest disk image from [Github](https://github.com/Screenly/screenly-ose/releases) or you can use NOOBS to install Screenly OSE. Version 0.12.1 is available through both methods right now.
