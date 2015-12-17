---
title: For Attendees
showTitle: true
---

<div class="row" style="margin-top: 20px; margin-bottom: 20px;">
{% callout info %}
<p>Everything you need for:
  <ul>
    <li> <a href="#registering">registering for SIGCSE</a>, </li>
    <li> <a href="travelgrants.html">applying for a travel grant from SIGCSE,</a></li>
    <li> <a href="#reserving">reserving a room</a>,</li>
    <li> <a href="#roommatedb">finding a roommate in the roommate database</a>,</li>
    <li> figuring out <a href="#travel">how to travel to {{site.data.main.conferenceCity}}</a>, and</li>
    <li> <a href="#stufftodo">what to do once you are there</a></li>
  </ul>
  is on this page.
</p>
{% endcallout %}
</div>

<a name="registering"></a>

## Registering for SIGCSE {{site.data.main.year}}

<!--
# NOTES FROM NOV 23 2015 - FIXME
Early registration rates --  Apply through February 2.
Late registration rates -- Apply from February 3, through February 23.
Registration closed -- From February 24 through March 1, while we prepare registration packets
Onsite registration -- Available beginning Wednesday, March 2, at 3:00 PM, and as shown above
-->

<div class="row">
  {% include onsiteregistration.md %}
</div>


{{site.data.main.upper}} {{site.data.main.year}} takes place between {{site.data.main.month}} {{site.data.main.start}} and {{site.data.main.month}} {{site.data.main.end}} of {{site.data.main.year}}.

As always, we encourage attendees to register early. This helps us with our planning, and in return, you get lower registration rates!

{% if site.data.main.isregistrationopen %}
<div class="text-center">
<hr>
<h3><a href="{{site.data.main.registrationurl}}">Register now!</a></h3>
<hr>
</div>
{% else %}
<div class="text-center">
  <hr>
  Registration will open soon!
  <hr>
</div>
{% endif %}

<p>Also, if you are not currently a SIGCSE member, you should <b>consider joining at the same time that you register</b> for the conference. Professionals can <b>save between $30 and $55</b>, while both professionals and students <b>save time</b> by not having to fill out a separate membership form.  The <a href="http://sigcse.org/membership/benefits" target = "_blank"><!-- __ -->benefits of SIGCSE membership</a>  are too numerous to list here, but they include the quarterly publications <i>ACM Inroads</i> and the <i>SIGCSE Bulletin</i>, free access to SIGCSE publication archives, access to the SIGCSE-ANNOUNCE and SIGCSE-MEMBERS mailing lists, and the opportunity to network within a community of computing professionals.</p>

Professionals should choose one of the "Non-member joining SIGCSE" registration categories, which are <b>less expensive</b> than the Non-member category. Students simply choose the "Student Non-member" registration category, and then don't opt-out of the included membership (that's right -- it couldn't be much easier). Alternatively, you could <a href="http://www.sigcse.org/membership" target = "_blank"><!-- __ -->join SIGCSE</a>, wait for your membership number, and then register for the conference using the "Member" category.

But wait! There's more! <b>Student volunteers</b> get reimbursed for their conference registration, so they actually <b>get free SIGCSE membership</b> when they join at the same time that they register for the conference. Important: to get this benefit, students must register as volunteers through a system separate from conference registration.

{% comment %}
Also, it is <b>less expensive to join ACM SIGCSE and register for the conference as a regular member than to register as a regular non-member</b>. Joining SIGCSE is {{site.data.main.sigcsemembershipcost}} for professionals and {{site.data.main.sigcsestudentmembershipcost}} for students, and rates for regular member attendees are at least $75 less than regular nonmember attendees at all times. Furthermore, by joining you gain access to an incredible global network of dedicated professionals and educators who are part of the SIGCSE community, so it is a double benefit to join the world’s premier professional computer science education organization!

<p>If you <a href="{{site.data.main.sigcsemembershipurl}}" target = "_blank"><!-- __ -->join SIGCSE</a> ({{site.data.main.sigcsemembershipcost}}/year), you save at least {{site.data.main.sigseregistrationsavings}} on your registration, and gain access to an incredible global network of dedicated professionals and educators who are part of the SIGCSE community.</p>
{% endcomment %}

### Registration Rates

