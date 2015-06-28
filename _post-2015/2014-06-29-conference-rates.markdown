---
layout: blog
title:  "Conference Rates Posted"
date:   2014-06-29
categories: update
icon: info-circle
---

Rates for {{site.data.main.upper}} {{site.data.main.year}} are posted, and we don't expect them to change at this point. 


#### Deadlines
  
<div class="row">
  <div class="col-md-11 col-md-offset-1">
    <div class="table-responsive">
      <table>
{% for e in site.data.registration.deadlines %}
        <tr class="{{e.alert}}">
          <td style="padding-top: 10px; padding-right: 30px; padding-bottom: 10px;"><b>{{e.category}}</b></td>
          <td>{{e.date}}</td>
        </tr>
{% endfor %}
      </table>
    </div>
  </div>
</div>

#### Rates

<div class="row">
  <div class="col-md-11 col-md-offset-1">
    <div class="table-responsive">
      <table>
{% for e in site.data.registration.rates %}
        <tr class="{{e.alert}}">
          <td style="padding-top: 10px; padding-right: 30px; padding-bottom: 10px;"><b>{{e.category}}</b></td>
          <td>{{e.rates}}</td>
        </tr>
{% endfor %}
      </table>
    </div>
  </div>
</div>

In the event that these rates change, we will update you on the blog, through social media, and (most likely) the SIGCSE mailing list as well. We do not anticipate any changes, however.
