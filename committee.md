---
title: Program Committee
showTitle: true
---

{% comment %}
http://www.layoutit.com/build
http://stackoverflow.com/questions/2245972/modulus-or-lack-thereof-in-rubys-liquid-templating-engine
{% endcomment %}

{% for member in site.data.committee %}
  {% cycle 'add rows': '<div class="row">', nil, nil %}
<div class="col-md-4">
	<div class="thumbnail" style="padding-top: 40px;">
		<img alt="300x200" 
      src="{{site.base}}/images/committee/{{member.image}}" 
      {% if member.rotation %}
      style="margin-top:-30px; margin-bottom: -30px; -webkit-transform: rotate({{member.rotation}}deg); -moz-transform: rotate({{member.rotation}}deg);"
      {% else %}
      style="-webkit-transform: rotate(90deg); -moz-transform: rotate(90deg);"
      {% endif %}
      />
      <br/>
		<div class="caption">
			<h3>
				{{member.name}}
			</h3>
      <h4 style="color: {{site.purple}};">{{member.title}}</h4>
			<p>
        {{member.institution}} <br/>
        <a href="mailto:{{member.email}}">{{member.email}}</a>
        {{member.blurb}}
			</p>
		</div>
	</div>
</div>
  {% cycle 'close rows': nil, nil, '</div>' %}
{% endfor %}
{% cycle 'close rows': nil, '</div>', '</div>' %}
