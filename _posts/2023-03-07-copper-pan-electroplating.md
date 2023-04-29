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

So, what is an engineer chef to do? I want the best (practical) performance, but new copper pans run about $300-600/pan. Additionally, thicker is clearly better for our thermal mass part of the equation, and modern copper cookware doesn't tend to be as thick as some vintage pieces. [This article](https://www.vintagefrenchcopper.com/buyers-guide/frequently-asked-questions/) from Vintage French Copper, a lovely little blog about collecting copper cookware, does a good job of summarizing the impact of thickness on collectability and usability. To that end, the answer I came up with was to purchase some vintage copper cookware online. I got a few pieces - a set of beautiful, thick saucepans from 12cm to 20cm, a small oval fish pan, a large shallow-walled frypan, a medium-sized [Windsor](https://www.vintagefrenchcopper.com/2020/11/guest-post-a-tale-of-three-windsors/), and a medium-sized saute pan. The saucepans were all nickel-lined, while the rest were all tin-lined - of those, the Windsor and the saute pan were in dire need of retinning, and I overheated the skillet on my very first time using it, melting the tin and ruining the surface (in retrospect, I wonder if this was properly tinned at all), which left me with 3 pans to attempt to repair.

## Linings

We haven't talked much about the linings for copper cookware - copper itself is reactive and would easily tarnish or leech copper into the food if you were to cook directly on the copper (especially with acidic foods). Therefore, outside of a few very niche applications, copper cookware is lined - there are a few options for what material they're lined with, each with tradeoffs and benefits.

- **Tin:** This is the most "classic". It's supposed to be fairly nonstick, and is a very thin coating which doesn't impact the thermal conductivity very much. Unfortunately, tin has a melting point of about 450 °F, which is easily reached on the stove. If the tin lining becomes damaged, copper pots can be re-tinned professionally (doing this at home is a bit out of the question for an NYC apartment, due to the high temperatures and fumes).
- **Stainless Steel:** This is a very common option on modern cookware - it's easy to maintain, though almost impossible to repair if truly damaged. This can also impinge the thermal conductivity we value so much in copper cookware if the lining is too thick.
- **Silver:** This is arguably the best option, but is quite rare, and generally carries all the same issues as pure-silver cookware: it's crazy expensive.
- **Nickel:** This is also fairly uncommon, presumably because it's a bit harder to apply (industrially) than tin, and because some people have nickel sensitivities that make it unsuitable for use. However, it can be applied thinly, and is harder and has a significantly higher melting temperature than tin. In my opinion, if none of the people you regularly cook for have a nickel sensitivity, this is the optimal lining. As a bonus, nickel can be electroplated at home fairly easily.

## Prepping the pans

That brings us to the bulk of this post - I had 3 pans in need of re-lining, and professional retinning services run about $80/pan, a bit steep when I've already paid about $100/pan on eBay. $180/pan is still an overall better deal than new copper, but with nickel as a lining option that can be applied via electroplating, I wanted to try restoring them myself.

The first step was to prepare the interior surface for plating. Plating on top of oil or other crud will immediately flake off, and plating more or less shows the surface finish of the underlying copper, so it was important to get a clean, smooth surface. I mostly used a palm sander, along with a dremel and hand sanding to get into the corners. This was by far the dirtiest and most difficult part of the process - there aren't many good options for sanding the interior corners of pans and getting a good surface finish, other than the aforementioned hand-sanding, which is quite laborious. I'm really curious how professional retinning shops would have handled this - maybe they have some different dremel/grinder attachments?

I didn't aim for a perfect surface finish, but I did try to finish with a palm sander by going through up the grits I had all the way up to 300. This left a surface that was smooth to the touch, but definitely not a mirror - I figured it should be similar to any of the aluminum nonstick or cast iron pans that I have, none of them are smooth as a mirror. Overall, this probably took around 2-3 hours per pan, plus cleanup time.

