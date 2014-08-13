---
title: "International Committee"
showTitle: true
---

{% comment %}
http://www.layoutit.com/build
http://stackoverflow.com/questions/2245972/modulus-or-lack-thereof-in-rubys-liquid-templating-engine
{% endcomment %}

{% callout info %}
SIGCSE is an international organization made up of dedicated students, educators, researchers, and administrators (sometimes all at the same time) from around the world. 
{% endcallout %}


<div class="row" style="padding-top: 30px; padding-bottom: 30px;">
  <div class="col-md-10 col-md-offset-1">
  <img src="{{site.base}}/images/committee/international-map.png" width="100%" class="image-responsive">
  </div>
</div>

{% assign letters = "0,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z" %}
{% for member in site.data.international %}
  {% assign letter = letters | split: "," %}
  {% cycle 'add rows': '<div class="row">', nil, nil %}
<div class="col-md-4">
	<div class="thumbnail" style="padding-top: 0px;">
		<div class="caption">
			<h3>
				<span class="label label-danger">{{letter[forloop.index]}}</span> {{member.name}}
			</h3>
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