<div class = "row" style = "font-weight: bold;">
  <div class = "col-sm-2"> When </div>
  <div class = "col-sm-6"> Dates </div>
  <div class = "col-sm-2"> Members </div>
  <div class = "col-sm-2"> Non-Members </div>
</div>
{% for row in site.data.registration.improved %}
  {% if row.alert %}
  <div class = "row" style="padding-top: 15px;">
    <div class = "col-sm-12 {{row.alert}} text-center">
    {{row.date}}
    </div>
  </div>
  {% else %}
  <div class = "row">
    <div class = "col-sm-2"> {{row.cat}} </div>
    <div class = "col-sm-6"> {{row.date}} </div>
    <div class = "col-sm-2"> ${{row.members}} </div>
    <div class = "col-sm-2"> ${{row.nonmembers}} </div>
  </div>
  {% endif %}
{% endfor %}

<div class = "row" style = "padding-bottom: 20px;">&nbsp;</div>

#### K-12 Educators, Workshops, and Students

<div class="row" style="margin-top: 20px; margin-bottom: 20px;">
  <div class="col-md-11 col-md-offset-1">
    <div class="table-responsive">
      <table>
{% for e in site.data.registration.other %}
        <tr class="{{e.alert}}">
          <td style="padding-top: 10px; padding-right: 30px; padding-bottom: 10px;"><b>{{e.category}}</b></td>
          <td>{{e.rates}}</td>
        </tr>
{% endfor %}
      </table>
    </div>
  </div><!-- end row6 -->
  <!--
  <div class="col-md-4 col-md-offset-1">
    <div class="text-center">
      <img
        src="/images/amazing-people-in-amazing-sigcse2015-shirts-300.png"
        alt="Amazing People in Amazing SIGCSE 2015 Shirts"
        width="100%"
        class="image-responsive"><br>
        <em>New this year - purchase a SIGCSE 2015 t-shirt for only $6.
          <b>Pre-orders only</b>.  Order when you register for the conference.</em>
    </div>
  </div>
  -->
</div>



<!-- <div class="row" style="margin-top: 20px; margin-bottom: 20px;">
  <div class="col-md-11 col-md-offset-1">
    <div class="table-responsive">
      <table>
{% for e in site.data.registration.deadlines %}
        <tr class="{{e.alert}}">
          <td style="padding-top: 10px; padding-right: 30px; padding-bottom: 10px;"><b>{{e.category}}</b></td>
          <td>{{e.date}}</td>
        </tr>
{% endfor %}
      </table>
    </div>
  </div>
</div> -->


<!-- {% if site.data.main.isregistrationopen %}
<div class="text-center">
  <hr>
<h3><a href="{{site.data.main.registrationurl}}">The Registration Link</a></h3>
<hr>
</div>
{% else %}
{% callout info %}
A link for registration will be made available here when we finish dusting off the ol' PDP-11 that's been running things since 1971. Just replacing a few tubes, and we'll be ready to go...
{% endcallout %}
{% endif %} -->


### Regarding Visas

The following is the official word from <a href="mailto:supportletters@acm.org">supportletters@acm.org</a> regarding letters of support for visas. Your requests should be emailed to <a href="mailto:supportletters@acm.org">supportletters@acm.org</a> with the information described below.

<div class="well">
  <p>
Visa support letters are answered in the order they are received. You will receive a PDF letter by email within the next 4-5 business days.  Please note we do not fax visa support letters.  The PDF serves as a signed electronic version of the original letter which will be mailed to your current mailing address.  If you do not receive the letter by post mail on time for your visa appointment, please print out your PDF letter and take it with you.
 </p>
 <p>
Please be sure you have included all of the following information below in your original email:
 </p>

<ol>
  <li>Your name as it appears on your passport </li>

  <li>Your current postal mailing address</li>

  <li>The name of the conference you wish to attend</li>

  <li>Your Registration Confirmation Number</li>

  <li>If you have any papers accepted for the conference, please provide the title and indicate whether you are the ‘sole author’ or a ‘co- author’</li>
</ol>
</div>

Note that it could take some time for your request to be honored; leave plenty of time.

&nbsp;



<a name="reserving"></a>

## Reserving a Room


<div class="row">
  <div class="col-md-8">
<p>
We are at the {{site.data.main.conferenceHotel}} in {{site.data.main.conferenceCity}}. You can <a href="{{site.data.main.bookingURL}}">reserve your room now</a>; don't wait!

</p>

