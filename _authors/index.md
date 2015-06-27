---
title: Call for Papers
showTitle: true
---

## Important Submission Dates

<div class="row">
  <div class="col-md-12">
    <div class="table-responsive">
      <table class="table">
          <tbody>
    {% for submission in site.data.cfp.master %}
      <tr>
        <td> <b>{{submission.date}}</b> </td>
        <td>
          {% for sub in submission.types %}

              {% if sub.new %}
                {% capture newflag %}<span style='color: gold;'><i class="fa fa-star-o"></i></span>{% endcapture %}
              {% endif %}
              {% capture link %}<a href="#{{sub.plural | remove: ' '}}">{{sub.plural}}</a>{% endcapture %}
              {% capture entry %}{% if forloop.first %}{% else %}<br/> {% endif %}{{link}}{% endcapture %}
                {{entry}}{{newflag}}
              {% assign newflag = "" %}

          {% endfor %}
        </td>
      </tr>
    {% endfor %}
        </tbody>
      </table>
    </div>
  </div>
  <div class="col-md-12 well">
      Dates for <b>notification of acceptance</b> and <b>camera-ready submission</b> can be found on the detail page for each specific submission type.
  </div>
</div>


<div class="row">
  <div class="col-sm-10">
    <h2>About The Program</h2>
<p>    {{site.data.main.upper}} {{site.main.data.year}} continues our long tradition of bringing together colleagues
from around the world to discuss computer science education in both
formal and informal settings.  The {{site.data.main.upper}} {{site.main.data.year}} program offers a variety
of sessions: papers, panels, posters, special sessions, workshops,
birds-of-a-feather, and new this year, lightning talks and demos! The {{site.data.main.upper}} Technical Symposium addresses problems common among educators working to develop, implement and/or evaluate computing programs, curricula, and courses. The symposium provides a forum for sharing new ideas for syllabi, laboratories, and other elements of teaching and pedagogy, at all levels of instruction.
</p>
<p>    Submissions in line with the conference theme, <b>{{site.data.main.theme}}</b>, are encouraged. The theme is a call for all of us to make sure that our efforts in this field keep us moving in the right directions.  We need to keep connected with each other for the sharing of ideas.  We want our students to be connected to each other and to us to help further their educational experience.  We need to keep our focus and commitment on the efforts we are pursuing to further computing education.  And most importantly we need to keep our students committed to the field so that they will keep computing.
</p>
{% callout info %}
We are particularly interested in keeping our community connected with interesting educational efforts in upper level courses, open-source software, outreach, and education research.  We continue our commitment to the inclusion of a wide-variety of submissions in the program that span the spectrum from experience reports to rigorous educational studies.  We are excited for you to be a part of showing our community why we all need to keep computing.
{% endcallout %}

<p>The CFP for the {{site.data.main.upper}} {{site.data.main.year}} symposium was last updated {{site.data.cfp.lastupdate}}. We have a <a href="{{site.data.cfp.pdf}}">PDF version</a> of this document as well. </p>
</div>
</div>

## Preparing Your Submissions

<ul>
  {% for submission in site.data.cfp.master %}
    {% for sub in submission.types %}
    <!-- unless sub.notincfp -->
    {% if sub.new %}
      {% capture newflag %}<span style='color: gold;'><i class="fa fa-star-o"></i></span>{% endcapture %}
    {% endif %}
      <li><a href="#{{sub.plural | remove: ' '}}">{{sub.plural}}</a> {{newflag}}</li>
      {% assign newflag = "" %}
    <!-- endunless -->
    {% endfor %}
  {% endfor %}
</ul>

{% for submission in site.data.cfp.master %}
  {% for sub in submission.types %}
  <div class="row">
    <div class="col-lg-10">
      {% if sub.new %}
        {% capture newflag %}<span style='color: gold;'><i class="fa fa-star-o"></i> NEW! <i class="fa fa-star-o"></i></span>{% endcapture %}
      {% endif %}
     <a name="{{sub.plural | remove: ' '}}"></a>
     <h2>{{sub.plural}} {{newflag}}</h2>
     <p><a href="{{site.base}}/authors/{{sub.include}}.html">{% icon arrow-circle-right %} Authoring and Submission Guidelines</a></p>
   </div>
   <div class="col-lg-10">
       {% capture file %}submissions/{{sub.include}}.md{% endcapture %}
       {% include {{file}} %}
   </div>
   <div class="col-lg-10">
     {% include submissiondetails.html plural=sub.plural %}
   </div>
 </div>
   {% assign newflag = "" %}
 {% endfor %}
{% endfor %}
