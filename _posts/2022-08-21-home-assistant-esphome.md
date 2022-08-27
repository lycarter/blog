---
layout: post
title: "Home Assistant & ESPHome setup"
author: "Landon"
tags:
- engineering
gallery: true
---

# Goals

This summer has been really hot, and I've noticed the tomatoes on the roof have gotten really sad in the summer heat. I was also looking up the growing conditions of watermelons, and learned that they preferred a [fairly high soil temperature](https://extension.psu.edu/watermelon-production#:~:text=Soil%20temperature%20in%20the%20transplant,surface%20reaches%2060%C2%B0F.). Finally, I was really curious how the temperature varied across each of the different planter boxes I have - some are located so they get morning shade and afternoon sun, one is located for morning sun, afternoon shade, and a few just get full sun. For all of those reasons, to be able to monitor both the air temp and the soil temp across a handful of planter boxes. In the past, I've tried setting up a soil moisture sensor, but since I just got a conductive type instead of a capacitive type, it didn't work particularly well. So, the goals of the Home Assistant + ESPHome setup was to have a solar-powered permanently installed soil and air temperature sensor. From there, the project could expand to other sensors, and maybe some actual smart home automation through Home Assistant, although I didn't want to let the project scope creep too quickly. I need to get better at finishing current projects before starting future projects...

So, those are the goals of the setup. The goals of this blog post are a bit different - I want to document for myself what research I've done, why I've made the decisions I have, what experiments I've tried, and how things are set up now. This post probably won't be super useful as a general guide.

# Research

## Home Assistant
The number one feature I wanted out of the setup was a way to graph the temperature over time. I wanted a way for that to live locally (no cloud, no subscriptions, no limits), and since I wasn't interested in a long and drawn-out project (I do enough long and drawn-out software engineering projects at work), I wanted something that would work out of the box. Home Assistant pretty quickly looked like the right option.

