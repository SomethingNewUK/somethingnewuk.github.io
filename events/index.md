---
title: Events
description: Details of Something New events
---

<a href='calendar.ics' class='btn btn-primary pull-right'>
  <i class='fa fa-calendar'></i>
  Add to your calendar
</a>

## Upcoming Events
<ul class="thumbnails events">
  {% for event in site.events %}
    {% if event.end >= site.time %}
      {% include event_thumbnail.html %}
    {% endif %}
  {% endfor %}
</ul>

## Past Events
{% assign events = site.events | sort: "end" | reverse %}
<ul class="thumbnails events">
  {% for event in site.events %}
    {% if event.end < site.time %}
      {% include event_thumbnail.html %}
    {% endif %}
  {% endfor %}
</ul>