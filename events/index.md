---
title: Events
description: Details of Something New events
---

<a href='calendar.ics' class='btn btn-primary pull-right'>
  <i class='fa fa-calendar'></i>
  Add to your calendar
</a>

## Upcoming Events
<ul>
  {% for event in site.events %}
    {% if event.end >= site.time %}
      {% include event_index.html %}
    {% endif %}
  {% endfor %}
</ul>

## Past Events
{% assign events = site.events | sort: "end" | reverse %}
<ul>
  {% for event in events %}
    {% if event.end < site.time %}
      {% include event_index.html %}
    {% endif %}
  {% endfor %}
</ul>

Something New members and speakers are always happy to participate in events, and have given many talks about our party. If you would like us to come and talk to your group, or take part in an event, please contact [info@somethingnew.org.uk](mailto:info@somethingnew.org.uk) or post on our [forum](http://discourse.somethingnew.org.uk).

