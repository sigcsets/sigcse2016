---
title: For Reviewers
showTitle: true
---

## Important Dates


<div class="table-responsive">
  <table class="table">
      <tbody>
      <tr>
        <th>
          Due Date
        </th>
        <th>
          Category
        </th>
      </tr>
        
{% for submission in site.data.cfp.master %}
  <tr>
    <td> <b>{{submission.date}}</b> </td>
    <td>
      {% for sub in submission.types %} 
      {% capture linked %}<a href="{{site.base}}/authors/index.html#{{sub.plural | remove: ' '}}">{{sub.plural}}</a></li>{% endcapture %}
      {% capture entry %}{% if forloop.first %}{% else %}<br> {% endif %}{{linked}}{% endcapture %}
        {{entry}}
      {% endfor %}
    </td>
  </tr>
{% endfor %}
    </tbody>
  </table>
</div>

## How Do I Volunteer to Review?

All SIGCSE members are encouraged to participate in the reviewing process.

{% if site.data.flags.reviewSiteReady %}

If you are interested in reviewing papers for {{site.data.main.upper}} {{site.data.main.year}}, you are invited to complete the <a href="{{site.data.reviewers.reviewerRegistrationForm}}">reviewer registration form</a>. 

{% else %}

{% callout warning %}
We will update the community through the conference blog, Twitter feed, and {{site.data.main.upper}} mailing list when we are ready to register new reviewers for {{site.data.main.year}} and enlist the support of our ever-faithful returning reviewers.
{% endcallout %}

{% endif %}

## How Do I Review {{site.data.main.upper}} Submissions?

Submissions are reviewed according to categories indicated by the authors.  Reviewers will be assigned no more than three papers or six submissions of another type, based on their indicated subject areas of expertise. At least four reviewers are assigned to each.  Papers are **only** available in electronic PDF format. Adobe's Acrobat Reader, Mac's Preview, Evince on Linux, or any number of other options are known to work.

As part of your process as a reviewer, we recommend you work your way through the following four steps:

1. **Assignment**. When reviews are assigned, you will be sent an email from the system indicating that you have been assigned submissions to review and given a link that you can use to access those assigned submissions.


1. **Reviewer Guidelines**. In addition to the category criteria, we would encourage you to review the guidelines for the submission category you are reviewing for. We have guidelines for...

    * ... [Paper Submissions][papers]
    
    * ... [Panel Submissions][panels]
    
    * ... [Special Session Submissions][specials]
    
    * ... [Workshop Submissions][workshops]
    
    * ... [Birds of a Feather (BOF) Submissions][bofs]
    
    * ... [Poster Submissions][posters]
    
    * ... Lightning Talks
    
    * ... Demos
    

1. **Download Papers**. Access your your assigned submission(s) through the <a href="{{site.data.reviewers.proposalReviewSite}}">proposal review site</a>. You may review the submission on-line or print it for review at your leisure. If your web browser does awful things with your submission, you might try saving it to a file with a .pdf extension and opening it locally.

1. After reviewing, complete a report for each submission. Submit each review to the  <a href="{{site.data.reviewers.proposalReviewSite}}">proposal review site</a>.

Remember, **all reviews will be distributed anonymously to both the author(s) and reviewers of that submission**. This will give the author feedback and provide information to reviewers as well. It is hoped that, over time, this feedback will help make the review process more consistent as reviewers can compare their responses to those of others.

[papers]: guidepapers.html
[panels]: guidepanels.html
[specials]: guidesessions.html
[workshops]: guideworkshops.html
[bofs]: guidebofs.html
[posters]: guideposters.html

{% include submission-questions category="Program Co-Chair" %}