<div class="gallery">
<figure name="1" alt="rough surface" caption="The initial surface finish of both the windsor and saute pan were incredibly scratched up and blackened, with plenty of raw copper showing through on the scratched sections."></figure>
<figure name="2" alt="partially fininshed" caption="The palm sander left a decent finish, but it was difficult to get all the way into the corners."></figure>
<figure name="3" alt="totally raw saute" caption="After a few hours of elbow grease, the saute pan looked nice and smooth, with just a tiny bit of residual tin-copper alloy that I couldn't quite grind out of the corners (I decided eventually that it was fine)."></figure>
<figure name="4" alt="totally raw windsor" caption="The windsor, after a few hours of sanding."></figure>
<figure name="5" alt="messed up frypan" caption="The fry pan that I messed up by overheating it on the stove and melting all the tin."></figure>
<figure name="6" alt="raw frypan" caption="The same fry pan, after stripping (and then heating on the stove to drive off all the water after washing it, hence the discoloration)."></figure>
</div>

## Electroplating

I did a bunch of research on nickel electroplating - there's a [fantastic handbook](https://nickelinstitute.org/media/2323/nph_141015.pdf) about the process that goes through all of the important information - electroplating solutions, voltage and current calculations, etc. It basically boils down to having nickel strips, for anodes, a power supply to supply voltage, and an acidic electrolyte solution of nickel. For the electrolyte solution, different additives, different nickel salts, and different acids all can effect the surface finish and efficiency of the process. These solutions can be purchased commercially, but in the interest of doing things as cheaply as possible, I elected to make my own solution from vinegar (acetic acid), which would produce a nickel acetate solution, and if that didn't work well from a surface finish perspective, I could always re-sand the pans and order some commercial electroplating solution. From there, it's basically just apply voltage in the right direction and you wind up with nickel on your pot. There are, of course, some process variables that will impact the result. Here are the steps I took:

### Making the electroplating solution
As I mentioned, the electroplating solution can be puchased commercially, but I elected to make one by electrolysing nickel in acetic acid. I bought a 100g sheet of pure nickel online and cut it into a few strips to use as cathodes/anodes. To create the solution, I took about 1L of 5% white vinegar (the most generic type of vinegar you can get at Costco), poured in about a tablespoon of kosher salt, and applied current across the nickel anode + cathode.

For this, I used a lab power supply, since that was conveniently what I alraedy had, and modulated the voltage and current to keep the temperature of the solution to a reasonable level - I aimed for under 140 °F to keep the vinegar fumes under control, and wound up transferring the setup outside anyway. I started initially at a constant voltage of 30V (the max my power supply could deliver), and 1.9 A. As the nickel salts formed, the conductivity of the solution went up, so after about half an hour, the power supply hit the 3A constant current limit I had set. I modulated the current limit between about 2A and 5A to keep the temperature under 140 °F for a total of about 3h, reducing the anode mass by 9.797g and increasing the cathode mass by 3.059g (mostly due to dendritic nickel growth), for a total dissolved nickel quantity of 6.378g, forming a solution of about 0.1 molar nickel.

<div class="gallery">
<figure name="7" alt="electrolysis setup" caption="The electrolysis setup, notice that neither of the alligator clips are touching the liquid, only the nickel anode and cathode are."></figure>
<figure name="8" alt="hydrogen gas during electrolysis" caption="During electrolysis, hydrogen gas forms, so it's important to ensure decent enough ventillation that it doesn't build up."></figure>
<figure name="9" alt="nickel acetate formation" caption="After only about 10-15 mins, nickel II clearly begins forming as the solution begins turning a turquoise blue-green."></figure>
<figure name="10" alt="outside" caption="I migrated outside after not too long, to dispel the vinegar vapors."></figure>
<figure name="11" alt="anode and cathode" caption="The anode (foreground) was eaten away immensely, while the cathode had dendritic nickel growth."></figure>
</div>

### Applying the nickel

After the solution was prepared, the final step was to actually electroplate the pans. Normally the part to be electroplated is suspended in a jar of the electroplating solution, along with a nickel anode, but since I only wanted to electroplate the inside of the copper pans, and because they were so large, I elected for the pans to be the vessel itself. Essentially, I poured the electroplating solution into the pans, then suspended a copper anode in the solution without touching the pan. I made contact to the pan by clamping on the negative lead to the bottom of the handle, to ensure it wouldn't leave marks in any visible locations. There were two main challenges I ran into while performing the electroplating: bubble formation and uneven current flux.

