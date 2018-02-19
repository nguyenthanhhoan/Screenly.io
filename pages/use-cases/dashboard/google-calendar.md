---
layout: innerpage
permalink: /use-cases/dashboard/google-calendar/
title: Using Google Calendar with Screenly
description: Google Calendar is probably the most popular Calendar tools around. This guide will show you how to use Google Calendar with Screenly.
track_links:
  - "#sign-up, Clicked Sign Up, marketing_site, use_case_google_calendar_bottom"
---

# Google Calendar and Screenly

Google Calendar is likely one of the most popular calendar tools for both individuals and modern businesses. In this guide we will walk you through how to set up and create your Google Calendar dashboard such that you can display your calendar on a big wall.

While you might not want to have your private calendar up on the wall, it would make a lot of sense for a team calendar. Perhaps you have a shared calendar for company events (possibly connected to your CRM).

When you're done, you'll have a monthly view of your calendar. Hopefully it is not as empty as the one below.

![Google Calendar on Screenly]({% asset_path "google_calendar_on_screenly.png" %})

## Create your calendar dashboard

Before we begin, you will need three things:

 * A Google calendar you want to share. This calendar must be 'published' (i.e. be visible without having to be logged in).
 * A place to store and serve a regular HTML page. Most web hosting services will do (even Dropbox's '[public folder](https://www.dropbox.com/help/16)' works).
 * Very limited knowledge of HTML.

### Configure your Google Calendar

The first step is to go to your [Google Calendar](https://calendar.google.com). Next, locate your calendar in the left-hand side and select *'Calendar settings'*.

![Google Calendar]({% asset_path "google_calendar_settings.png" %})

You may now need to customize the permission of your calendar such that it becomes publicly accessible under *'Share this calendar'* and *'Make this calendar public'*.

When you're done, click the link that says *'Customize the color, size, and other options'*.

![Google Calendar Settings]({% asset_path "google_customize_calendar.png" %})

This will take you to a page that allows you to customize the look and feel of an embedded calendar. This is what we will use as the basis for our Screenly calendar.

![Google Calendar Detailed Settings]({% asset_path "google_customize_calendar_detailed.png" %})

On this page, we recommend that you make the following changes:

 * Under *'Show'*, deselect all items.
 * Set the *'Width'* to *'1920'*.
 * Set the *'Height'* to *'1080'*.
 * Leave *'Default View'* to *'Month'* to get a good overview.
 * Set *'Week Starts On'*, *'Language'*, and *'Calendars to Display'* according to your preferences.

When done, you need to copy the HTML on the top. It should look something like this:

    <iframe src="https://www.google.com/calendar/embed?[...]" width="1920" height="1080" frameborder="0" scrolling="no"></iframe>

### Create your web page

You now need to create the actual HTML page that we will add to Screenly. This page needs to be publicly accessible. If you're using Dropbox to serve this file, you need to put the file in your 'Public' folder (you can get the URL by right-clicking and select 'Copy Public URL').

Regardless of what way you're using, you need to create a file with the HTML snippet from above and wrap it in an `<html>` tag as follows:

    <html>
        <iframe src="https://www.google.com/calendar/embed?[...]" width="1920" height="1080" frameborder="0" scrolling="no"></iframe>
    </html>

With this done, save the file and try browsing this URL using your web browser. Use 'Private' or 'Incognito' mode in your browser to make sure it will work even when you're not logged in.

Assuming this worked out, you can now add the public URL of your new page as an asset in Screenly.

## Get started

Ready to give Screenly a shot? <a id="sign-up" href="https://login.screenlyapp.com/signup">Sign up for Screenly Pro</a>.

## More use cases

Want to learn more about other use cases? Check out our [use cases page]({{site.url}}/use-cases/).
