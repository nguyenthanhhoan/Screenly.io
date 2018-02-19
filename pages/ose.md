---
layout: innerpage
permalink: /ose/
title: Open Source Edition (OSE)
description: Screenly OSE is the most popular open source digital signage software for the Raspberry Pi. Use it for free (it's a freeware after all) and save money.
track_links:
  - "#top-learn-more, Clicked Learn More, marketing_site, index_top"
  - "#live-demo, Clicked OSE Demo, marketing_site, ose_top"
  - "#download-mirror-github, Downloaded OSE, marketing_site, ose_middle, github"
  - "#tour, Clicked Tour, marketing_site, ose_bottom"
  - "#faq, Clicked FAQ, marketing_site, ose_bottom"
  - "#flashing_videoe, Clicked Flashing Video, marketing_site, ose_middle"
  - "#github, Clicked Github, marketing_site, ose_middle"
  - "#getting-started, Clicked Getting Started, marketing_site, ose_middle"
---

# Screenly Open Source Edition
### The leading open source digital signage software for the Raspberry Pi

Screenly OSE, or Open Source Edition, is a free digital signage software backed by the community and maintained by Screenly, Inc.

<iframe width="640" height="360" src="https://www.youtube.com/embed/FQte5yP0azE?rel=0" frameborder="0" allowfullscreen></iframe>

## Impatient?

Want to take Screenly OSE for a spin instead of reading the specs? Then check out the <a id="live-demo" href="http://ose.demo.screenlyapp.com">live demo</a>. Please note that the database is wiped every 30 minutes and that the maximum upload size is 5MB.

## Getting started

### Requirements

Before you begin, you need to make sure you have the following:

* A Raspberry Pi.
  * All models are supported, but a Raspberry Pi 3 Model B is recommended.
* An SD Card (**\>4GB**). Class 10 is highly recommended.
* An HDMI-cable.
* A network connection (see [this](https://support.screenly.io/hc/en-us/articles/115002570873-Can-I-use-Screenly-OSE-in-offline-mode-) page if you want to run in offline mode).
* A keyboard (only required for the installation).
* A monitor/TV that can view full HD (and has HDMI input).

### Option 1: Download the custom image

The by far quickest way to get started with Screenly OSE is to download our custom image. The image is really nothing but a regular Raspbian Wheezy-installation with Screenly installed per the instructions below.

1. Download the custom image from: <a id="download-mirror-github" href="https://github.com/screenly/screenly-ose/releases">Github Releases</a>.

**Please note that this is a different disk image from Screenly Pro. To use Screenly Pro, you must download the image available under 'Add Screen' when logged into your account.**

2. Follow <a id="flashing_video" href="https://www.youtube.com/watch?v=RE_C_n6dhyo">our flashing tutorial</a>.

3. Upon the first boot, Screenly will start automatically and display the splash-screen, a web-page (screenlyapp.com), and the trailer for [Big Buck Bunny](http://www.bigbuckbunny.org/).

The disk image was created for a 4GB SD-card. It is recommended that you use at least an 8GB card. In order to access the tools required, you first disable the video from the web interface (instructions are available on the splash screen). Once the video has stopped playing, press ctrl+alt+F1. This will allow you to login with user 'pi' and the password 'raspberry'. When logged in, simply type `sudo raspi-config` and select 'Expand root file system'. You might also want to change 'overscan' if you have a black border around your screen.

Depending on what image version you are using **SSH may be enabled** on the OS image. Hence it is important that you change the default password.

![Screenly OSE]({% asset_path "screenly-ose.png" %})

### Option 2: Using NOOBS

Screenly OSE is available directly from [NOOBS](https://www.raspberrypi.org/downloads/noobs/). Simply flash out NOOBS to your SD card and select select Screenly OSE. For more information, please see [this article](https://news.screenly.io/screenly-ose-is-now-in-noobs-5e6e0245d868).

### Option 3: Install Screenly OSE yourself

#### Configure the Raspberry Pi

First, flash the SD card and install [Raspbian Stretch Lite](https://www.raspberrypi.org/downloads/raspbian/). Instructions are available [here](https://youtu.be/RE_C_n6dhyo).

On first boot, you should be able to login using the username `pi` and password `raspberry`. Once you've logged in, run `sudo raspi-config)` and make sure you make the following changes:

* Expand the root file system (**required**)
* Disable overscan (depends on your display)
* Change keyboard mapping (optional)
* Change time zone (optional, but Screenly's scheduling uses this)
* Enable SSH (optional)
* Change password for 'pi' user (recommended)
* Once you've made all these changes, you must restart your Raspberry Pi

You may also be interested in the <a id="getting-started" href="{{site.url}}/getting-started/">Getting Started</a>-guide for Screenly Pro.

#### Install Screenly OSE

After you've performed all of the above changes and rebooted, open a
terminal (ctrl+alt+F1) or SSH session and as the user 'pi' run:

{% highlight bash %}
$ bash <(curl -sL https://www.screenly.io/install-ose.sh)
{% endhighlight %}

(If you're running the installation over SSH, running the installation through a `screen` or `tmux` session is highly recommended.)

Assuming everything went well, reboot your system. Screenly should now load.

Upon boot, Screenly's management URL should show up on the screen (e.g. http://aaa.bbb.ccc.ddd:8080). To manage the content, open up this URL on a different computer. Don't try to manage the content directly on the Raspberry Pi using a keyboard and mouse. That won't work.

If you want to dive deeper into Screenly OSE, you'll find the full source code over at <a id="github" href="https://github.com/screenly/screenly-ose">GitHub</a>.

### Option 4: Using resin.io

![Screenly OSE on resin.io]({% asset_path "screenly-ose-on-resin-io.png" %})

resin.io is an innovative IoT management platform. Screenly OSE can run on resin.io. We've outline the required steps in the article [Deploy a digital signage application with Screenly OSE and resin.io](https://resin.io/blog/deploy-a-digital-signage-application-with-screenly-and-resin/). Contrary to the other ways of running Screenly OSE, using resin.io provides the following benefits:

 * Remote access to the web interface and a shell
 * Ability to remotely upgrade devices


## Supported media

Screenly currently three types of media:

* Videos
* Images
* Web-pages

You can find more detail about the supported media types in the [FAQ]({{site.url}}/faq/#content_type).

Also, images and web-pages will be rendered in 1920x1080, so adjust your content for this size.

## Upgrade Screenly

**Note:** Before you upgrade, make sure to read the [release notes](https://github.com/Screenly/screenly-ose/releases).

### Manual upgrade

Login to the system and run (as the user 'pi'):

{% highlight bash %}
$ bash <(curl -sL https://www.screenly.io/install-ose.sh)
{% endhighlight %}

(Same as the installation above.)

### Disk image upgrade

With the introduction of the backup/restore functionality, you could also use the following steps to perform an upgrade:

 * Login to the web interface and download a backup
 * Overwrite the SD card with the latest disk image
 * Restore from your backup through the web interface

The benefit with this approach is that you get a periodic backup, and the ability to easily rotate across SD cards.

## Got questions?
If you still got questions, take a look in our <a id="faq" href="{{site.url}}/faq/">Frequently Asked Questions</a> database.

## Support
For questions, please use the [Raspberry Pi forum thread](https://www.raspberrypi.org/forums/viewtopic.php?f=41&t=12396) or our [support forum](https://support.screenly.io).

## Licensing

Dual License: [GPLv2](http://www.gnu.org/licenses/gpl-2.0.html) and Commercial License.

## Looking for something more?

Screenly Pro has many more features and is easier to install. <a id="tour" href="{{site.url}}/tour/">Check it out</a>!
