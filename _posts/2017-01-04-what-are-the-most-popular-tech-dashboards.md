---
group: blog
layout: post
title-short: What are the most popular (tech) dashboards?
title: What are the most popular (tech) dashboards?
tags: [DevOps, Dashboard, Kibana, Grafana]
author: vpetersson
category: Tech
medium-url: https://news.screenly.io/what-are-the-most-popular-tech-dashboards-f6d2b0edf4b5
class: blog post
description: Since Screenly displays can be used as digital dashboards on office walls, we conducted a survey to see which ones people are using. Here’s our reaction to the results. Find out which of the four most popular Screenly supports.
---

# What are the most popular (tech) dashboards?

Last month we conducted a survey to find out what were the popular dashboards people were using. Yes, it was not the best time of the year to do this, but we were able to reach a reasonable sample size of 57 in the end. (Thanks to our friends at Ubuntu for promoting the survey.)

The goal of the survey was to find out what the most popular tech dashboards that people **actually** are using on their office walls and here are the results:

![Dashboard Survey 2016]({% asset_path "blog/dashboard-survey-2016.png" %})*Dashboard Survey 2016*

*(I’ve uploaded the data to Plotly, so you can explore it yourself [here](https://plot.ly/~vpetersson/3/).)*

Here are some observations:

* A lot of people use multiple dashboards. One user reported using six different tech dashboards. On average, people use two dashboards.

* [Grafana](https://grafana.net/) is much more popular than I expected. My gut feeling tells me that next year it will have become even more popular and a dominant number one.

* I’m surprised by the popularity of [Kibana](https://www.elastic.co/products/kibana) Dashboard.

* My gut feeling tells me that a number of users have switched to Grafana from New Relic and Nagios.

* People who use Zabbix are most likely to **only** use Zabbix whereas users that are using say Grafana are likely to use multiple dashboard software.

From the perspective of [Screenly](https://www.screenly.io), it looks like we have a bit of work to do. One of our vision is to make it the go-to for displaying dashboards in a cost-effective and convenient way using just a Raspberry Pi.

Here’s a current support in Screenly for the top four most popular dashboards:

* **Grafana**: Currently not supported due to authentication issues. This is outlined in [this Github issue](https://github.com/grafana/grafana/issues/7005). We hope to be able to carve out some resources in the near future and contribute to the project.

* **Kibana Dashboard**: Supported depending on your authentication setup. We are looking to add support for Basic Authentication in the near future in Screenly Pro (already added in Screenly OSE).

* **Nagios**: Already supported. You can read more about that [here](https://www.screenly.io/use-cases/dashboard/nagios/). This will be improved with added support for Basic Authentication.

* **New Relic**: Already supported. You can read more about that [here](https://www.screenly.io/use-cases/dashboard/newrelic/). There’s definitely room for improvement, and we hope to work on this in the future.

Thank you for everyone who have participated in the survey!