Hydrogen gas forms while electroplating, and the bubbles tend to stick to the pan, which leads to pitting and a generally uneven surface finish. At first, I tried lowering the current to prevent the bubbles from forming so quickly, and to agitate the solution manually to remove the bubbles, but eventually I just got a stir plate that I could set and forget. Interestingly, the stir bar left a mark on the finish whenever it was spinning, which luckily doesn't affect the function at all.

The second challenge I had to work through was uneven current flux - electroplating thickness is directly proportional to current flux, and current flux is inversely proportional to resistance. In this setup, the resistance is basically proportional to distance, so adding in the standard 1/r^2 areal propagation, I'm pretty sure the coating thickness is proportional to 1/r^3 (where r is the distance from the anode). Basically, as you get further away from the anode, the amount of nickel being plated drops off dramatically. To combat this, I had to move the anode around to ensure different areas of the pan received roughly equal coating thickness - getting into the corners was particularly difficult, so I wound up wrapping an electrolyte-soaked paper towel around the anode, and using that to "paint on" nickel into the corners that were hardest to reach.

While electroplating, I tried to keep the current quite a bit lower than I had while making the electrolyte solution, to help form a more even surface finish. Typical currents are around 1-6A per dm^2, according to the handbook, and I calculated my Windsor pan to have an internal surface area of 4.36 dm^2. However, I kept the current under 1.5A the whole time, due to the uneven current distribution I previously discussed - I wanted to keep the peak current flux well below 6 A/dm^2.

In total, I electroplated for about 1.2 Ah, and the anode mass decreased by 1.963g, for a total estimated plating thickness of about 2.5 μm (based on current + time, I'm assuming the anode mass decreased by more than expected due to pitting and mechanical erosion). I haven't used the pans much since plating, but the process was easy enough that if I notice this thin layer wearing away, I can always re-plate for longer.

I didn't take as detailed notes for the saute pan, but it has an internal surface area of about 7.04 dm^2, and I electroplated it for about 4 Ah, for an estimated total plating thickness of about 5 μm. I didn't take notes on plating time for the fry pan, but it was a similar order of magnitude.

<div class="gallery">
<figure name="12" alt="windsor setup" caption="The pan was shimmed to be level, and then filled to the brim with the electrolyte solution. The nickel anode was held above the bottom by a plastic mesh that I had."></figure>
<figure name="13" alt="saute pan setup" caption="For the saute pan, I opted for a slightly different setup, with the anode dangling down above the pan, suspended from a scrap piece of wood. Barely visibile under the anode is the stir bar, and you can see that I raised the pan above the stir plate by means of some 123 blocks."></figure>
<figure name="14" alt="initial results on the windsor" caption="After the first session of electroplating, the windsor looked pretty good aside from the corners where current flux was significantly lower."></figure>
<figure name="15" alt="detail of initial results on the windsor" caption="Close-up details where the corners didn't get very complete coverage."></figure>
<figure name="16" alt="" caption="On the saute pan, you can see exactly where the stir bar was based on the round polished section. Next to it is a small patch of bare copper, where the nickel formation was too fast and began forming dendrites rather than plating evenly - this was covered easily by reducing the current and re-plating."></figure>
<figure name="17" alt="final result" caption="The final result on the windsor, showing some staining and that the corners never got to be perfectly plated. However, this is tremendously more usable than the condition it was in before plating."></figure>
</div>

## Conclusion

After a couple of uses, I haven't noticed the plating wearing off very significantly, but if I notice it wearing off over time, it's pretty easy to re-do or add on to the existing electroplating.

This process has been way easier than expected, although the results definitely aren't quite as beautiful as a professional re-tinning service. I feel like my pans perfectly suit my engineer chef perspective - they're beautiful vintage French heirlooms in some sense, and wacky science project in another sense. My cookware is now beautiful and uniquely mine, so I'm thrilled with it. As always, thanks for reading! :)