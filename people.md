---
title: People
---

These are the people who make up Something New's official team; the party officers and executive board. The party is much larger than these few though! The manifesto has been written [by over 40 people](https://github.com/openpolitics/manifesto/graphs/contributors) working together, and there are also over 40 people on our [discussion forum](http://discourse.somethingnew.org.uk/), adding to the life of the party in their own ways.

We know we're not a diverse group, and that's just one more reason why we want you to [get involved](/support.html)! If you believe in a brighter future for British politics, we'd love to hear from you, whoever you are. We need your voice!

---

<div class='row'>
  {% for p in site.people %}
    {% if p.popolo_data_id %}
      {% include headshot.html person_id=p.popolo_data_id link=p.url %}
    {% endif %}
  {% endfor %}
</div>
