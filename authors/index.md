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
<p>    SIGCSE 2015 continues our long tradition of bringing together colleagues from around the world to present papers, panels, posters, special sessions, and workshops, and to discuss computer science education in birds-of-a-feather sessions and informal settings. The SIGCSE Technical Symposium addresses problems common among educators working to develop, implement and/or evaluate computing programs, curricula, and courses. The symposium provides a forum for sharing new ideas for syllabi, laboratories, and other elements of teaching and pedagogy, at all levels of instruction. 
</p>
<p>    Submissions in line with the conference theme, <b>{{site.data.main.theme}}</b>, are encouraged. The theme is a call for all of us to make sure that our efforts in this field keep us moving in the right directions.  We need to keep connected with each other for the sharing of ideas.  We want our students to be connected to each other and to us to help further their educational experience.  We need to keep our focus and commitment on the efforts we are pursuing to further computing education.  And most importantly we need to keep our students committed to the field so that they will keep computing.
</p>
{% callout info %}
We are particularly interested in keeping our community connected with interesting educational efforts in upper level courses, open-source software, outreach, and education research.  We are continuing to keep our commitment to the inclusion of a wide-variety of submissions in the program that span the spectrum of experience reports to scientifically rigorous educational studies.  We are excited for you to be a part of showing our community why we all need to keep computing.
{% endcallout %}

</div>
</div>

<div class="row">
    <div class="col-sm-10">
        <p>The CFP for the {{site.data.main.upper}} {{site.data.main.year}} symposium was last updated {{site.data.cfp.lastupdate}}.</p>
        <dl class="dl-horizontal">
            <dt> HTML </dt>
            <dd> 
                <a href="{{site.data.cfp.html}}">
                  {{site.data.cfp.html}}
                </a> </dd>
            <dt> PDF </dt>
            <dd> 
                <a href="{{site.data.cfp.pdf}}"> 
                    {{site.data.cfp.pdf}}
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

