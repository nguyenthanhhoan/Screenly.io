---
layout: innerpage
permalink: /use-cases/dashboard/munin/
title: Using Munin with Screenly
description: Munin is a popular tool for monitoring your servers. Using Screenly you can easily put those graphs up on the big wall.
track_links:
  - "#sign-up, Clicked Sign Up, marketing_site, use_case_munin_bottom"
---

# Using Munin with Screenly
Along with [Nagios]({{site.url}}/use-cases/dashboard/nagios/), Munin is likely one of the most popular server monitoring tools. In part, this is because of how easy it is to get up and running with. On most Linux and BSD systems, Munin is usually just a single command away.

Once you've started collecting data in Munin, chances are you want to keep an eye on it. That's where Screenly comes into play.

![Munin on Screenly]({% asset_path "munin_on_screenly.png" %})

Thanks to the fact that Screenly supports viewing web resources out-of-the-box, it is very simple to add your various graphs from Munin to Screenly.

If you however are using some kind of authentication for your Munin pages, you might want to take a look at how to create a 'Secret URL' from the [Nagios]({{site.url}}/use-cases/dashboard/nagios/) documentation.

## Tips for using Munin with Screenly

* You can add multiple Munin graphs to Screenly. Perhaps you want one for CPU usage and another one for memory usage.
* The individual resource pages make great views in Screenly.
* Munin can be integrated directly with Nagios.
* You can [aggregate](http://guide.munin-monitoring.org/en/latest/tutorial/advanced-features.html#aggregate-graphs) multiple graphs in Munin to create great overviews.

## Get started

Ready to give Screenly a shot? <a id="sign-up" href="https://login.screenlyapp.com/signup">Sign up for Screenly Pro</a>.

## More use cases

Want to learn more about other use cases? Check out our [use cases page]({{site.url}}/use-cases/).
