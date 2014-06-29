---
layout: blog
title:  "Conference Rates Posted"
date:   2014-06-29
categories: update
icon: info-circle
---

Rates for {{site.data.main.upper}} {{site.data.main.year}} are posted, and we don't expect them to change at this point. 


<div class="row"  style="padding-bottom: 20px;">
{% for rate in site.data.main.rates %}
<div class="row" style="padding-bottom: 5px;">
    <div class="col-sm-5 col-sm-offset-1">
        <b>{{rate[0]}}</b>
    </div>
    <div class="col-sm-6 ">
        {{rate[1]}}
    </div>
</div>
{% endfor %}
</div>

In the event that these rates change, we will update you on the blog, through social media, and (most likely) the SIGCSE mailing list as well. We do not anticipate any changes, however.
