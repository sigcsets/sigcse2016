---
title: Workshops
showTitle: true
---

{% for ws in site.data.workshops %}

<div class = "row"> <!-- Separating workshops -->
<!-- Title -->
<div class = "row">
  <div class = "col-sm-12">
      <h3 style = "font-size: 110%;">#{{ws.number}}: {{ws.title}}</h3>
  </div>
</div>

<!-- Tags -->
<div class = "row" >
  <div class = "col-sm-2">
    <b>Tags:</b>
  </div>
  <div class = "col-sm-10" >
    {{ws.tags}}
  </div>
</div>

<!-- Abstract -->
<div class = "row" style = "margin-top: 15px; margin-bottom: 15px;">
  <div class = "col-sm-2">
    <b>Abstract:</b>
  </div>
  <div class = "col-sm-10">
    {{ws.abstract}}
  </div>
</div>

{% assign modulus = 3 %}
{% capture span %}{{ 12 | divided_by: modulus }}{% endcapture %}
{% capture subone %}{{modulus | minus: 1}}{% endcapture %}

<div class = "row"><div class = "col-sm-offset-2">
<ul>
{% for auth in ws.authors  %}
  <li><a href="mailto:{{auth.email}}">{{auth.name}}</a> <br>
  {{auth.org}}</li>
{% endfor %}
</ul>
</div></div>

</div>
<hr>
{% endfor %}
