---
title: "Submission Guidelines"
layout: flat
showTitle: true
---

We have broken out submission guidelines by type. There are many ways to share the excellent work you are doing, and we would encourage you to consider all of them as you think about what would make the best vehicle for sharing your efforts with the larger community.

<div class="row">
  <div class="col-md-6 col-md-offset-3">
    <div class="table-responsive">
      <table class="table">
          <tbody>
    {% for submission in site.data.cfp.master %}
      <tr>
        <td> <b>{{submission.date}}</b> </td>
        <td>
          {% for sub in submission.types %}
              {% capture link %}<a href = "{{sub.plural | remove: ' ' | downcase}}.html">{{sub.plural}}</a>{% endcapture %}
              {% capture entry %}{% if forloop.first %}{% else %}<br/> {% endif %}{{link}}{% endcapture %}
              {{entry}}
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
