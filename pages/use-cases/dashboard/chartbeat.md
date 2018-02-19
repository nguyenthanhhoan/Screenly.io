---
layout: innerpage
permalink: /use-cases/dashboard/chartbeat/
title: Using Chartbeat with Screenly
description: Chartbeat is a popular tool for tracking visitors on your website(s) in real time. Here's how you can use Chartbeat with Screenly.
track_links:
  "#sign-up, Clicked Sign Up, marketing_site, use_case_chartbeat_bottom"
---

# Using Chartbeat with Screenly

[Chartbeat](https://chartbeat.com) is becoming a very popular way of tracking visitors on your web properties in real time. Thanks to Screenly, it is really easy to put your Chartbeat dashboard up on a big screen such that your entire office can quickly check the website status.

![Chartbeat on Screenly]({% asset_path "chartbeat_on_screenly.png" %})

## Pre-requisites

The Chartbeat dashboart is fairly heavy. Hence, we strongly recommend that you use a Raspberry Pi 2 if you're intending to use Chartbeat with Screenly.


## Setting up Chartbeat with Screenly

In order to use Chartbeat with Screenly, you need to generate a "secret link" that has your Chartbeat API key inside of it. You can generate this key by visiting [this](https://chartbeat.com/share/) link.

With the link generated, all you need to do is to add this as an Asset in Screenly, set the duration and schedule it as normal.

If you're getting an error message saying 'browser is not supported' from Chartbeat, you need to append `&skip_browser_check=1` to the URL. For more information about this, please see [this article](http://faq.chartbeat.com/hc/en-us/articles/209548308-SmartTV-Troubles).

## Get started

Ready to give Screenly a shot? <a id="sign-up" href="https://login.screenlyapp.com/signup">Sign up for Screenly Pro</a>.

## More use cases

Curious about other use cases? Check out our [use cases page]({{site.url}}/use-cases/).
