---
layout: post
title: "The Drum Scanner Adventure"
author: "Landon"
tags:
- art
- engineering
- travel
gallery: true
---

## Introduction

I introduced the last post with "Copper Pans are the Rolexes of cookware (silver pans are the Richard Milles)". I think it's safe to say that drum scanners are the Richard Milles of film scanners, and although I got one of the lowest-end models ever made, I think it's safe to say that for large format scanning, it's superior to literally every single non-drum-scanner option.

But first: what the heck is a drum scanner?

Film scanners are used to digitize film. They have a method to hold the film, a light source which shines through the film, and a sensor of some sort to detect the light passing through the film. There are generally about 5 categories of film scanners:

### DSLR scanning
The film is placed on a light table of some sort, and you take a picture of it. Most setups will use a macro lens to achieve a higher magnification and a stand to keep everything nice and coplanar. This can be quite fiddly to set up, but the good news is that it's very fast for single-shot images. This doesn't scale very well to large format film, though - you either give up resolution by taking a single photo, or you have to take many photos and stitch them together later. This is popular since it doesn't tend to require much additional equipment to get started.

<div class="gallery">
<figure name="16" alt="dslr scanning" caption="DSLR Scanning (image: KEH)"></figure>
</div>

### Flatbed scanning
When I say the word "scanner", this is the type of thing most people picture. Flatbed film scanners differ from flatbed document scanners only in that they have a light that shines from the top, through the film, rather than shining from next to the sensor to reflect off the document. Scanners capable of 35mm and medium format can be had for pretty cheap ($200 or so), but scanners which support large format start around $800.

<div class="gallery">
<figure name="2023-07-11-drum-scanner-adventure-17.png" alt="flatbed scanning" caption="Flatbed Scanning (image: Epson)"></figure>
</div>

### Dedicated film scanners
There exist dedicated film scanners for 35mm and medium format, which frequently can take an entire roll at once. These work well for bulk scanning, and can frequently have higher resolution and performance than flatbed scanners. They tend to be quite expensive, especially some of the most popular older models. I believe these tend to operate similarly to shrunken-down flatbed scaners, although Nikon advertises that these ship with ED Glass, which indicates there may be a lens between the film and the linear CCD, possibly improving sharpness slightly.

<div class="gallery">
<figure name="18" alt="dedicated film scanner" caption="Dedicated Film Scanner (image: Nikon)"></figure>
</div>

### Hasselblad Flextight / Imacon scanners
~~This is what you'll find if you go to B&H and sort by price decreasing (always a fun activity)~~ Edit: wow, seems like these were discontinued since the last time I did this search a few years ago. Now you find a Blackmagic 4k video film scanner instead. Anyway, these were advertised as "virtual drum scanners" and retailed for about $25,000. As far as I can tell, there are two key features that make these scanners special. First, they have an actual (really high quality) lens between the film and the sensor, rather than using a linear CCD directly the way the flatbed scanners do. Second, rather than scanning film while it's flat, they intentionally curve the film, and as it rotates through the curve, scan only the line which is closest. Since film is relatively stiff, bending it intentionally in one direction pretty much ensures that it won't flex inadvertently in the orthogonal direction (eg, the film forms a cylinder, not a pringle). One of the primary challenges of each of the methods described above is keeping the film flat - it likes to curl up, which means it tends to go out of focus if you're trying to image it with a flat plane of focus. Flatbed scanners and DSLR scanners can make use of wet mounting to seal the film flat against a reference surface (generally, a piece of glass), but you usually have to get a dedicated film carrier for wet mounting and achieving accurate focus can still be a bit fiddly.

<div class="gallery">
<figure name="19" alt="hasselblad flextight" caption="Hasselblad Flextight (image: Qoovee)"></figure>
</div>

