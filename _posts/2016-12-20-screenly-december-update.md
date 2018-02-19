---
group: blog
layout: post
title-short: Screenly December Update
title: Screenly December Update
tags: [Docker, Kubernetes, Digital Signage, IoT, Screenly Newsletter]
author: vpetersson
category: Screenly Digest
medium-url: https://news.screenly.io/screenly-december-update-a95c34c7b6a2
class: blog post
description: The Screenly team has improved scalability and infrastructure of our digital signage platform. From deciding to release Screenly V2 player Alpha soon to planning out the year ahead, the team has much to anticipate.
---

![]({% asset_path "blog/digital-signage-made-easy.png" %})

# Screenly December Update

Screenly December Update

Since the last update, we’ve been working mostly behind the scenes to improve the scalability elements of Screenly in order to keep up with our growth. That means spending time improving our server infrastructure. Beyond that we’ve made a few visual updates. Most of the exciting work has gone into the much awaited Screenly V2 player. Let’s dive into what we have done.

### Screenly V2 Alpha is a go

We are currently in the process of testing our Screenly V2 Alpha release with a few clients. In the near future, we will start opening up the to more customers.

### Improved payment system

As mentioned in the [last update](https://news.screenly.io/screenly-september-update-47bbade56ec1), we are performing an overhaul to our billing system. There are lots of benefits to the update. Here are some things you may want to pay attention to.

* We’ve made numerous visual improvements to our subscription module to make it more intuitive to manage your plans and billing.

* In the past, additional screens (i.e. screens exceeding the ones included in your plan) were charged retroactively. This caused confusion for some users. Going forward, extra screens are now charged in the same way as the regular plan.

* When you add a screen that exceeds that number of included screens in your plan, you will be prompted that this will impact your monthly charge.

These updates will go live during December.

### Improved Infrastructure

Running a large-scale IoT infrastructure isn’t easy, and it requires a lot of engineering resources to work well. This is why a lot of the effort when it comes to building Screenly this month has been dedicated towards the building of a robust and scalable infrastructure.

Since the early days of Screenly, we have been using technologies such as [Docker](https://www.docker.com/) to build, ship, and test our infrastructure. In recent weeks, we have taken this one step further and have started moving our infrastructure over to [Kubernetes](http://kubernetes.io/) hosted on Google Cloud. For those of you not familiar with Kubernetes, it is a cloud orchestration tool that builds upon 15 years of experience of running production workloads at Google.

As part of moving to Kubernetes, we have also adopted [Deis](https://deis.com/), which is a Platform-as-a-Service (PaaS) sitting on top of Kubernetes. By tapping into Kubernetes, we are able to accomplish more with less resources, so that we can focus on building the world’s greatest digital signage platform.

### Screenly Summit

Everyone involved with Screenly works remotely. This is a core part of our culture and it works great. While we talk every day, some people have never met in person despite working together for over a year. This year we decided to bring everyone together for a Screenly Summit.

We rented a house in Croatia for a week and flew everyone in. It was a great success. After spending a week working and socializing, we were able to improve the team spirit even further. During the Summit, we also drew up the roadmap for the next 12 months. There are lots of exciting ideas on this roadmap and we are excited to share them with you once they are ready.

If you’re curious about how we work, read [our article on just that](https://news.screenly.io/how-we-work-at-screenly-8aac8c404327?source=collection_home---4------2----------).

### Update on Screenly Support

If you’ve opened a support ticket in the last few weeks, chances are that it was responded to by Screenly’s new community manager Shelly. She will be working on improving both our support, as well as handling part of our social media efforts.

As part of this, you may have noticed that we’ve added a number of additional articles to our support portal. We have now successfully moved over all our old FAQ to the [support portal](https://support.screenly.io/) and are now starting to add more content including new FAQ entries and articles.

### Screenly News Archive

We have received a number of questions in the past about where you can read about the latest updates to Screenly. The natural answer was to look in your mailbox for the updates. However, we have now started a posting these updates on our Medium page at [news.screenly.io](https://news.screenly.io). If you ever want to look up any of our previous updates, or simply prefer to read the updates in the comfort of your browser, head over to [news.screenly.io](https://news.screenly.io/).

### Experimental support for Hidden SSID and open WiFis

Over the years, we’ve run into a lot of different network configurations. On the WiFi side of things, two common feature requests have been to add the ability for hidden SSIDs as well as open WiFis (i.e. WiFis without passwords). We are now happy to announce experimental support for both [hidden SSID](https://support.screenly.io/hc/en-us/articles/218364983-Can-I-connect-to-a-hidden-SSID-WiFi-Access-Point-) and [open WiFis](https://support.screenly.io/hc/en-us/articles/218052563-How-do-I-configure-WiFi-for-an-open-network-).

### Resources

* [Building an advertisement network with Screenly](https://www.skillshare.com/classes/business/building-an-advertising-network-with-screenly/564268496) with Philip ‘dm’ Campbell

* What tech dashboards are you using at your office? Please take our [dashboard survey](https://docs.google.com/forms/d/e/1FAIpQLSfzS9nmIo-piVCvExn1A9jo8J3CrO79ZQas3gxL4tPC7bmcNA/viewform).
