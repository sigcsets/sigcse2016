---
title: Pre-Symposium Events
showTitle: true
---

There are several exciting pre-symposium events this year; plan your travel so you can get in a day early and take part in these excellent professional development and educational opportunities.

<div class="row">
<ul>
{% for event in site.data.presymposium %}
{% if event.name != "" %}
{% assign inc = event.name | remove: 'presymposium/' | remove: '.html' %}
<li> <a href="#{{inc}}">{{event.name}}</a> </li>
{% endif %}
{% endfor %}
</ul>
</div>

{% for event in site.data.presymposium %}
{% if event.name != "" %}
{% assign inc = event.name | remove: 'presymposium/' | remove: '.html' %}


<p><a name="{{inc}}"></a></p>

### {{event.name}}


**Date/Time**: {{event.date}}

**Where**: {{event.room}}

**Cost**: {{event.cost}}

**Max Participants**: {{event.max}}


{% include {{event.blurb}} %}

{% if event.info != "" %}
**For additional information**: <a href="{{event.info}}">{{event.info}}</a>
{% endif %}

{% if event.register != "" %}
  {% if event.register contains "http" %}
**To register for this event**: <a href="{{event.register}}">{{event.register}}</a>
  {% else %}
<b>{{event.register}}</b>
  {% endif %}
{% endif %}

**Organizers**:
<ul>
{% for org in event.organizers %}
{% if org.email %}
  <li>{{org.name}} (<a href="mailto:{{org.email}}">{{org.email}}</a>)</li>
  {% else %}
    <li>{{org.name}}</li>
  {% endif %}

{% endfor%}
</ul>

<p>&nbsp;</p>
{% endif %}

{% endfor %}

## For More Information

If you are interested in hosting a pre-symposium event, please contact the Pre-Conference Events Liaison (below) to request an application form.  Application forms should be submitted by <b>{{subdate}}</b> for full consideration.

Depending on the number of applications submitted and space availability at the conference hotel, not all events may be selected for inclusion.  

{% include submission-questions category="Pre-Conference Events Liaison" %}
