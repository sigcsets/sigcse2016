---
title: "Associate Program Chairs"
showTitle: true
---

{% comment %}
http://www.layoutit.com/build
http://stackoverflow.com/questions/2245972/modulus-or-lack-thereof-in-rubys-liquid-templating-engine
{% endcomment %}

{% callout info %}
The role of the Associate Program Chair is glamorous, mysterious, and not entirely unlike being a shadow cabinet member under the Westminster system of government. Or, perhaps it is slightly different in ways that defy description.
{% endcallout %}


{% assign letters = "0,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z" %}
{% for member in site.data.associateprogramchairs %}
  {% assign letter = letters | split: "," %}
  {% cycle 'add rows': '<div class="row">', nil, nil %}
<div class="col-md-4">
	<div class="thumbnail" style="padding-top: 0px;">
		<div class="caption">
			<h3>
				{{member.name}}
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
