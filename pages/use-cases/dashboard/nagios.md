---
layout: innerpage
permalink: /use-cases/dashboard/nagios/
title: Using Nagios with Screenly
description: Nagios is probably one of the most commonly used internal monitoring tools in the DevOps world and Screenly is the perfect tool for displaying your Nagios dashboard.
track_links:
  - "#sign-up, Clicked Sign Up, marketing_site, use_case_nagios_bottom"
---

# Using Nagios with Screenly

If you've spent any time working with development, operations or at a Network Operations Center (NOC), you are most likely familiar with [Nagios](http://www.nagios.com/).

While it might not be the sexiest web app, it is more or less the industry standard for monitoring both physical hardware and services.

Once you have Nagios up and running, you most likely want to display this data on a big screen. This is where Screenly comes into play. Thanks to our powerful digital signage solution, it is both easy and cost effective to provide your team with the dashboard they need.

![Nagios on Screenly]({% asset_path "nagios_on_screenly.png" %})

## Configuring Nagios for Screenly

Since Screenly currently doesn't support authentication, we need to make some minor changes to the Nagios configuration. What we want to accomplish is to create a "secret URL" for Nagios that allows us to view the dashboard without having to authenticate. This is how most dashboard solutions work. This string should be long enough such that someone can't simply guess it.

### Create a "secret URL" for Nagios

If you're using the `nagios3` package on Ubuntu 14.04, Nagios is set up to use Apache and the config file is located in `/etc/nagios3/apache2.conf`. If you're using some other setup for Nagios, you should still be able to draw inspiration from this.

What we will do is to create a reverse proxy using the proxy module in Apache. When someone connects to this URL, Apache will automatically authenticate (using `AuthBasicFake`) and proxy to `/nagios3` (which is the default URI on Ubuntu).

In the example below, the "secret URL" we've created is `/abc123`. This is obiously not a very good secret URL, but should be sufficient to demonstrate the setup.

To authenticate with Nagios, we will use the username "screenly-user" and password "password".

Just open up this file and add the following `Location` block to Apache.


{% highlight apacheconf %}
<Location /abc123>

  # Hard coded credentials
  AuthBasicFake screenly-user password

  ProxyHTMLLinks a href
  ProxyHTMLLinks area href
  ProxyHTMLLinks link href
  ProxyHTMLLinks img src longdesc usemap
  ProxyHTMLLinks object classid codebase data usemap
  ProxyHTMLLinks q cite
  ProxyHTMLLinks blockquote cite
  ProxyHTMLLinks ins cite
  ProxyHTMLLinks del cite
  ProxyHTMLLinks form action
  ProxyHTMLLinks input src usemap
  ProxyHTMLLinks head profile
  ProxyHTMLLinks base href
  ProxyHTMLLinks script src for

  ProxyHTMLEvents onclick ondblclick onmousedown onmouseup \
    onmouseover onmousemove onmouseout onkeypress \
    onkeydown onkeyup onfocus onblur onload \
    onunload onsubmit onreset onselect onchange

  ProxyPass http://localhost/nagios3
  ProxyPassReverse http://localhost/nagios3
  ProxyHTMLEnable On
  ProxyHTMLExtended On
  SetOutputFilter INFLATE;proxy-html;DEFLATE;
  ProxyHTMLURLMap /nagios3 /abc123
</Location>
{% endhighlight %}

The entire config file can be found [here](https://gist.github.com/vpetersson/6b1da35edbe3f7dc7ca4). Also, kudos to [OpCode Solutions](http://opcodesolutions.com/tech/ubuntu-apache-reverse-proxy-rewrite-html-links/) for a good example on Apache proxying with rewrites.

If you're using another web server, such as Nginx, you can most likely accomplish something similar too, but that's outside the scope of this article.

## Tips for using Nagios with Screenly

By default if you just point your browser to Nagios, you would have to click at the link for "Tactical Overview" to get the actual status overview. To mitigate this, you can instead use the `/abc123/cgi-bin/tac.cgi`, which will take you directly to the "Tactical Overview".

## Get started

Ready to give Screenly a shot? <a id="sign-up" href="https://login.screenlyapp.com/signup">Sign up for Screenly Pro</a>.

## More use cases

Want to learn more about other use cases? Check out our [use cases page]({{site.url}}/use-cases/).
