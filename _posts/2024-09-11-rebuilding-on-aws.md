---
layout: post
title: "Rebuilding on AWS"
author: "Landon"
tags:
- engineering
- meta
gallery: true
---

Previously, I've had this blog hosted in [Netlify](https://www.netlify.com/), which was great because (1) it was free, and (2), it offered [Git LFS](https://git-lfs.com/) storage, which was great for storing all of the images, pdfs, etc, that this site has. Since this is a statically generated site, I don't have a typical CMS system, and Jekyll doesn't really have any first-class solutions for hosting media other than Git LFS. Unfortunately, Netlify [decided to deprecate](https://answers.netlify.com/t/large-media-feature-deprecated-but-not-removed/100804) its Git LFS implementation, recommending users to use the Git LFS implementation that comes with their code host instead.

Unfortunately, Github's [Git LFS offering](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-storage-and-bandwidth-usage) is...trash. It's only up to 1 GiB of storage free, and 1 GiB of bandwidth free per month. This site is hardly anything, and it's already 2 GiB - and even data packs are [absurdly priced](https://docs.github.com/en/billing/managing-billing-for-git-large-file-storage/upgrading-git-large-file-storage): $5/mo for 50 GiB of storage and 50 GiB of bandwidth. AWS offers 5 GiB free in S3, and it's about 2c/GiB = $1/50GiB per month past that, with free data transfer in and negligible data transfer costs out (as long as the website is hosted behind CloudFront, not directly from S3).

So, not looking forward to the task of migrating all of my website infrastructure, I decided to go basically all-in on AWS. If AWS breaks its APIs or decides to deprecate things, it'll at least have plenty of articles about how to migrate.

## Current Setup

<div class="gallery">
<figure name="2024-09-11-rebuilding-on-aws-1.png" alt="blog diagram" caption="Current blog setup, Sept 2024. Green represents media files, blue represents &quot;rendered&quot; site files."></figure>
</div>

