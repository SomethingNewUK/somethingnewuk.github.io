---
title: Events
description: Details of Something New events
---

<a href='calendar.ics' class='btn btn-primary pull-right'>
  <i class='fa fa-calendar'></i>
  Add to your calendar
</a>

## Upcoming Events
<table class='table table-striped'>
  {% for event in site.events %}
    {% if event.end >= site.time %}
      {% include event_index.html %}
    {% endif %}
  {% endfor %}
</table>

## Past Events
{% assign events = site.events | sort: "end" | reverse %}
<table class='table table-striped'>
  {% for event in events %}
    {% if event.end < site.time %}
      {% include event_index.html %}
    {% endif %}
  {% endfor %}
</table>

Something New members and speakers are always happy to participate in events, and have given many talks about our party. If you would like us to come and talk to your group, or take part in an event, please contact [info@somethingnew.org.uk](mailto:info@somethingnew.org.uk) or post on our [forum](http://discourse.somethingnew.org.uk).

