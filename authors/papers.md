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

The paper is limited to a maximum of {{site.data.cfp.details[plural].limits}} and must adhere to ACM's publication guidelines:

<div class="text-center" style="margin-top: 10px; margin-bottom: 10px;">
<a href="{{site.data.main.acmpubguidelines}}">Formatting requirements, MS Word template, and LaTeX template</a>
</div>

If your paper is accepted you will have a chance to modify your publication version before it is published.

## How Do I Submit My Paper?

{% include generic-submission-block.html ispaper = "true" %}

{% include presenter-warning.html kind = "paper" %}

{% include submission-questions category="Program Co-Chair" %}
