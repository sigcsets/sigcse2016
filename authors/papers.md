---
title: "Guidelines: Papers"
---

{% include submissiondetails.html plural="Papers" %}

## What Kinds Of Papers Are Customary?

We invite papers falling into the following topic areas:


{% for type in site.data.topicareas %}
  {% cycle 'add rows': '<div class="row" style="padding-bottom: 10px; ">', nil, nil %}
    <div class="col-md-3 col-md-offset-1">
      <small>{{type}}</small>
    </div>
  {% cycle 'close rows': nil, nil, '</div>' %}
{% endfor %}
{% cycle 'close rows': nil, '</div>', '</div>' %}

And, in truth, probably a few other areas as well, as long as you're within the conference theme and in the realm of computer science education.

## How Should The Paper Be Formatted?

Authors must submit ONLY an anonymized version of the paper. The goal of the anonymized version is to, as much as possible, allow the author(s) of the paper an unbiased review. The anonymized version should have ALL references to the authors removed (including author's names and affiliation plus identifying information within the body of the paper such as websites or related publications). Self-citations need not be removed if they are worded so that the reviewer doesn't know if the writer is citing himself/herself. That is, instead of writing "We reported on our first experiment in 2007 in a previous paper [1]", the writer might write "In 2007, an initial experiment was done in this area as reported in [1].

If the paper is accepted for the conference and for publication, authors will be asked to complete a camera-ready copy that will include all appropriate author names, citations, and references.

The paper is limited to a maximum of {{site.data.cfp.details[plural].limits}} and must adhere to the <a href = "{{site.data.main.acmpubguidelines}}">ACM publication guidelines</a>.

Templates are available in Word, WordPerfect, and LaTeX.

If your paper is accepted you will have a chance to modify your publication version before it is published.

Electronic submission of papers is required.

## How Do I Submit My Paper?
Write your paper using the format specified above. Within the anonymized paper, you must provide Category and Subject Descriptors, General Terms, and Keywords based on the ACM classification system. These requirements are described in more detail in the SIGCSE {{site.data.main.year}} Format Instructions.

Convert your paper into Adobe PDF format. Refer to our [Creating
    Adobe PDF Documents page](creating_pdf.html) page for assistance.

A PDF version of your submission should be uploaded using the online submission system. Be sure to choose the appropriate topic areas when submitting. Your choices help in determining appropriate reviewers, and assists the reviewers in evaluating the paper from an appropriate perspective.

Please do not wait until the last minute to submit your documents, because that is when everyone else will be connecting to our server!

Make note of the paper ID number and password assigned to your submission. You will receive an e-mail message confirmation. Spam filters sometimes trap these automatically generated messages so you may need to check your spam trap for the confirmation and later, acceptance or rejection notification.

After receiving confirmation, go to the to review your submission for accuracy. Send e-mail to your Program Co-Chairs if you have questions (email addresses below).

{% include presenter-warning.html %}

{% include submission-questions category="Program Co-Chair" %}
