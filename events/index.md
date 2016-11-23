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
  {% for event in site.events %}
    {% if event.end < site.time %}
      {% include event_index.html %}
    {% endif %}
  {% endfor %}
</ul>