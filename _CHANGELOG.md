# 2014 05 16

This is annoying. I'm playing with Google's PageSpeed calculator, trying to bring things down. It has caught a few problems already: font sizes, etc., and I think I have the iPad2 rendering correctly. (CSS media selectors are new to me.)

This article has a lot to say about optimizing Bootstrap.

http://www.appneta.com/blog/bootstrap-pagespeed/

Bootstrap is clearly a hog as far as its weight goes. I'm going to have to come back to this, I think.

The PageSpeed calculator is here:

http://developers.google.com/speed/pagespeed/insights/?url=http%3A%2F%2Fsigcse2015.sigcse.org%2F

After some hacking around, I've managed to automate the compression and minimization of things with a Bash script. It's a hack, but it will work. (I'm sure the cool kids use Grunt, or some other Javascript thing.)

For now, we score 68/100 on PageSpeed, which is an improvement from where things were. 

Should Fix:
Eliminate render-blocking JavaScript and CSS in above-the-fold content

Consider Fixing:
Leverage browser caching
Enable compression

FIXME: I'm not sure how to fix my JavaScript blocking yet... I've moved things to the bottom of the page wherever possible. I'll come back to it.

We score 85/100 on the desktop.

