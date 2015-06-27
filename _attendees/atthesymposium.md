---
title: At The Symposium
showTitle: true
---

<p style="padding-left: 15px;">{% include small-follow-links.html %}</p>
<p>
<ul>
  {% for item in site.data.whileatthesymposium %}
  {% if item.link %}
  <li style="font-size: 150%;"> <a href="{{item.link}}">{{item.title}}</a></li>

  {% endif %}
  {% endfor %}

</ul>
</p>

