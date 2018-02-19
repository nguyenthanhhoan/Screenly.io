---
layout: innerpage
permalink: /use-cases/dashboard/newrelic/
title: Using New Relic with Screenly
description: New Relic is a widely used Application Performance Monitoring (APM) tool. However, New Relic also offers a great server monitoring tool. Using Screenly, you can get all this valuable data up on the wall and visible to everyone in your organization.
track_links:
  - "#sign-up, Clicked Sign Up, marketing_site, use_case_new_relic_bottom"
---

# Using New Relic with Screenly

New Relic is a great service. The service they're most famous for is the Application Performance Monitoring (APM) tool, which provides you with an impressive amount of insight into how your application is performing and where your bottlenecks are located. In addition to the APM, New Relic also offers a great server monitoring tool.

With the wealth of data, New Relic provides a great overview of how your service is performing. This makes a great dashboard for the office.

There are two ways that you can use New Relic with Screenly. You can either use a dashboard tool like Leftronic that integrates directly with New Relic, or manually create dashboards using New Relic's "Embedded Charts."

![New Relic on Screenly]({% asset_path "new_relic_on_screenly.png" %})

## Automagic

If you're already a user of Leftronic, it is trivial to add New Relic data to your dashboard. You can then simply create a dashboard with this data.

## Manual dashboards

If you prefer to create your own dashboards without using a 3rd party dashboard too, this is possible too. In this example, we'll create a 2x2 grid (i.e. four graphs).

Before you get started, you will need a web server to serve these HTML files from. If you don't have a server readily available, you can even use a Dropbox account and the Public folder (just use 'Copy public URL' to get the URL).

Once you have somewhere to store your HTML file it's time to start generating your graphs. The process for doing this can be found [here](https://docs.newrelic.com/docs/apm/new-relic-apm/ui-functions/embed-creating-iframes-charts). For each graph, you'll get something that looks like this:

{% highlight html %}
<iframe
  src="https://rpm.newrelic.com/public/charts/8WxyOsGabcD"
  width="500"
  height="300"
  scrolling="no"
  frameborder="no">  
</iframe>
{% endhighlight %}

Once you have the four snippets, let's get started with generating your first dashboard.

The first thing we want to do is to create a file called `style.css` that includes the styling for the page (we put this in an separate file such that we don't need to repeat it in every file). Just copy in the following content:

{% highlight css %}
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

html, body {
  height: 1080px;
  width: 1920px;
}

div {
  width: 50%;
  height: 50%;
  float: left;
}
{% endhighlight %}

In the same folder, create your first graph. We can call this one `graph0.html`.

As you can see below, we have modified the `width` and the `height` of each graph such that they are better suited to the resolution (1920x1080) that we will be using.


{% highlight html %}
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  <body>
    <div><iframe src="https://rpm.newrelic.com/public/charts/foobar0" width="900" height="520" scrolling="no" frameborder="no"></iframe></div>
    <div><iframe src="https://rpm.newrelic.com/public/charts/foobar1" width="900" height="520" scrolling="no" frameborder="no"></iframe></div>
    <div><iframe src="https://rpm.newrelic.com/public/charts/foobar2" width="900" height="520" scrolling="no" frameborder="no"></iframe></div>
    <div><iframe src="https://rpm.newrelic.com/public/charts/foobar3" width="900" height="520" scrolling="no" frameborder="no"></iframe></div>
  </body>
</html>
{% endhighlight %}

With this done, all you need to do is to load this page in your web browser, and you should get something that looks like the dashboard on the top of this page.

You can then repeat this for all the dashboards you'd like to create. You can then simply add each of them as assets in Screenly.

## Get started

Ready to give Screenly a shot? <a id="sign-up" href="https://login.screenlyapp.com/signup">Sign up for Screenly Pro</a>.

## More use cases

Curious about other use cases? Check out our [use cases page]({{site.url}}/use-cases/).
