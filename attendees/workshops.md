---
title: Workshops
showTitle: true
---

{% for ws in site.data.workshops %}

<div class = "row"> <!-- Separating workshops -->
<!-- Title -->
<div class = "row">
  <div class = "col-sm-12">
      <h3 style = "font-size: 110%;">{{ws.title}}</h3>
  </div>
</div>

<!-- Tags -->
<div class = "row">
  <div class = "col-sm-2">
    <b>Tags:</b>
  </div>
  <div class = "col-sm-10">
    {{ws.tags}}
  </div>
</div>

<!-- Abstract -->
<div class = "row">
  <div class = "col-sm-2">
    <b>Abstract:</b>
  </div>
  <div class = "col-sm-10">
    {{ws.abstract}}
  </div>
</div>

{% assign modulus = 2 %}
{% capture span %}{{ 12 | divided_by: modulus }}{% endcapture %}
{% for auth in ws.authors  %}
  {% capture mod %}{{ forloop.index0 | mod: modulus }}{% endcapture %}
  {% if mod == '0' or forloop.first %}
    <div class="row">
  {% endif %}
  <!-- SPONSOR: {{mod}} -->
  <div class="col-md-{{span}}" >
      {{auth.name}} ({{auth.email}}) <br>
      {{auth.org}}
	  </div>
  </div>
  {% if mod == subone or forloop.last %}
  </div> <!-- end row -->
  {% endif %}
{% endfor %}

{% endfor %}
