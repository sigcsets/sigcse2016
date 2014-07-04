---
title: Call For Papers
showTitle: true
---

SIGCSE {{site.data.main.year}} continues our long tradition of bringing together colleagues from around the world to present papers, panels, posters, special sessions, and workshops, and to discuss computer science education in birds-of-a-feather sessions and informal settings. The SIGCSE Technical Symposium addresses problems common among educators working to develop, implement and/or evaluate computing programs, curricula, and courses. The symposium provides a forum for sharing new ideas for syllabi, laboratories, and other elements of teaching and pedagogy, at all levels of instruction. 

Submissions in line with the conference theme, **{{site.data.main.theme}}**, are encouraged. The theme is a call for all of us to make sure that our efforts in this field keep us moving in the right directions.  We need to keep connected with each other for the sharing of ideas.  We want our students to be connected to each other and to us to help further their educational experience.  We need to keep our focus and commitment on the efforts we are pursuing to further computing education.  And most importantly we need to keep our students committed to the field so that they will keep computing.

We are particularly interested in keeping our community connected with interesting educational efforts in upper level courses, open-source software, outreach, and education research.  We are continuing to keep our commitment to the inclusion of a wide-variety of submissions in the program that span the spectrum of experience reports to scientifically rigorous educational studies.  We are excited for you to be a part of showing our community why we all need to keep computing.

Submissions to SIGCSE {{site.data.main.year}} might take many forms:

<div class="table-responsive">
  <table class="table">
      <thead>
        <tr>
          <th> Date </th>
          <th> Submission Type</th>
        </tr>
      </thead>
      <tbody>
{% for submission in site.data.cfp.master %}
  <tr>
    <td> <b>{{submission.date}}</b> </td>
    <td>
      {% for sub in submission.types %} 
      {% capture link %}<a href="#{{sub.plural | remove: ' '}}">{{sub.plural}}</a></li>{% endcapture %}
      {% capture entry %}{% if forloop.first %}{% else %}<br/> {% endif %}{{link}}{% endcapture %}
        {{entry}}
      {% endfor %}
    </td>
  </tr>
{% endfor %}
    </tbody>
  </table>
</div>

{% for submission in site.data.cfp.master %}
  {% for sub in submission.types %} 
  <div class="row">
    <div class="col-lg-10">
      {% if sub.new %}
        {% capture newflag %}<span style='color: gold;'><i class="fa fa-star-o"></i> NEW! <i class="fa fa-star-o"></i></span>{% endcapture %}
      {% endif %}
     <a name="{{sub.plural | remove: ' '}}"></a>
     <h2>{{sub.plural}} {{new}}</h2>
     <small><a href="{{site.base}}/authors/{{sub.include}}.html">{% icon arrow-circle-right %} Authoring Guidelines</a></small>    
   </div>
   <div class="col-lg-10">
       {% capture file %}submissions/{{sub.include}}.md{% endcapture %}
       {% include {{file}} %}
   </div>
   <div class="col-lg-10">
     <div class="alert alert-info"  style="margin-top: 20px;">
     <b>Submission Deadline</b>: {{submission.date}}
     </div>
   </div>
 </div>
 {% endfor %}     
{% endfor %}


{% comment %}
<!-- Previous listing of includes, which is outdated. -->
<ul>
{% for type in site.data.cfp.includes %}
  {% if (type[0] == "Student Research Competition") or (type[0] == "Birds of a Feather") %}
  {% assign plural = "" %}
  {% else %}
  {% assign plural = "s" %}
  {% endif %}
  {% capture pluraled %}{{type[0]}}{{plural}}{% endcapture %}
  <li><a href="#{{type[0] | remove: ' '}}">{{type[0]}}{{plural}}</a></li>
{% endfor %}
</ul>
{% endcomment %}