### Synology Setup
I have a Synology DS1517+, which was basically the cheapest Synology with 10Gb/s Ethernet available, that I use as a local storage backup for photos, videos, etc. It also, obviously, has the ability to act as a general server. I've run a Minecraft server on it, and the Docker setup is really easy to manage. Luckily, there's a default [Home Assistant setup for Synology Docker](https://www.home-assistant.io/installation/alternative/#synology-nas). The one downside of this setup is that you can't install Add-Ons, which was extremely confusing when I was trying to set up ESPHome for the first time, but isn't actually a big deal now. [Add-ons](https://github.com/alexbelgium/hassio-addons) are basically additional containers that run 3rd party software designed to integrate with HA (eg, [ESPHome](https://github.com/esphome/home-assistant-addon), [MQTT](https://github.com/home-assistant/addons/blob/master/mosquitto/DOCS.md), and about a million NAS variants that aren't at all relevant since I'm running it on a Synology).

I also wound up setting up MQTT as a separate Docker container, for reasons discussed [below](#mqtt). That was incredibly easy, I think I followed [this guide](https://mariushosting.com/how-to-install-eclipse-mosquitto-on-your-synology-nas/), or maybe [this one](https://chrisschuld.com/2020/08/installing-mqtt-broker-on-synology/) (should have kept better notes, oops...).

## ESPHome
I started by looking for a good temperature sensor to stick in the soil, and quickly came to the [DS18B20](https://datasheets.maximintegrated.com/en/ds/DS18B20.pdf), which is available in a fully sealed pigtail version with a metal capsule that's fully waterproof. From there, searching how to read it, I quickly found ESPHome, which has [first-class support for it](https://esphome.io/components/sensor/dallas.html). That worked almost immediately when I tested with a [Wemos D1 Mini](https://www.amazon.com/MakerFocus-NodeMcu-Development-ESP8266-Compatible/dp/B07KW54YSK).

The basic principle of ESPHome is to configure a yaml file with each of the various sensors and options for update intervals, etc. It can be used via Wifi to directly talk to the Home Assistant API, but it can also be configured to use MQTT. See the MQTT(#mqtt) section for more details on why MQTT is 10x better.

# Breadboard Trials

## Early trials
My first trials were just to ensure everything was hooked up correctly and to estimate rough battery life requirements. I used a USB battery bank and stuck the simple breadboard setup outside. That validated that the wifi range could reach the roof (barely), and that it could run for a long period of time. It lasted about 4 days on a 10,000 mAh pack, iirc, although I didn't record the info very well (hence my now writing this blog post).

## Solar & Battery
After validating that the wifi module and temperature sensor were all working, the next step was to figure out how to make it solar powered so I could stick it up on the roof without having to constantly swap batteries or try to plug it in (don't really want to leave something permanently plugged in, the outlet isn't super waterproof when things are plugged in, and I don't want to run a cable across the roof).

I started by looking at [Andreas Spiess's Youtube Channel](https://www.youtube.com/c/AndreasSpiess) because I remembered that he had posted some videos about solar power / microcontrollers in the past. There are a few helpful videos [here](https://www.youtube.com/playlist?list=PL3XBzmAj53Rl6hxunDxEm4V98qK_75g-m), although I eventually wound up diverging from his eventual recommendation...

I started with a TP4056 setup and schematic that he eventually recommended in [this video](https://youtu.be/37kGva3NW8w?list=PL3XBzmAj53Rl6hxunDxEm4V98qK_75g-m&t=720).
<div class="gallery">
<figure name="2022-08-21-home-assistant-esphome-1.png" alt="TP4056 Solar schematic" caption="TP4056-based solar power schematic from Andreas Spiess"></figure>
</div>

Unfortunately, this basically didn't work for me at all. I think my [solar panel](https://www.amazon.com/dp/B0736W4HK1) was undersized (5V 60mA spec, 68mm x 37mm). It couldn't even power the Wemos D1 Mini on its own, it sagged to like 3.3V, which, after the Schottky diode and LDO on-board, wasn't enough volts. I elected to eliminate the Schottky diode mess and just go with a very straightforward setup - solar panel wired directly into TP4056 module, output wired to 5V/gnd of the Wemos D1 Mini, and battery wired directly to an 18650 cell I harvested from a sorta-dead Dyson vacuum pack. That worked a lot better, but the battery voltage was still dropping over time. I eventually just slapped 4 solar cells on in parallel, for a nominal 5V 240mA panel, which worked for 4 days straight (using [deep sleep](#deep-sleep)), with the battery voltage bumping back and forth between about 4.0V and 4.1V. After a few days though, the battery mysteriously plummeted to about 3.4V, and the MCU entered a weird middle state where it didn't fully boot and connect to the network, but wasn't in deep sleep either. See the [Batteries Redux](#batteries-redux) section for some more investigation on that.

## `GPIO15`
One of the annoying things that took way too long to figure out was that [`GPIO15` shouldn't be connected on startup](https://randomnerdtutorials.com/esp8266-pinout-reference-gpios/), because it deals with the boot modes. If it's pulled HIGH at startup, boot fails. I originally connected a [BME280](https://www.adafruit.com/product/2652) to this pin in addition to the DS18B20, so I could get a second temperature measurement, as well as pressure and humidity.

## Deep sleep
Obviously continuous temperature measurements aren't really necessary - an update every few minutes is plenty of resolution. Sending constant updates also takes way more power, and the way to combat this is deep sleep. Luckily, ESPHome has a [deep sleep component](https://esphome.io/components/deep_sleep.html0) which is extremely well documented. Some gotchas:
- Make sure that `GPIO16` is connected to `RST` on the ESP8266, or else it'll never wake up.
- Make sure that the Home Assistant buttons for exiting deep sleep mode and re-enabling it are set to "retain".

## MQTT
Setting up deep sleep also generally meant that MQTT was going to be necessary to set up, so that I could send messages to the node to keep it awake if I ever wanted to do an update. This initially caused some issues, because ESPHome is designed to work with *either* MQTT or Home Assistant API, but not both. Removing the Home Assistant API block from the default config made things work pretty much immediately.

I also had to set up an MQTT server (broker? not sure of the exact terminology). See the [Synology Setup](#synology-setup) for more notes on that, but it was about a 2-minute affair. Testing with the MQTT CLI was really helpful to ensure things were working - check out the [Quick Reference](#current-setup-quick-reference) for the commands used there.

Another interesting aspect of MQTT is how much better for ESPHome it is than the native Home Assistant API. The native HA API polls once a minute to try to grab data from the node, which, if you're using deep sleep, is almost guaranteed to fail. With MQTT however, the node can push data directly to the broker whenever it starts up, so it delivers data way more consistently.

Final note on MQTT is that I added some sections to the ESPHome config to turn on the built-in LED when OTA mode is activated from Home Assistant, and then to turn it off when it's disabled. That's a good visual check that the node is available and ready to receive an OTA update.

## Batteries redux
Once I got the initial charging and solar power infrastructure and deep sleep all set up and figured out, I wanted to do a ~week-long stability test to ensure everything was all set up correctly, so that I could order some PCBs to tidy up the setup and "mass produce" 5 of them for each of the various boxes. Unfortunately, about 4 days in, the battery voltage plummeted and everything died. I was pretty suspicious of these cells, since they were harvested from a Dyson vacuum battery pack that didn't work in the vacuum any more. The voltages checked out after I charged them back up, but the first one I extracted I accidentally shorted for a split second, and I also noticed that the voltage sagged really heavily when even just the MCU was drawing power. I wouldn't expect a ~0.3V sag from just a few hundred mA of current, so I decided to break out my Hyperion EOS0730i NET3 charger. This thing is awesome, and the [software](https://hyperion-world.com/en/ecds-man) makes it really easy to get some very detailed information about the battery, as well as, of course, to charge, discharge, etc. Note: I also had to download a [CP2102 USB-to-Serial driver](https://www.pololu.com/docs/0J7/all) before the software would recognize the charger.

What I found is that the first cell I was testing had an internal resistance of about 70 mΩ, and a capacity of about 450 mAh, nowhere close to the 2100mAh claim. Yikes. Second cell was better on capacity (907 mAh, still bad), and slightly better on internal resistance (58 mΩ, also still bad), so that probably explains some of the voltage sag I was seeing. A new cell of this sort should be right on the 2100mAh spec'd capacity and somewhere closer to 15 mΩ internal resistance.

<div class="gallery">
<figure name="2022-08-21-home-assistant-esphome-2.png" alt="18650 charge profile" caption="18650 charge profile from Hyperion Charger"></figure>
</div>

# Current Setup (quick reference)

- Home Assistant is hosted on the Synology at [192.168.1.114:8123](http://192.168.1.114:8123/).
- MQTT is also hosted on the Synology at [192.168.1.114:1883](http://192.168.1.114:1883/).
    - `mqtt pub -t test -m 'test message #1' -h 192.168.1.114 -p 1883` to publish a test message
    - `mqtt sub -t testnode/sleep_mode -h 192.168.1.114 -p 1883` to subscribe to the channel used for OTA updates.
- ESPHome is installed on the Desktop Ubuntu at `esphome-configs` which is a [GitHub repo](https://github.com/lycarter/esphome-configs). Basic commands: `esphome run simpletemp.yaml`, `esphome logs simpletemp.yaml`.

<div class="gallery">
<figure name="3" alt="current breadboard" caption="Breadboard (before rewiring)"></figure>
<figure name="4" alt="current breadboard" caption="Current breadboard setup (after rewiring)"></figure>
</div>

# Appendix (just a list of links)
- ESPHome
    - [MQTT](https://esphome.io/components/mqtt.html) - How to set up MQTT
    - [Status LED](https://esphome.io/components/status_led.html) - Setting up the LED output
    - [Light Component](https://esphome.io/components/light/index.html) - More info on setting up the LED output
    - [Automations](https://esphome.io/guides/automations.html#automation) - Connecting the LED output to the MQTT messages
    - [Deep Sleep](https://esphome.io/components/deep_sleep.html) - Info on setting up deep sleep, including basic MQTT setup for OTA mode.
    - [Flasher](https://github.com/esphome/esphome-flasher) - I used this to do the initial flash of the ESP8266. Find the firmware file in the `.esphome/build/testnode/.pioenvs/testnode/firmware.bin` after running `esphome run simpletemp.yaml`.
- Home Assistant
    - [Time Since Last Update](https://community.home-assistant.io/t/time-since-a-sensor-last-updated-in-a-condition/14503) - One of the things I wanted to do but never got working was to set up a component on the dashboard that would tell me how long it had been since the node had reported data, so that I could check on it if it hadn't reported data for longer than the configured deep sleep time. Unfortunately, it looks like this just isn't really a first-class feature? This blog post seemed like it might work, but was more effort to set up than I wanted to put in at the time, and frankly I didn't really fully understand where all of the things it mentioned would have to be configured.
- Solar
    - [Solar Powered WiFi Weather Station](https://www.instructables.com/Solar-Powered-WiFi-Weather-Station/) - Eventually when troubleshooting the [solar setup](#solar--battery) that was recommended in the first few videos I found, I stumbled across this, which recommended the more straightforward approach I wound up going with. I probably still need to do some subset of upsizing my solar panel, getting a better 18650 cell, or decreasing power draw by doing a less frequent deep sleep interrupt. 