---
layout: post
title-short: Design assistance, more on v2 updates and more
title: Design assistance, more on v2 updates and more
tags: [Raspberry Pi, Screenly OSE, Screenly Newsletter]
author: vpetersson
category: Screenly Digest
class: blog post
---

# Design assistance, more on v2 updates and more

## Design service

One common pain point for many digital signage users is that it's difficult to design professional content. Unless you have a designer in-house, it's difficult to create that eye catching content.

This is why we have teamed up with a company called Screen Kinetics to offer you:

* A free social media bundle.
* An exclusive 20% discount on your initial purchase on bespoke design services.

Their portfolio range from templates for common use cases (such as menu boards) to fully custom content.

To learn more about this, visit our [design service page](https://learn.screenly.io/digital-signage-content) and fill out the form.

## Screenly v2 beta

In case you missed it, the beta of our next generation digital signage software player is now open to the public. We are constantly making improvements to this release and are frequently releasing updates. You can learn more about the beta release [here](https://support.screenly.io/hc/en-us/articles/115001603993). Please do note that this is a completely separate disk image.

## Screenly Pro API

Our API is right now in private beta mode and we are close to unveiling it to the general public. Keep an eye on our social media accounts and on our blog for updates and content.

## We're hiring!

Do you want to help shape the future of digital signage? If so, check out our [careers page](https://www.screenly.io/careers/). We're currently looking for a [Junior Sales Executive](https://www.screenly.io/careers/jr-sales-executive/) and a [Designer / Front-end developer](https://www.screenly.io/careers/designer/).

## More screencasts

Since we started publishing our screencasts, we have received great feedback from our users. One of the most popular ones is our [A quick introduction to Screenly Pro's web interface](https://youtu.be/LVMQMHci6DI), but there are plenty of others.

Here are some of our recent videos:

* [How to create content in Keynote to use with Screenly](https://youtu.be/W6ebyItWMgw)
* [How to create content in Google Slides to use with Screenly](https://youtu.be/nicFeMAHyWM)
* [How to create content in PowerPoint to use with Screenly](https://youtu.be/TNzybJ0mrPI)
* [How to run Screenly OSE on resin.io](https://youtu.be/-P_OZRBZN74) (see more about this further down)

You can find all of our screencasts on our [YouTube channel](https://www.youtube.com/c/screenlydigitalsignage) .

## Screenly Pro and Screenly OSE. What's the difference?

As you probably are aware, Screenly is available in two versions: Screenly Pro and Screenly OSE.

Screenly Pro is our commercial version of Screenly. It's offered as a SaaS/cloud service, where we take care of everything from device management to running the back-end. The idea is to create a set-and-forget digital signage solution for businesses. This also allows you to manage all your devices remotely. All you need to do is to tell what should be displayed where, and we take care of the rest.

Screenly OSE on the other hand is a fully open source version of Screenly. You install it directly onto a Raspberry Pi. You then navigate to the Raspberry Pi on your local network to manage the content. When you want to update the device (both software and security updates), you need to manually do this. There is no cloud element at all. If you have five Screenly OSE installations, you need to manage them all independently since everything is hosted on the Raspberry Pis

Screenly OSE was the original version. We then created Screenly Pro based on customer demand. Ever since we created Screenly Pro, we have been committed to also maintain Screenly OSE. We now have paid developers that keeps working on Screenly OSE. Hence we would not have been able to maintain Screenly OSE if it wasn't for the revenue from Screenly Pro.

You can learn more about the differences between Screenly Pro and Screenly OSE [here](https://www.screenly.io/pricing/).

## Screenly OSE on resin.io

We recently introduce [Screenly OSE 0.13](https://www.screenly.io/blog/2017/11/27/screenly-ose-0-13-adds-support-for-docker/). One of the major new feature we announced was the support for resin.io. For those not familiar with resin.io, it's an innovative IoT device management platform. By teaming up with resin.io, we are able to add new functionalities to Screenly OSE, such as remote device management.

You can learn more about this in our guest post [Deploy a digital signage application with Screenly OSE and resin.io](https://resin.io/blog/deploy-a-digital-signage-application-with-screenly-and-resin/).

## Get some Screenly swag!

We just got a fresh delivery of Screenly stickers and would like to share some of them with you. All you need to take a photo of your Screenly deployment, tweet it and and tag us (@screenlyapp) in it.

## Recent events

### HighLoad++

_(Moscow, Russia)_

![HighLoad++, Moscow]({% asset_path "blog/highload.png" %})

On November 7-8, we attended the developer conference HighLoad++.

Renat, one of our talented developers, gave a presentation at the conference where he shared his experience of IoT security and deployments while working on Screenly. Renat explained Screenly's decision for using Ubuntu Core and explored the advantages of using Ubuntu Core in IoT devices (and digital signage in particular) where the the ease of updates and the high level of security are essential. As Ubuntu Core promotes ideas of atomic updates, various update methods were compared.

You can find the slide deck from the talk [here](https://speakerdeck.com/renat2017/using-ubuntu-core-os-in-production). The recording will be available later.

### Maker Faire

_(Rome, Italy)_

![Maker Faire, Rome]({% asset_path "blog/maker_faire_rome.jpeg" %})
On December 1-3, we were at Maker Faire in Rome together with our friends at resin.io. The event was huge and full of exciting projects and aspiring makers. One of the most exciting things at the event was resin.io's huge new Raspberry Pi cluster (nicknamed The Beast). It's one of the largest Raspberry Pi clusters in the world, featuring over 360 Raspberry Pi 3 Model B, complete with internal networking and custom power supplies. Needless to say, it's an impressive accomplishment.

During the event, we showcased Screenly OSE running on resin.io (see "Screenly OSE on resin.io" above). We also made things even more interesting by demonstrating how the API in Screenly OSE can be used for building interactive signage through external triggers as part of our [reactive digital signage initiative](https://www.screenly.io/digital-signage-meets-iot/).

We also had lots of interesting conversations with both makers and customers and we're looking forward to see all of the ideas come to fruition over the coming months.