### Hosting
I mostly followed [this article](https://predicatemethod.com/posts/hosting-a-jekyll-static-website-on-aws-s3-with-cloudfront/) about how to set up Jekyll hosting with Github Actions pushing ot S3 and Cloudflare - there's nothing too interesting there overall, I basically just followed the instructions, with a few tweaks:

1. The "Static website hosting" section is no longer part of the S3 bucket setup, it's all the way at the bottom of the properties page:

    <div class="gallery">
    <figure name="2024-09-11-rebuilding-on-aws-2.png" alt="static website hosting" caption="The static website hosting option is now at the bottom of the S3 bucket properties page."></figure>
    </div>

2. The Origin of the CloudFront distribution needs to be manually tweaked. You can't just use the origin from the S3 bucket picker, you need to manually set the URL as such, otherwise you'll wind up with a nasty xml error:

    <div class="gallery">
    <figure name="2024-09-11-rebuilding-on-aws-3.png" alt="cloudfront origin" caption="The CloudFront origin needs to be manually set to this, you can't just use the S3 bucket from the dropdown."></figure>
    </div>

3. My domain _was_ managed through Google Domains, but is [now managed through Squarespace](https://domains.squarespace.com/google-domains). In order to get the SSL certificate set up correctly, here's the DNS config I needed - note the precise position of underscores and dots:

    <div class="gallery">
    <figure name="2024-09-11-rebuilding-on-aws-4.png" alt="squarespace dns setup" caption="The Squarespace DNS setup required to get the SSL certificate and CloudFront setup to work."></figure>
    </div>



### Git LFS
What was a lot more interesting was setting up the Git LFS proxy so that I could back Git LFS files with S3. I don't understand why there's not an easy solution here - it feels like it would be a pretty common ask to have a cheaper setup, but apparently it's quite uncommon? I guess a lot of folks just shift to using something else like Dropbox or an external database? I basically blame Git LFS overall. The more [I read](https://gregoryszorc.com/blog/2021/05/12/why-you-shouldn't-use-git-lfs/) about Git LFS over the course of the project, the more I'm convinced that it's a terrible hack that no one should ever use. Yet! We press on, because I only had one weekend of time to rebuild my website, and I didn't feel like figuring out a totally different media solution.

It wasn't too hard to find some people setting up S3 as a Git LFS target, but finding anything that did so in any remotely modern way was...challenging. All of the repos I found had some problem - they were [archived years ago](https://github.com/meltingice/git-lfs-s3), or [require you to run the proxy elsewhere](https://github.com/milkey-mouse/git-lfs-s3-proxy), or [a different elsewhere](https://github.com/troyready/git-lfs-s3), or [didn't have any published releases or good install instructions](https://github.com/nicolas-graves/lfs-s3). But...since it's built on pretty stable tech, it's not like anything really breaks too badly, right? I eventually settled on [`node-git-lfs`](https://github.com/kzwang/node-git-lfs) as my localhost proxy, since I found this [great article](Thttps://blog.dermah.com/2020/05/26/how-to-be-stingy-git-lfs-on-your-own-s3-bucket/ODO) describing how to get it set up. It more or less worked out of the box, but it was giving me a bunch of scary warnings about [AWS's js SDK v2 getting deprecated _literally tomorrow_](https://aws.amazon.com/blogs/developer/announcing-end-of-support-for-aws-sdk-for-javascript-v2/) and it would stop being supported in September 2025. Since I was in the process of dealing with upstream service deprecations, I went on a little futureproofing side quest to hack-and-slash my way through an upgrade to the [current v3 SDK](https://docs.aws.amazon.com/AWSJavaScriptSDK/v3/latest/) (spoiler: the codemod command that's included didn't work at all). Since I am not a javascript dev, I wound up speeding up the process tremendously by getting [Codieum](https://codeium.com/) to help out - it's basicall a Github CoPilot alternative, and it worked extremely well when dealing with such a common language, small context window, and frequently-used SDKs - basically the perfect use case for LLMs as code assistants at the moment.

If you'd like to use a butchered-but-upgraded version, it's on [my github](https://github.com/lycarter/node-git-lfs/). I didn't bother setting up builds (looks like the previous author used Travis CI), and I didn't bother getting anything to run except for the one little config I personally use.

### Gotchas
After that, there were a few details to iron out:

#### S3 requires exact filename access

My site had always run correctly navigating to `https://lycarter.com/date/article`, but the literal compiled files in the Jekyll `_site` folder are at `/date/article.html`, so I wrote a [little script](https://github.com/lycarter/blog/blob/bb4815ab16b8b471ace15a04f22ea55566764210/scripts/remove-html.sh) to rename all of the `.html` files to extensionless files. Unfortunately, that meant that S3 no longer understood what mimetype to serve the files with, and then Chrome would _download_ them instead of displaying them. To solve that, I added another [few lines](https://github.com/lycarter/blog/blob/bb4815ab16b8b471ace15a04f22ea55566764210/.github/workflows/build-and-deploy-to-s3.yml#L41-L48) to my deploy script to apply the `content-type: "text/html"` to all the files except those in the assets folder.

#### Running the localhost proxy in Github Actions is...weird

There may very well be a better way to do this, but I had trouble figuring out a convenient way to actually run the localhost proxy so that Github Actions could actually download the Git LFS files. Eventually, [I wound up](https://github.com/lycarter/blog/blob/bb4815ab16b8b471ace15a04f22ea55566764210/scripts/clone-lfs.sh#L8) just starting the proxy in the background, sleeping 25 seconds to wait for the server to start up (testing showed it usually took about 18 seconds), and _then_ issuing the `git lfs pull` request. It's generally bad practice to hardcode timeouts like that for control flow, but it took me 5 minutes to do and it seems to work, so it's Good Enough For Now™.

### Improvements to be made

On the subject of improvements like removing the 25 second sleep from the deploy script, I noticed that running deploy a bunch of times during testing pretty quickly chewed through my S3 free tier request limit of 20k. I believe there are a few things contributing to that / things I could fix:

- The deploy script downloads all ~800 files from S3 every time. There's a few possible ways to address that:
    - If I only put the fullsize versions of the images in Git LFS and generated the thumbnails at build time, I could cut requests by a factor of 3.
    - If I made my Git LFS proxy zip them up before storing in S3, it'd be only 1 request per deploy (at the expense of being much harder to inspect / debug).
    - If I had the deploy step skip the images entirely, directly moving them from one S3 bucket to another, I could save a ton of time on the deploy step, and save some network calls.
- The deploy script uploads too many things - because I fix the content-type after upload with an `aws s3 cp`, I incur extra costs. I could write a better sync script that uploads each of the extensionless files with the correct content-type set at upload time, and even better, could check whether the live-deployed site bucket has current versions of the files before uploading them.
- I could probably put the LFS bucket behind CloudFront as well, so that Github Actions hits CloudFront instead of hitting S3 directly - most of the files don't change, so it would probably work?

Ultimately though, I'm pretty happy with how things are now. The site seems stable, the development cost and the AWS cost per post is essentially zero, and AWS isn't going anywhere.

Thanks for reading :)