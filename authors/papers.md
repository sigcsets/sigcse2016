---
title: Paper Submission Guidelines
showTitle: true
---


{% comment %}
{% section Important Dates for Paper Authors %}

  ------------------------------------------------- ------------------------------------------
  Submission Deadline:                              \<? echo \$mainSubmissionDeadline; ?\>
  @11:59 p.m. Hawaii-Aleutian Standard Time (HST)
  Author Notification:                              \<? echo \$mainNotificationDeadline; ?\>
  Updates to Paper Title & Authors:                 \<? echo \$mainUpdatesDeadline; ?\>
  Camera-Ready Copy:                                \<? echo \$mainCameraReadyDeadline; ?\>
  ------------------------------------------------- ------------------------------------------
{% endcomment %}



{% include submissiondetails.html plural="Papers" %}

{% section What Kinds Of Papers Are Customary? %}

**We invite papers falling into the following topic areas**:

<a name="topicareas"> </a>

{% for type in site.data.topicareas %}
  {% cycle 'add rows': '<div class="row" style="padding-bottom: 20px; ">', nil, nil %}
<div class="col-md-4">
  {{type}}
</div>
  {% cycle 'close rows': nil, nil, '</div>' %}
{% endfor %}
{% cycle 'close rows': nil, '</div>', '</div>' %}

And, in truth, probably a few other areas as well, as long as you're within the conference theme and in the realm of  computer science education.

{% section How Should The Paper Be Formatted? %}

Authors must submit ONLY an anonymized version of the paper. The goal of
the anonymized version is to, as much as possible, allow the author(s)
of the paper an unbiased review. The anonymized version should have ALL
references to the authors removed (including author's names and
affiliation plus identifying information within the body of the paper
such as websites or related publications). Self-citations need not be
removed if they are worded so that the reviewer doesn't know if the
writer is citing himself/herself. That is, instead of writing "We
reported on our first experiment in 2007 in a previous paper [1]", the
writer might write "In 2007, an initial experiment was done in this area
as reported in [1].

If the paper is accepted for the conference and for publication, authors
will be asked to complete a camera-ready copy that will include all
appropriate author names, citations, and references.

The paper is limited to a **maximum of {{{{site.data.cfp.details[plural].limits}}** and must adhere to the
[SIGCSE {{site.data.main.year}} Format Instructions](format.html).

[Templates are available in Word, WordPerfect, and
LaTeX](http://www.acm.org/sigs/pubs/proceed/template.html).

If your paper is accepted you will have a chance to modify your
publication version before it is published.

Electronic submission of papers is required.

{% section How Do I Submit My Paper? %}

1.  Write your paper using the format specified above. Within the
    anonymized paper, you must provide Category and Subject Descriptors,
    General Terms, and Keywords based on the ACM classification system.
    These requirements are described in more detail in the [SIGCSE {{site.data.main.year}}
    Format Instructions](format.html).
    
2.  Convert your paper into Adobe PDF format. Refer to our [Creating
    Adobe PDF Documents page](creating_pdf.html) for assistance.
    
3.  Submit your paper using the . Be sure to choose the appropriate
    [topic areas](#topicareas) when submitting. Your choices help in
    determining appropriate reviewers, and to assist the reviewer in
    evaluating the paper from an appropriate perspective.
    
4.  Please do not wait until the last minute to submit your documents,
    because that is when everyone else will be connecting to our server!
    
5.  Make note of the paper ID number and password assigned to your
    submission. You will receive an e-mail message confirmation. Spam
    filters sometimes trap these automatically generated messages so you
    may need to check your spam trap for the confirmation and later,
    acceptance or rejection notification.
    
6.  After receiving confirmation, go to the to review your submission
    for accuracy. Send e-mail to (Adrienne Decker and Kurt Eiselt) if there are any problems.

{% section Presentation Notes %}

-   **All presenters must register for the conference**.

-   Paper presentations are **25 minutes** in length. Five minutes of
    that time should be reserved for answering questions from the
    audience.
    
-   Plan to attend the **speakers' breakfast** on the morning of your
    presentation to meet your session chair and to discuss the
    transitions between the presentations in your session.
    
-   The conference supplies a projector but not a laptop. You will need
    to **bring a laptop or arrange to use one from another attendee**.
    You may want to contact your session chair or other speakers in your
    session to arrange sharing. (If neither you, the other session
    speakers, nor the session chair have a laptop, send an email to
    .)
    
-   Bring a **backup copy** of your presentation on a USB stick. Session
    chairs may request that presenters arrange to make all presentations
    from a single laptop.
    
-   Wireless Internet access should be available during your
    presentation, but please be aware that there is always a potential
    for failure.
    
-   Arrive at your room **at least 10 minutes before** the session is
    scheduled to begin.


{% include presenter-warning.html %}



{% include submission-questions category="Program Co-Chair" %}


