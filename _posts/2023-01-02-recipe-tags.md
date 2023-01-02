---
layout: post
title: "Adding custom tags for recipes to Jekyll"
author: "Landon"
tags:
- meta
- food
- engineering
---

My friend Jiahui decided to organize a coworking session today, so I took the opportunity to do some work on this blog and put together a new page listing all of the recipes I've digitized. I also went ahead and split each of the posts that had multiple recipes into a post per recipe. You can find the list of recipes at [/recipes](/recipes), or from the top bar above.

This process was a lot more challenging than anticipated, because Liquid is only a markdown language, not a real language. Feel free to just check out the [source](https://github.com/lycarter/blog/blob/master/static/recipes.html) or the commit [`3f6ccb6`](https://github.com/lycarter/blog/commit/3f6ccb6800d9fdf842520288c8bf0c680b60eed1) where I added the working version of the page. Essentially, I added new data to each page, and then grabbed that from each post to form a list of recipe tags. From there, I made another list with a list of each post containing that tag for each tag - basically, a map, but just done by matching indexes. It's a bit hacky, but worked in the end. From there, I just customized the html and templating I'd written for the original [/tags](/tags) page.

In future coworking sessions, if I don't have much to do, I'll take the time to just write up some of the old recipes I've got written down but not yet digitized. Right now there are 20 written up, I have about another 20-30 written down in my notebook, plus another 10-15 in a recipe box my mom got me for Christmas in 2021. If anyone has any recipe requests, feel free to reach out.

As always, thanks for reading! :)