### Drum Scanners
Finally, we get to drum scanners. Drum scanners have always been the highest end, highest performanc scanning option, with modern options costing significantly more than the Hasselblad Flextights. Frankly, I had a difficult time finding any actual sales listings - I think I remembered seeing a 1995 listing for $40,000 or so, and [Ken Rockwell](https://www.kenrockwell.com/tech/scantek.htm) claims that Heidelberg drum scanners retailed for $100,000+. More typically, a photo house would own a drum scanner and offer to scan your images on a per-image basis, with price ranging from $35 - $500 _per image scanned_. Imagine paying the same price for a single scan that you would pay for an entire entry DSLR. What makes them so magical?

Drum scanners operate by having an acrylic tube (the drum) that the film is typically wet-mounted to. As you'll recall from above, putting film on a cylinder mostly removes the possibility for warping that leads to out-of-focus scans. Wet mounting additionally helps to reduce the effect of scratches and dust by filling in all of the potential gaps that would adversely affect the scan, as well as to eliminate Newton rings (remember those back from high school science class, where you put two flat, transparent objects, *almost* in perfect contact and rainbow interference patterns form. By bridging the gap with a material of similar enough refractive index, wet mounting can basically eliminate this effect).

Once the film is mounted on the drum and the drum is loaded into the machine, a light is shone from inside to outside via a halogen light redirected through a light guide. On the outside of the drum, rather than having a linear CCD or area sensor the way all of the other methods do, drum scanners have a series of dichroic mirrors and photo multiplier tubes (PMTs) - this setup can sample individual points from the film with extremely high sensitivity. The drum spins to sample radially, and scans across to sample axially. Basically, the film is scanned in a very tight spiral, sampling individual points one at a time (the size of the point is determined mostly just by the aperture size, which ranges from 5 μm to 512 μm on my very low-end model). This is incredibly different from all of the other scanning methods, because PMTs can have a much higher sensitivity and higher dynamic range for better tonal reproduction (particularly useful in the shadows of slide film, or the highlights of negative film, where the amount of transmitted light is particularly low).

## The Adventure
So now, we've established drum scanners are the absolute peak of scanning technology. Even the lowest end drum scanners from the early 90's have better resolution than flatbed scanners (for large format, comparable resolution for medium format, and only marginally worse resolution for 35mm). They also have better tonal reproduction than any flatbed scanner ever made. My adventure begins with a harmless ebay search for "drum scanner, price <$2500". I don't even bother with a saved search for this, because there are usually fewer than 5 drum scanners listed on ebay at a time, and they're almost always $5000+ with freight shipping or local pickup required. Well, a few months ago I happened to spot a listing for $1000, local pickup. I skimmed over it, because I still wasn't really interested in paying $1000 for a film scanner of any variety, and it wasn't in NYC anyway. However, I happened to see the exact same listing on Craigslist, and on Craigslist it was listed "for trade". "For trade" is always intriguing, because I have a lot of camera-related cruft to trade. Furthermore, I realized that the "local pickup" was in Connecticut - not too far from NYC. I got in contact with the seller, and after a bit of haggling, settled on a trade deal: a working Howtek D4000, a broken Howtek D4000, two good drums, two scratched drums, and the computer setup to run the scanners, traded for a Meade 8" telescope, a Mavic Pro, and my old D300s with a couple of lenses. This was a particularly good trade, because the increase in volume of camera-related cruft I own would be minimized a bit by getting rid of the telescope - I realized after purchase of the telescope that no, even with the best intentions, NYC skies are too light polluted to see anything but the moon and occasionally the planets. Since the acquisition of the telescope, I had also acquired a 400mm f/2.8, which, when coupled with a 2x teleconverter, made a very capable telescope, with higher resolution (at lower magnification) than the 8" Meade scope.

With the trade offer secured, I convinced one of my friends to rent a car and drive up to Connecticut one Saturday in early June, with a couple of additional stops planned to go strawberry picking, eat some donuts in New Haven, and stop by Costco and Daiso on the way back.

<div class="gallery">
<figure name="1" alt="donut shop" caption="Our first stop in the morning, after waking up a bit, was Donut Crazy in New Haven."></figure>
<figure name="2" alt="more donuts" caption="Donut Crazy had a very wide selection, and we happened to go the day after National Donut Day."></figure>
<figure name="15" alt="scanners in the trunk" caption="We got the scanners! Between the scanners, computers, monitors, and a couple of other accessories, the trunk was completely full (image: Stephanie Yu)."></figure>
<figure name="3" alt="strawberries" caption="Our first stop after getting the drum scanners was to stop by a pick-your-own strawberry farm. We also picked some Honeyberries, which were quite tart. My friend eventually made jelly from them, which was much better than the raw berries."></figure>
<figure name="4" alt="stacked scanners" caption="One nice thing about the scanners for transport is that they're basically rectangular prisms, so they could stack on each other really tidily."></figure>
</div>

That concluded the day's adventures, but now I had two giant scanners, two G4 Macs, two monitors, and a large handful of cables, drums, manuals, and other accessories. My room/workshop was basically unusable until I built a storage solution, so I designed a stand that my shelves could go on top of, then glued some casters to the scanners so that I could wheel them in and out from under the stand. That worked incredibly well, they take up a minimum of critical space and can be easily wheeled around for use.

<div class="gallery">
<figure name="5" alt="picking up lumber" caption="Since the design for the stand was simple enough, I actually just walked to Home Depot and carried some 2x4's back. It only required 3 and a half 2x4's to build, with minimal waste."></figure>
<figure name="6" alt="stand with scanners" caption="I was a bit tight on my tolerances, but was relieved when I tested and the scanners actually fit inside, with barely any gap or wasted space, but could still be fairly easily rolled in and out."></figure>
<figure name="7" alt="shelves on top of stand" caption="It took a bit of muscle and a lot of playing the tile-shuffling game to move everything around and get the shelves on top of the scanner stand, but once they were there everything could be put back in place and I could regain use of my room."></figure>
</div>

## Powering On

After getting everything neatly tucked away, I took a break on the scanners for a few weeks to work on my workbench (it's getting so close!), but after having to pause work on that to wait for some more supplies to arrive, a few weekends ago I decided it was finally time to turn the scanners on. I knew this wouldn't be a perfectly smooth endeavor, because the seller had mentioned the original G4 Mac that he'd been using had died since he last used it, so he kindly and helpfully bought a new one. Unfortunately, the new one didn't have a copy of the scanning software, and transferring the license from the dead Mac to the living Mac, as well as installing the software on the living Mac in the first place, sounded like a tricky task...

I spent quite a while fiddling with it, and was stymied by a few different dead ends:
- When I tried swapping the power supply from the working G4 Mac to the broken G4 Mac, I realized that the broken G4 Mac was one of the only models to use a nonstandard power supply. I couldn't swap the power supply from the working G4, and I couldn't just drop in a modern ATX power supply. There's a [really helpful site](http://atxg4.com/quicksilver.html) that detailed how I could make an adapter from my ATX power supply to the broken Mac, but it would have taken a couple hours at least. I could have also purchased the adapter pre-made for about $50 (with $30 rebate if I sent in the broken power supply to be refurbished and resold), but I was intent on getting as far as I could within just the one weekend, and waiting for shipping would have stalled the project by a week. Nothing kills momentum more than not having the right parts on hand.
- I also tried turning on the working G4, and even managed to get it onto the network and attached to my NAS! I bet that old machine has never seen a drive with multiple terabytes of free space, consider it formatted it in gigabytes...unfortunately, I also realized that this Mac was running OS 9.2, not even OSX. The oldest software download I could find for Silverfast, the scanning software, targeted OSX 10.3, and differences between OS 9.2 and OSX 10.3 were large enough that there was no hope of running the software on the older Mac. I could have tried to upgrade/reinstall with OSX 10.3, but didn't really fancy my chances of getting that to work without burning a DVD, which I don't have the capability for at the moment.
- I explored the option of fitting the SCSI card into my modern PC and running the Windows version of the scanning software - it supported up through XP, and I figured it would probably work, but the SCSI card is PCI, not PCIE. Getting a PCIE SCSI card is a very expensive proposition, and again went against my goals to get everything working within one weekend.

Finally, the option that wound up working, after a bit of fiddling, was to swap the PCI SCSI card and hard drive from the broken Mac into the working Mac. I couldn't get it to work with just the new hard drive, and had to swap the PATA jumper on the existing hard drive over to "CS" (cable select) mode in order to boot into the new hard drive. Figuring all of that out took at least an hour, but after a lot of fiddling, I was finally greeted with an OSX 10.3 machine, with Silverfast installed with a working license! Progress!

<div class="gallery">
<figure name="8" alt="booting up" caption="This was the first glimmer of success - the OS 9.2 machine performing disk first aid and booting up."></figure>
<figure name="9" alt="network drive mapped" caption="I actually managed to get the OS 9.2 machine up on the network - it required terminating a new ethernet connection in my room, but I actually got it to connect to my NAS! Couldn't get any sites other than Google to load, though."></figure>
<figure name="10" alt="silverfast launching" caption="After a couple of hours of fiddling, I finally got the OSX 10.3 drive to boot up, and I was able to launch Silverfast!"></figure>
</div>

Now that I had the computer launched, the next challenge was to sort out the scanner <> computer connection. The D4000 connects via SCSI, and luckily a cable, PCI card, and SCSI terminator were all included by the seller. It took some more fiddling and a bunch of turning things off and on again to get the scanner and the computer talking to each other. What wound up working was to set the scanner IO to SCSI(4), and make sure that the scanner turned on *before* the Mac. After that, they connected!

I don't have any of the wet mounting supplies yet, so I mounted an old darkroom print I'd made for the first test in reflective mode. Without wet mounting, I couldn't get it super flat, but it was still a good test. I quickly learned not to cover up the calibration zone of the drum, as my first few scans had a lot of streaks from mis-calibration due to my tape extending into the calibration zone. After that, I kicked off a 1000 dpi scan, and off it went! The scan took a little while, but the result was incredible. I've always loved this particular photo, easily my favorite 35mm film photo.

<div class="gallery">
<figure name="11" alt="ready to scan" caption="After turning on the printer, it performed some warm-up gyrations then said 'ready to scan'. However, I had to swap the IO from the GPIB it defaulted to over to SCSI(4) before I could actually get the connection to work."></figure>
<figure name="12" alt="first scan in progress" caption="After fixing the IO connectivity, I began the first scan of an old darkroom print in reflective mode. I love how the whole inside lights up and you can see what's happening. You can see the beam holding the inner light through the gap in the drum - the print didn't cover the whole circumference."></figure>
<figure name="13" alt="first scan in progress" caption="The 1000 dpi scan took more than a few minutes - drum scanning is a slow process."></figure>
<figure name="14" alt="4% done" caption="I appreciated that the scanner gave me a readout of percent done - it's very satisfying to watch this number slowly tick up."></figure>
<figure name="2023-07-11-drum-scanner-adventure-20.gif" alt="working" caption="The whirring sound is also great."></figure>
</div>

## Next Steps

I have a few modifications and upgrades I'd like to do. Firstly, I need a good way to actually mount the film for scanning - the trade came with a drum mounting station, but the rubber roller is completely falling apart, and would totally ruin the drum or film if I tried to use it. I need to figure out a way to replace that - I'll probably try to DIY something with an [industrial roller](https://www.amazon.com/gp/product/B0B18Z4LP8), but I did get in contact with a [custom roller manufacturer](https://www.jjshort.com/Hard-To-Find-and-Obsolete-Rollers.php) to see if they can make something for me for cheap enough - they quoted $380 for qty 1, which is a bit steeper than I'd hope.

I also needed to acquire some drum-cleaning fluid, wet-mounting fluid, archival tape, and optical mylar. [Aztek supplies](https://www.aztek.net/drum-starter-kit-with-9-x-11-az-42-mylar/) all of those, but the complete package is $230, which is also a bit steep for what it actually is. If you look up the [MSDS](https://www.freestylephoto.com/pdf/msds/kami_scanner_fluids/Kami_Drum_Cleaner.pdf) for the drum-cleaning fluid, you'll see that it's over 90% Naptha, and <4% n-Hexane, so I bought a gallon can of Naptha from Home Depot for $12.50. The [MSDS](https://www.freestylephoto.com/pdf/msds/kami_scanner_fluids/Kami_Scanner_Mounting_Fluid.pdf) for the scanner mounting fluid is <10% Mineral Spirits, <90% Naptha, and <4% n-Hexane, so I'm going to try just using Naptha, and buy some mineral spirits if it doesn't work out. For the mylar, I got 3 mil [dura-lar](https://www.amazon.com/dp/B002544NHA) from Amazon for $11.50. I spent just a little while looking at tape alternatives, but the Kami tape is only $20/roll, so it's not too insane.

I'm also interested in exploring some adapters that'll let me connect the scanner to my modern computer rather than the old G4 Mac, so I can cut down on the extra bulky cruft. There's a [USB-to-SCSI adapter](https://www.ebay.com/itm/354729930273) for $150, or a [PCIE-to-PCI adapter](https://www.amazon.com/StarTech-com-PCI-Express-Adapter-Card/dp/B0024CV3SA) for about $40, both of which are much cheaper than the actual PCIE SCSI cards, so I'll probably start by trying those out.

Once I work out the film mounting situation a little better, I'll go through my backlog of large format scans, and probably re-scan some of my better medium format photos as well. Once I have the process nailed down, I might try to start a side business offering drum scans for mail-in film or photographers in the NYC area. I know I have some friends that are interested - if you'd be interested in getting your film drum scanned, get in touch! My D4000 is only capable of 4000 dpi, but even at that it's still better than any flatbed scanner's true optical resolution. I'm already blown away by a 286 MP scan I made of an old 8x10 Velvia 50 photograph which wasn't even properly mounted! I'm sure it'll get even better once I have proper mounting supplies.

Thanks to my friend for driving us on the Connecticut adventure, thanks to the guy I traded with who was willing to strike an interesting trade deal, and thank you for reading!