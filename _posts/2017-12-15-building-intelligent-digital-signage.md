---
layout: post
title-short: Building intelligent digital signage with Screenly
title: Building intelligent digital signage with Screenly
tags: [Raspberry Pi, IoT, Internet of Things, API, Docker, Heroku]
author: vpetersson
category: Tech
class: blog post
---

# Building intelligent digital signage for retail

<iframe width="870" height="489" src="https://www.youtube.com/embed/cB7hv5gH-cM" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>

In a recent [guest post](http://www.sixteen-nine.net/2017/10/03/what-iot-can-bring-to-digital-signage-in-retail/) over at Sixteen-Nine, we argued that Internet of Things (IoT) can significantly help improve digital signage. In this article we are going to get our hands dirty and actually implement an example of what we call [Reactive Digital Signage]({{site.url}}/digital-signage-meets-iot).

To make things easy to adopt, we will not use a sensor in this example, but rather use the weather as the input. We will read this over the internet, so there is no need to go out and buy a temperature sensor. The end goal of this article is to display an ad for hot chocolate on the screens. **However**, we will **only** display this when the temperature is below 0C/32F.

The idea with this article is to show you how to do this end-to-end. The concept could be applied to a number of other situations, such as if it is raining, sunny or similar.

Please do note that this article does require a fair amount of technical know-how.

## Big picture overview

There are many ways to accomplish this example. In this article we will rely on a few tools:

 * We will use Python as the programming language
 * We will use [Dark Sky](https://darksky.net/) to get the weather data
 * We will use [Heroku](https://www.heroku.com/) to host the micro service (but there's also a Dockerfile if you want to run it locally)

Before you get started, you will need:

 * A Heroku account (free)
 * A Dark Sky API key (free)
 * A Screenly Pro account (free)
 * The lat/long of the location you want to monitor

The [sample micro service](https://github.com/Screenly/api-example-dynamic-content) that we have written for this article is very simple (~100 lines of Python code).

What it does is fairly straight forward. Every five minutes, it will:

 * Take the lat/long provided and queries Dark Sky's API to get the temperature
 * It then compares the temperature with temperature threshold (in this case 0C)
   * If the temperature is above 0C, it disables the playlist holding the asset(s)
   * If the temperature is below 0C, it enables the playlist holding the asset(s)

## Configuring Screenly

The first things we need to do is to is to upload the actual asset. Perhaps you have some sleek image illustrating a warm and refreshing hot chocolate for cold winter days with a special promo.

Once we've uploaded the asset into your Screenly Pro account, you need to create a playlist. Since we are going to use some API magic to manage this playlist, all we need to do is to create the playlist and make sure that it has a some set of variables to make it active (such as the default setting).

You now need to save the playlist and take note of the playlist id. You can find this in the URL of the asset when you navigate to it. It will look something like this:

https://foobar.screenlyapp.com/manage/playlists/**56dd5fb14226bc001a6005b1**

In this case `56dd5fb14226bc001a6005b1` is the playlist id. Write this down as we will need it for the micro service configuration.

Next we need to get an API key from Screenly. To do this, you need to visit [developer.screenlyapp.com](http://developer.screenlyapp.com/).

![Screenly's API documentation]({% asset_path "blog/swagger_screenshot.png" %})

 * Expand the menu item you see in the center and fill out your username and password and press enter
 * Scroll down to "Response Body" and locate the token. It should say something like:
```
{
  "token": "abc123"
}
```
 * Write down this token (`abc123`) as we will need it later

## Getting your latitude/longitude

If you don't know the lat/long for the city you want the weather for, the easiest way is to simply do a Google search for "lat long for X".

## Getting your Dark Sky API key

To get your Dark Sky API key, go to [darksky.net/dev](https://darksky.net/dev) and sign up / sign in. You will then see your API key listed on the top.

## Create the micro service

As mentioned above, we will be running a small micro service on Heroku that will be responsible for this logic. You can find the entire code base on [Github](https://github.com/Screenly/api-example-dynamic-content). All you need to do is to click at the button below:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/Screenly/api-example-dynamic-content)

(If you prefer to run it on your own servers, there is also a [Docker version available](https://github.com/Screenly/api-example-dynamic-content#docker).)

You will then be presented with this screen:

![Heroku microservice]({% asset_path "blog/heroku_screenshot.png" %})

All you need now is to fill out the information you copied down above and fill it out. When you then press 'Deploy App' and you're good to go!

You can follow the logs by navigating to your app and press "More" -> "View logs" to ensure everything is working.

## Closing notes

The purpose of this article was to illustrate how you can build interactivity into your digital signage deployment. In this article we used temperature as the input, but it could as well have been some other weather condition (such as rain if you're advertising umbrellas) or something completely different (such as a physical sensor).

Hopefully this was useful for you and if you have any questions, drop us a line at [support.screenly.io](https://support.screenly.io).
