---
layout: post
title: "Example Content"
author: "Chester"
tags:
- default
gallery: true
other_image_sources:
- 2018-04-09-chocolate-crinkles
---

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tincidunt ornare nibh, non elementum augue tempus eget. Pellentesque tempus scelerisque iaculis. Nullam interdum ultricies nibh quis sollicitudin. Donec ornare fermentum facilisis. Ut at sem ac sem imperdiet varius a eget tortor. Nam eu augue eget orci semper maximus in eget augue. Mauris ornare, nisl ut suscipit consectetur, mi quam interdum tellus, at rutrum quam eros ultrices mi.

# Headers
{% highlight markdown %}
# H1
## H2
### H3
#### H4
##### H5
###### H6
{% endhighlight %}

# H1
## H2
### H3
#### H4
##### H5
###### H6

# Text formatting
{% highlight markdown %}
- **Bold**
- _Italics_
- ~~Strikethrough~~
- <ins>Underline</ins>
- <sup>Superscript</sup>
- <sub>Subscript</sub>
- Abbreviation: <abbr title="HyperText Markup Language">HTML</abbr>
- Citation: <cite>&mdash; Chester How</cite>
{% endhighlight %}

- **Bold**
- _Italics_
- ~~Strikethrough~~
- <ins>Underline</ins>
- <sup>Superscript</sup>
- <sub>Subscript</sub>
- Abbreviation: <abbr title="HyperText Markup Language">HTML</abbr>
- Citation: <cite>&mdash; Chester How</cite>

# Lists
{% highlight markdown %}
1. Ordered list item 1
2. Ordered list item 2
3. Ordered list item 3

* Unordered list item 1
* Unordered list item 2
* Unordered list item 3
{% endhighlight %}

1. Ordered list item 1
2. Ordered list item 2
3. Ordered list item 3

* Unordered list item 1
* Unordered list item 2
* Unordered list item 3

# Links
{% highlight markdown %}
Check out tale on [GitHub](https://github.com/chesterhow/tale).
{% endhighlight %}

Check out tale on [GitHub](https://github.com/chesterhow/tale).


{% highlight markdown %}
An example of an internal link: [Git LFS migration]({% post_url 2019-05-27-site-improvements-2 %})
{% endhighlight %}
An example of an internal link: [Git LFS migration]({% post_url 2019-05-27-site-improvements-2 %})

{% highlight markdown %}
An example of a header link: [Links](#links)
{% endhighlight %}
An example of a header link: [Links](#links)

# Images
{% highlight markdown %}
![Placeholder image](https://placehold.it/800x400 "Placeholder image")

![Image with caption](https://placehold.it/700x400 "Image with caption")
_This is an image with a caption_

![Local image]({{ "/assets/img/thumbnail/2018-04-09-chocolate-crinkles-1_thumb_800.jpg" | absolute_url }} "mouseover")_caption_
{% endhighlight %}


![Placeholder image](https://placehold.it/800x400 "Placeholder image")

![Image with caption](https://placehold.it/700x400 "Image with caption")
_This is an image with a caption_

![Local image]({{ "/assets/img/thumbnail/2018-04-09-chocolate-crinkles-1_thumb_800.jpg" | absolute_url }} "mouseover")_caption_

# Image Galleries

{% highlight html %}
<div class="gallery">
  <figure name="1" alt="Image description" caption="caption 1"></figure>
  <figure name="2018-04-09-chocolate-crinkles-1" alt="Image description" caption="caption 2"></figure>
</div>
{% endhighlight %}

<div class="gallery">
  <figure name="1" alt="Image description" caption="caption 1"></figure>
  <figure name="2018-04-09-chocolate-crinkles-1" alt="Image description" caption="caption 2"></figure>
</div>

# Code and Syntax Highlighting
Use back-ticks for `inline code`. Multi-line code snippets are supported too through Pygments.

{% highlight js %}
// Sample javascript code
var s = "JavaScript syntax highlighting";
alert(s);
{% endhighlight %}

{% highlight python %}
# Sample python code
s = "Python syntax highlighting"
print s
{% endhighlight %}

Adding `linenos` to the Pygments tag enables line numbers.

{% highlight js  linenos %}
// Sample javascript code
var s = "JavaScript syntax highlighting";
alert(s);
{% endhighlight %}

# Blockquotes
{% highlight markdown %}
> Curabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.

{% endhighlight %}

> Curabitur blandit tempus porttitor. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.

# Horizontal Rule & Line Break
{% highlight markdown %}
Use `<hr>` for horizontal rules

<hr>

and `<br>` for line breaks.

<br>
{% endhighlight %}

Use `<hr>` for horizontal rules

<hr>

and `<br>` for line breaks.

<br>

_The end_
