---
layout: innerpage
permalink: /getting-started/
title: Getting started with Screenly Pro
description: A quick introduction on how to get started with Screenly Pro for digital signage.
---

# An introduction to Screenly Pro

If you still haven't managed to get Screenly Pro running on your Raspberry Pi, please check out our video [How do I install Screenly on my Raspberry Pi?](https://www.youtube.com/watch?v=RE_C_n6dhyo)

This document describes use of Screenly Pro. Here's a short overview of the key concepts in the system:

* **Screens** are Raspberry Pis with attached monitors and an internet connection, paired with your Screenly Pro account
* organize Screens into **Groups** for efficient scheduling
* **Assets** are pieces of media: web pages, images, videos - uploaded to your Screenly account
* make **Playlists** of Assets to distribute assets to Groups of Screens

You can manage (list, add, change, remove) these entities on their respective tabs.

<iframe width="560" height="315" src="https://www.youtube.com/embed/LVMQMHci6DI?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>

### Signup, Login

Go to [https://login.screenlyapp.com](https://login.screenlyapp.com), click *Sign Up* and follow the instructions. When you're done, log in. If you ever forget your password, there's a Password Reset option.


### Screens

To set up a Screen, you need the following hardware:

* A Raspberry Pi (Model B 3 or later), with an available Internet connection
* A monitor attached to the Pi's HDMI port
* A micro SD card (8Gb or larger)
* A computer with an SD card reader (built-in or USB-based)

Go to the *Screens* tab, click *Add Screen*, and follow the instructions. When you're done, the Screen will show up under the *Screens* tab, where you can see a map and a list of your Screens.
Click on a screen to see its details, including the Assets currently scheduled to play on it. You can also change a Screens' name and location, disable it to stop playing Assets, or revoke it, removing it from your account.

### Groups

<iframe width="560" height="315" src="https://www.youtube.com/embed/g4OCLck__wM?list=PLLQemgvrHCSl_WUjAuChZDJpu3wMAfo43" frameborder="0" allowfullscreen></iframe>

Use Groups of Screens to schedule Playlists of Assets to multiple Screens efficiently. Navigate to the *Groups* tab to manage them. You can change a Group's name and the Screens that belong to it.

There's one Group by default, called *All Screens*, that, unsurprisingly, contains all your screens. You can't change that one.


### Assets

<iframe width="560" height="315" src="https://www.youtube.com/embed/cBVrnhGu7IY?list=PLLQemgvrHCSl_WUjAuChZDJpu3wMAfo43" frameborder="0" allowfullscreen></iframe>

These are actual the pieces of media displayed by your screens.

On the *Assets* tab, click *Add Asset*. Screenly supports web pages, images, and videos. If you would like to add a web page, or your media is available on the web, just type or paste the link into the URL field and click Save. If the image or video is on your computer, you can *Upload* it. Videos are automatically transcoded to the best format for the Raspberry Pi.

You can edit an Asset to change its title and (for images and web pages) duration.



### Playlists

<iframe width="560" height="315" src="https://www.youtube.com/embed/A2u9SgjTBno?list=PLLQemgvrHCSl_WUjAuChZDJpu3wMAfo43" frameborder="0" allowfullscreen></iframe>

Organize Assets into Playlists to schedule them on Groups of Screens.

Edit playlists to change their title, start and end date, the Groups of Screens they will play on, and the Assets they include.

By default, there's a *Play on All Screens* Playlist. Any assets added to this playlist will be automatically scheduled to play on all of your Screens.
