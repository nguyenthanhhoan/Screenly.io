---
layout: innerpage
permalink: /use-cases/dashboard/hostedgraphite/
title: Using HostedGraphite with Screenly
description: HostedGraphite is a great service for graphing and visualizing all sort of data. Here's how you can use it with Screenly.
track_links:
  - "#sign-up, Clicked Sign Up, marketing_site, use_case_hostedgraphite_bottom"
---

# HostedGraphite and Screenly

[HostedGraphite](https://www.hostedgraphite.com/) as the name implies, offers a hosted [Graphite](http://graphite.wikidot.com/) solution. As a customer, you also get access to [Grafana](http://grafana.org/), [Statsd](https://github.com/etsy/statsd), [Tasseo](https://github.com/obfuscurity/tasseo) and other powerful tools.

Regardless of if you're trying to plot business metric, performance metrics or system stats, HostedGraphite is a great tool to have in your toolkit.

![HostedGraphite on Screenly]({% asset_path "hostedgraphite_on_screenly.png" %})

## How to use HostedGraphite with Screenly

Once you've started pushing data to HostedGraphite, you need to create a dashboard. Our preference for this is to use Grafana, as it looks a lot better than Graphite. Simply follow the [Grafana dashboard guide](http://docs.hostedgraphite.com/dashboards/grafana-dashboards.html) to create a dashboard.

With your dashboard(s) created, you need to add them to Screenly. To do this, you need to use the *'Share temp copy'* feature in the user interface. This will generate a secret URL (much like we did in our [Nagios]({{site.url}}/use-cases/dashboard/nagios/) guide).

![Share temporary copy]({% asset_path "hostedgraphite_share_temp_copy.png" %})

Once you have your secret URL, just go ahead and add it as an asset in Screenly.

## Tips for using HostedGraphite/Grafana with Screenly

 * Use dedicated Dashboards for Screenly.
  * Since Screenly using 1920x1080px as resolution, you should optimize your dashboards for this resolution.
  * A good rule of thumb is that three rows that are each 300px high will fit well.
 * Hide the controllers to save screen space.
  * To do this, to to *'Configure dashboard'* -> *'Hide controls'*.
 * You can create multiple dashboards.
  * Perhaps you want one for marketing, and one for sales performance.

## Get started

Ready to give Screenly a shot? <a id="sign-up" href="https://login.screenlyapp.com/signup">Sign up for Screenly Pro</a>.

## More use cases

Interested in learning more about other use cases? Check out our [use cases page]({{site.url}}/use-cases/).
