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


{% comment %}
<div class="col-sm-12" id="featured">
    <div class="page-header text-muted">
        Preparing Your Submissions
    </div>
</div>

FIXME: This is where all the details about margins, LaTeX templates, and the like go.

{% endcomment %}