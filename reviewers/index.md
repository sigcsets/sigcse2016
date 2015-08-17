---
title: For Reviewers
showTitle: true
---

## Important Dates

{% for group in site.data.reviewers.reviewgroups %}
  {% assign grouparray = group | remove: " " | split: ","%}
  <div class="table-responsive">
    <div class="well">Deadlines for <b>{{group}}</b></div>  
    <table class="table">
        <tbody>
    {% for submission in site.data.reviewers.reviewdates %}
      {% assign generateRow = false %}
      {% for sub in submission.types %}
        {% if grouparray contains sub.plural %}
          {% assign generateRow = true %}
        {% endif %}
      {% endfor %}
      {% if generateRow %}
        <tr>
          <td> <b>{{submission.event}}</b> </td>
          <td> {{submission.date}} </td>
        </tr>
      {% endif %}
    {% endfor %}
    {% comment %}
    {% for submission in site.data.reviewers.finalization %}
      {% assign generateRow = false %}
      {% for sub in submission.types %}
        {% if grouparray contains sub.plural %}
          {% assign generateRow = true %}
        {% endif %}
      {% endfor %}
      {% if generateRow %}
        <tr>
          <td> <b>{{submission.event}}</b> </td>
          <td> {{submission.date}} </td>
        </tr>
      {% endif %}
    {% endfor %}
    {% endcomment %}
      </tbody>
    </table>
  </div>
{% endfor %}

## How Do I Volunteer to Review?

All SIGCSE members are encouraged to participate in the reviewing process.

{% if site.data.flags.reviewSiteReady %}

### For New Reviewers

If you are interested in reviewing papers for {{site.data.main.upper}} {{site.data.main.year}}, you are <a href="{{site.data.reviewers.reviewerRegistrationForm}}">invited to complete the reviewer registration form</a>. In the box that says "Sign Up — Keycode:" input the code <span class="label label-warning">{{site.data.reviewers.keycode}}</span>.

After you have filled in your contact information, it it **MOST IMPORTANT** to select the topic areas for which you would like to review. Please limit yourself to areas in which you feel somewhat expert; you are limited to a maximum of <b>five</b> areas. Please note you may be called upon to review in track 1, track 2, or both track 1 and 2.

### For Those Who Have Previously Reviewed

All people currently listed in the reviewer database will receive an e-mail message in August with their current recorded information.

If you would like to <a href="{{site.data.reviewers.reviewerRegistrationForm}}">update your personal information in the database, go to the proposal review site</a> by <span class="label label-warning">{{site.data.reviewers.reviewsignupdeadline}}</span>. Your areas of reviewing expertise are not stored, so you will need to select them again, limiting yourself to a maximum of five areas in which you feel you have expertise. Please note you may be called upon to review in track 1, track 2, or both track 1 and 2.

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

    * ... [Lightning Talks][lightning]

    * ... [Demos][demos]


1. **Download Papers**. Access your your assigned submission(s) through the <a href="{{site.data.reviewers.proposalReviewSite}}">proposal review site</a>. You may review the submission on-line or print it for review at your leisure. If your web browser does awful things with your submission, you might try saving it to a file with a .pdf extension and opening it locally.

1. After reviewing, complete a report for each submission. Submit each review to the  <a href="{{site.data.reviewers.proposalReviewSite}}">proposal review site</a>.

Remember, **excellent reviewing improves the quality of the technical symposium and our community as a whole**. Your reviews provide the author with valuable insight into the work they are presenting.

[papers]: guidepapers.html
[panels]: guidepanels.html
[specials]: guidesessions.html
[workshops]: guideworkshops.html
[bofs]: guidebofs.html
[posters]: guideposters.html
[lightning]: guidelightningtalks.html
[demos]: guidedemos.html

{% include submission-questions category="Program Co-Chair" %}
