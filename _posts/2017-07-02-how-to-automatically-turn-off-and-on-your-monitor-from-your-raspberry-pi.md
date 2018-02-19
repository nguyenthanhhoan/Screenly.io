---
group: blog
layout: post
title-short: How to automatically turn off and on your monitor from your Raspberry Pi
title: How to automatically turn off and on your monitor from your Raspberry Pi
tags: [Raspberry Pi, Cec, Power Management, Screenly OSE]
author: vpetersson
category: Screenly OSE
medium-url: https://news.screenly.io/how-to-automatically-turn-off-and-on-your-monitor-from-your-raspberry-pi-5f259f40cae5
class: blog post
description: Always seeking to improve your digital signage experience via Raspberry Pi, the Screenly team brings is experimenting with display power management. Choose from these viable options to manage display monitors automatically. Feel free to leave us feedback on this automation process.
---

# How to automatically turn off and on your monitor from your Raspberry Pi

A common question we’ve come across when working on Screenly is how to do power management on the display. When we first started out, we thought this would be a trivial matter to solve. It turned out to be anything but.

![]({% asset_path "blog/metro.jpeg" %})

As it turns out, different monitors behave very differently. What we discovered was that while most monitors would turn off just fine, many monitors ended up either not waking up at all, or alternatively, waking up in the wrong resolution.

This is why we [still do not officially support this in Screenly Pro](https://support.screenly.io/hc/en-us/articles/115000898806-Can-I-set-the-screen-to-turn-on-off-automatically-). If you’re running Screenly Open Source Edition (OSE) however, you’re free to experiment with what works with your screen.

With that caveat out of the way, let’s dive into how you can do power management on your display in Screenly OSE. The three tools that are relevant for this task are vcgencmd, tvservice and cec-client.

It is recommended that you test these commands over an SSH session rather than directly on the Pi.

### vcgencmd

If you’re lucky, your monitor will work well with vcgencmd. All this really does is to toggle the power status of the HDMI port. It will usually work to turn off the monitor this way (as most monitors will automatically go down in sleep mode if the HDMI signal is turned off).

Beware however that some monitors will switch to the another input. Hence, if you have another active input, chances are the monitor will switch to this instead of turning off.

To test this, you can simply try the following to turn the monitor off:

    $ vcgencmd display_power 0

You can then turn it back on again with:

    $ vcgencmd display_power 1

If your monitor turned off and on again with these commands, then congratulations. You can skip to “Automating the power management”. If not, carry on.

### tvservice

Another alternative is to use tvservice. Please note however that this tool often works for turning off the screen, but struggles with getting the monitor back into the right resolution.

To turn off your monitor with tvservice, run:

    $ tvservice --off

You can then wake the monitor back up with:

    $ tvservice --preferred

(Alternatively, you can force a resolution with the -e option.)

If your monitor fails to wake up, don’t freak out. Simply do a reboot, and the display should come back just fine.

### cec-client

The most powerful option is to use the [CEC](https://en.wikipedia.org/wiki/Consumer_Electronics_Control). This will allow you to not only to toggle the power of the monitor, but also a plethora of other things, like controlling the input and volume.

By default, Raspbian does not come with cec-client, so you need to install it first:

    $ apt-get install libcec3 cec-utils

Since CEC enables you to do much more than the other tools, it is also a bit more complicated to use. Moreover, the exact commands can vary depending on your particular configuration, but this should give you an idea of how to use get started.

Turning your monitor off:

    $ echo 'standby 0' | cec-client -s -d 1

Turning your monitor on:

    $ echo 'on 0' | cec-client -s -d 1

Set the Raspberry Pi as input as active (i.e. toggle the TV to switch input):

    $ echo 'as' | cec-client -s -d 1

Set the Raspberry Pi input as an inactive input:

    $ echo 'is' | cec-client -s -d 1

You can learn more about what you can do with CEC by running:

    $ echo h | cec-client -s -d 1
    [...]

You can also find more at [CEC-O-Matic](http://www.cec-o-matic.com/) and in the [libcec faq](http://libcec.pulse-eight.com/faq).

### Automating the power management

Once you’ve figured out how to turn off and on your monitor, it’s time to automate this. The easiest way to do this is to use a cronjob to schedule this. (If you’re not familiar with cronjobs, you can find a quick tutorial [here](https://www.howtoforge.com/a-short-introduction-to-cron-jobs) and use [Cronjob wizard](https://crontab-generator.org/) to generate a cronjob.)

For instance, if we want to turn off our monitor using vcgencmd at 8PM and turn it back on at 7AM on weekdays, we would create two cronjobs like this:

    # Turn monitor on
    0 7  * * 1-5 /usr/bin/vcgencmd display_power 1

    # Turn monitor off
    0 20 * * 1-5 /usr/bin/vcgencmd display_power 0

If you’re using a more complicated sequence of commands with cec-client, it would be advised to put them in a shell script that you can then in turn call on from the crontab.

Did this work well for you? Please post a comment and let us know what worked for you.