<p><b>The conference rate is {{site.data.main.hotelrate}} plus tax per night.</b></p>


<ul>
<li> <b>Sheraton Memphis Downtown Hotel</b> (<a href="{{site.data.main.bookingURL}}">reservations</a>)
  <br>
  Deadline: {{site.data.main.hotelguaranteedate}}
  <br>
  250 North Main Street, Memphis,Tennessee 38103
  <br>
  Phone: <a href="tel:+1-901-527-7300">+1-901-522-7300</a>
</li>
</ul>

<p>So <a href="{{site.data.main.bookingURL}}">go reserve your room now</a>. Conference room rates are guaranteed until {{site.data.main.hotelguaranteedate}}.  Please make your reservations before that date to ensure the SIGCSE rate.</p>

<p>If you encounter any difficulties in booking, don't be afraid to use the phone; the Sheraton staff will be glad to assist you. </p>

<!--
<p>Please note that the SIGCSE rate is guaranteed for three days before and three days after the conference.  There are rooms available during those times.  However, <b>the online system may indicate that the rooms are sold out due to limitations of the reservation system</b>.  Please call the reservation number directly and your reservation can be adjusted for the days you need.</p>
-->

<p>The hotel requires a credit card to hold reservations.  Your credit card will not be charged until your stay.  If you need to cancel your reservation, 24 hours’ notice is required.</p>

</div>
  <div class="col-md-2 col-md-offset-1 text-center">
    <img src="{{site.base}}/images/memphis/memphis-38-200.png" width="200" class="image-responsive" ></img>
  </div>
</div>

<span class="anchor" id = "roommatedb"></span>

## Find a Roommate!

You can also use the [SIGCSE roommate database](http://sigcse.rit.edu/roommates/) to find someone to room with. This is the preferred database of SIGCSE members around the world for finding roommates at the SIGCSE Technical Symposium. Honest.


## If Needed: Overflow Options

Once we fill the conference hotel (it is best if we do!), these are some (relatively) nearby options that might serve for overflow.

* **Mariott Courtyard** ([reservations](http://www.marriott.com/meeting-event-hotels/group-corporate-travel/groupCorp.mi?resLinkData=SIGCSE%202016%5EMEMMP%60ACMACMA%7CACMACMB%60133.00-133.0%60USD%60false%604%60;MEMCD%60ACMACMA%7CACMACMB%60133.00%60USD%60false%604%603/1/16%603/7/16%602/1/16&app=resvlink&stop_mobi=yes))

  Booking Code: ACMB

  Deadline: Feburary 1st, 2016

  75 Jefferson Avenue, Memphis, TN  38103

  Phone: <a href="tel:901-522-2200">901-522-2200</a>

* **Mariott SpringHill Suites** ([reservations](http://www.marriott.com/meeting-event-hotels/group-corporate-travel/groupCorp.mi?resLinkData=SIGCSE%202016%5EMEMMP%60ACMACMA%7CACMACMB%60133.00-133.0%60USD%60false%604%60;MEMCD%60ACMACMA%7CACMACMB%60133.00%60USD%60false%604%603/1/16%603/7/16%602/1/16&app=resvlink&stop_mobi=yes))

  Booking Code: ACMA

  Deadline: Feburary 1st, 2016

  85 West Court Avenue, Memphis, TN  38103

  Phone: <a href="tel:901-522-2100">901-522-2100</a>



<a name="travel"></a>

## Getting to SIGCSE {{site.data.main.year}}

### {{site.data.main.nearestAirport}} (Airport Code: {{site.data.main.nearestAirportCode}})

<div class="row">
  <div class="col-md-12">
<p>
  Our airport is the {{site.data.main.nearestAirport}} (<a href="{{site.data.main.airporturl}}">{{site.data.main.airporturl}}</a>).
</p>
<p>
  The airport's phone number is <a href="tel:{{site.data.main.airportphonenumber}}">{{site.data.main.airportphonenumber}}</a>
</p>

<h3>Ground Transportation</h3>

Information on this critical part of your journey is forthcoming. Invariably, there are taxis, and shuttles, and we'll probably have a discount code of some sort. It's just not ready for posting, yet.


<a name="stufftodo"></a>

<h3>Once You Are There</h3>

Memphis is a great town (the Webmaster has been there before, and it's pretty groovy). We'll have information about all the excitement you hip cats can handle long before you arrive.

</div>
</div>
