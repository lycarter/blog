---
layout: post
title: "Copper Pan Restoration via Electroplating"
author: "Landon"
tags:
- engineering
gallery: true
---

## Introduction

Copper pans are the Rolexes of cookware (silver pans are the Richard Milles) - they're beautiful *and* immensely functional. There are a few features that you want in an ideal piece of cookware:
- High thermal conductivity to provide even heating
- High thermal mass to prevent temperature fluctuations

Copper has a thermal conductivity roughly 2-3x that of aluminum, and about 25x the thermal conductivity of stainless steel (that's why the best stainless steel pans are clad around an aluminum core, for better heat distribution). Copper also has a specific heat density about 1.5x that of aluminum and only a bit lower than stainless steel or cast iron, which means that it maintains heat about as well as an aluminum pan 1.5x as thick. Overall, [this article](https://www.cookingforengineers.com/article/120/Common-Materials-of-Cookware) does a good job of summarizing some of the pros and cons. Silver is the only superior material across the board, but is about 20x as expensive as copper, which itself is already almost 10x the cost of aluminum.

So, what is an engineer chef to do? I want the best (practical) performance, but new copper pans run about $300-600/pan. Additionally, thicker is clearly better for our thermal density part of the equation, and modern copper cookware doesn't tend to be as thick as some vintage pieces. [This article](https://www.vintagefrenchcopper.com/buyers-guide/frequently-asked-questions/) from Vintage French Copper, a lovely little blog about collecting copper cookware, does a good job of summarizing the impact of thickness on collectability and usability. To that end, the answer I came up with was to purchase some vintage copper cookware online. I got a few pieces - a set of beautiful, thick saucepans from 12cm to 20cm, a small oval fish pan, a large skillet, a medium-sized [Windsor](https://www.vintagefrenchcopper.com/2020/11/guest-post-a-tale-of-three-windsors/), and a medium-sized saute pan. The saucepans were all nickel-lined, while the rest were all tin-lined - of those, the Windsor and the saute pan were in dire need of retinning, and I overheated the skillet on my very first time using it, melting the tin and ruining the surface (in retrospect, I wonder if this was properly tinned at all), which left me with 3 pans to attempt to repair.

## Linings

We haven't talked much about the linings for copper cookware - copper itself is reactive and would easily tarnish or leech copper into the food you cook if you were to cook directly on the copper (especially with acidic foods). Therefore, outside of a few very niche applications, copper cookware is lined - there are a few options for what material they're lined with, each with tradeoffs and benefits.

- Tin: This is the most "classic". It's supposed to be fairly nonstick, and is a very thin coating which doesn't impact the thermal conductivity very much. Unfortunately, tin has a melting point of about 450 °F, which is easily reached on the stove. If the tin lining becomes damaged, copper pots can be re-tinned professionally (doing this at home is a bit out of the question for an NYC apartment, due to the high temperatures and fumes).
- Stainless Steel: This is a very common option on modern cookware - it's easy to maintain, though almost impossible to repair if truly damaged. This can also impinge the thermal conductivity we value so much in copper cookware if the lining is too thick.
- Silver: This is arguably the best option, but is quite rare, and generally carries all the same issues as pure-silver cookware: it's crazy expensive.
- Nickel: This is also fairly uncommon, presumably because it's a bit harder to apply (industrially) than tin, and because some people have nickel sensitivities that make it unsuitable for use. However, it can be applied thinly, and is harder and has a significantly higher melting temperature than tin. In my opinion, if none of the people you regularly cook for have a nickel sensitivity, this is the optimal lining. As a bonus, nickel can be electroplated at home fairly easily.

## Prepping the pans

That brings us to the bulk of this post - I had 3 pans in need of re-lining, and professional retinning services run about $80/pan, a bit steep when I've already paid about $100/pan on eBay. $180/pan is still an overall better deal than new copper, but with nickel as a lining option that can be applied via electroplating, I wanted to try restoring them myself.

The first step was to prepare the interior surface for plating. Plating on top of oil or other crud will immediately flake off, and plating more or less shows the surface finish of the underlying copper, so it was important to get a clean, smooth surface. I mostly used a palm sander, along with a dremel and hand sanding to get into the corners. This was by far the hardest and dirtiest part of the process - there aren't many good options for sanding the interior corner of this shape and getting a good surface finish, other than the aforementioned hand-sanding, which is quite laborious. I'm really curious how professional retinning shops would have handled this - maybe they have some different dremel/grinder attachments?

I didn't aim for a perfect surface finish, but I did try to finish with a palm sander by going through up the grits I had to 300. This left a surface that was smooth to the touch, but definitely not a mirror - I figured it should be similar to any of the aluminum nonstick or cast iron pans that I have, none of them are smooth as a mirror. Overall, this probably took around 2-3 hours per pan, plus cleanup time.

## Electroplating

I did a bunch of research on nickel electroplating - there's a [fantastic handbook](https://nickelinstitute.org/media/2323/nph_141015.pdf) about the process that goes through all of the important information - electroplating solutions, voltage and current calculations, etc. It basically boils down to a few key aspects: having an acidic electrolyte solution of nickel (different additives, different nickel salts, and different acids all have effects on the surface finish and efficiency of the process). These solutions can be purchased commercially, but in the interest of doing things as cheaply as possible, I elected to make my own solution from vinegar (acetic acid), which would produce a nickel acetate solution. From there, it's basically just apply voltage in the right direction and you wind up with nickel on your pot. There are, of course, some process variables that will impact the result. Here are the steps I took:

### Making the electroplating solution
As I mentioned, the electroplating solution can be puchased commercially, but I elected to make one by electrolysing nickel in acetic acid. I bought a 100g sheet of pure nickel online and cut it into a few strips to use as cathodes/anodes. To create the solution, I took one strip each as a cathode and an anode, and ran current through them. TODO<fill in details>. 

### Applying the nickel

After the solution was prepared, the final step was to actually electroplate the pans. Normally the part to be electroplated is suspended in a jar of the electroplating solution, along with a nickel anode, but since I only wanted to electroplate the inside of the copper pans, and because they were so large, I elected for the pans to be the vessel itself. Essentially, I poured the electroplating solution into the pans, then suspended a copper anode in the solution without touching the pan. I made contact to the pan by clamping on the negative lead to the bottom of the handle, to ensure it wouldn't leave marks in any visible locations. There were two main challenges I ran into while performing the electroplating: bubble formation and uneven current flux.

Hydrogen gas forms while electroplating, and the bubbles tend to stick to the pan, which leads to pitting and a generally uneven surface finish. At first, I tried lowering the current to prevent the bubbles from forming so quickly, and to agitate the solution manually to remove the bubbles, but eventually I just got a stir plate that I could set and forget. Interestingly, the stir bar left a mark on the finish whenever it was spinning, which luckily doesn't affect the function at all.

The second challenge I had to work through was uneven current flux - electroplating thickness is directly proportional to current flux, and current flux is inversely proportional to resistance. In this setup, the resistance is basically proportional to distance, so adding in the standard 1/r^2 areal propagation, I'm pretty sure the coating thickness is proportional to 1/r^3 (where r is the distance from the anode). Basically, as you get further away from the anode, the amount of nickel being plated drops off dramatically. To combat this, I had to move the anode around to ensure different areas of the pan received roughly equal coating thickness - getting into the corners was particularly difficult, so I wound up wrapping an electrolyte-soaked paper towel around the anode, and using that to "paint on" nickel into the corners that were hardest to reach.