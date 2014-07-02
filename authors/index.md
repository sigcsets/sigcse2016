---
title: For Authors and Contributors
showTitle: true
---

{% unless site.data.flags.paperSubmissionReady %}
{% include submission-announce-when-ready.html %}
{% endunless %}

{% section Important Dates %}

<div class="row"  style="padding-bottom: 20px;">
{% for cat in site.data.cfp.dates %}
<div class="row" style="padding-bottom: 5px;">
    <div class="col-sm-5 col-sm-offset-1">
        <b>{{cat[0]}}</b>
    </div>
    <div class="col-sm-6 ">
        {{cat[1]}}
    </div>
</div>
{% endfor %}
</div>

<div class="row">
    <div class="col-sm-10">
        <p>The CFP for the {{site.data.main.upper}} {{site.data.main.year}} symposium was last updated May 15, 2014.</p>
        <dl class="dl-horizontal">
            <dt> HTML </dt>
            <dd> 
                <a href="{{site.data.main.lower}}-{{site.data.main.year}}-{{site.data.cfp.htmlurlpostfix}}">
                    {{site.data.main.lower}}-{{site.data.main.year}}-{{site.data.cfp.htmlurlpostfix}}
                </a> </dd>
            <dt> PDF </dt>
            <dd> 
                <a href="{{site.data.main.lower}}-{{site.data.main.year}}-{{site.data.cfp.pdfurlpostfix}}"> 
                    {{site.data.main.lower}}-{{site.data.main.year}}-{{site.data.cfp.pdfurlpostfix}}
                </a>
                </dd>
        </dl>
    
</div></div>

{% section Preparing Your Submissions %}

{% for type in site.data.cfp.includes %}
  {% cycle 'add rows': '<div class="row" style="padding-bottom: 20px; ">', nil, nil %}
<div class="col-md-4">
  <div class="row">
    <div class="col-md-6">
      <h3>{{type[0]}}</h3>
    </div>
    <div class="col-md-6" style="margin-top: 30px;">
      <small>(<a href="{{type[1]}}.html">submission details</a>)</small>
    </div>
  </div>
  <p>
    {% capture file %}submissions/{{type[1]}}.md{% endcapture %}
  {% include {{file}} %}
  </p>
  {% comment %}
  <div class="text-center">
  <a href="{{type[1]}}.html"><button type="button" class="btn btn-info">submission details</button></a>
  </div>
  {% endcomment %}
</div>
  {% cycle 'close rows': nil, nil, '</div>' %}
{% endfor %}
{% cycle 'close rows': nil, '</div>', '</div>' %}

