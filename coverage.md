---
title: Media Coverage
---

Something New has being covered by various media outlets, and a number of online blogs. This is a list of articles that have been published so far:

{% for article in site.data.coverage %}
| [{{ article.title }}]({{ article.url }}) | {{ article.publication }} | {{ article.date | date_to_long_string}} | {% endfor %}
{: .table .table-striped }

We have also had a number of letters published in various newspapers, which you can find republished on our [news page](/news.html).