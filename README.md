# Something New Website

This is the source code repository for the Something New website, found at https://somethingnew.org.uk. It's statically compiled with [Jekyll](https://jekyllrb.com), and hosted on [GitHub Pages](https://pages.github.com).

## Working on the site

The source is 100% open, and we welcome pull requests from anyone.

The site is made with Jekyll. However, it's probably one of the more complex Jekyll sites out there. Before getting too deep into editing it, it's a good idea to be familiar with [Jekyll and the way it works](https://jekyllrb.com/docs/home/).

The site is complex because it tries to be highly data-driven. We make heavy use of Jekyll [data files](https://jekyllrb.com/docs/datafiles/) and [collections](https://jekyllrb.com/docs/collections/). We also use [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) a lot. This is so that the data files the site is based on can live in their own clean repositories, with their own histories, and the site just renders them. We'll cover that in more detail below.

However, a lot of the files in the site are just plain Jekyll, so there's nothing too terrifying in them. Most logic is done in layouts, and the markdown/HTML files themselves tend to be kept fairly clean if at all possible.

### Building the site locally

You will ideally need Ruby `2.4.1`, though other Rubies >=2 should work. We recommend using [rbenv](https://github.com/rbenv/rbenv#installation) to manage Ruby versions.

Install dependencies with `bundle install`.

To build the site, run `bundle exec jekyll build`. This will create a statically compiled version in `_site`.

To preview the site and develop live, run `bundle exec jekyll serve`. Then visit [localhost:4000](http://localhost:4000) to see the site in a browser.

NOTE: because of the various complexities of the site, it's *slow* to build. It takes around 20 seconds on a Macbook Pro. We're trying to make it faster.

### Deploying changes

Because the site uses GitHub pages, there is no deployment step. Just push the changed source code (though ideally do a pull request for changes so they can be reviewed), and GitHub will do the rest.

## Submodules

There are four submodules in this project. To update them to the latest content, run `git submodule update --remote` and commit the result.

### manifesto

The simplest submodule, this just pulls in extra markdown content from the [OpenPolitics Manifesto](https://openpolitics.org.uk/manifesto), which is rendered under `/manifesto`. Layouts are set using the `defaults` in `_config.yml` (see the [Jekyll docs on frontmatter defaults](https://jekyllrb.com/docs/configuration/#front-matter-defaults) for more info).

### about/documents

Similar to the manifesto, this submodule pulls in content from the [Something New party constitution repository](https://github.com/SomethingNewUK/party-constitution), which contains legally-meaningful party documents, and which have specific restricted voting rules around changing - hence a different repository. The content is rendered under `/about/documents`.

### _data/finances

We publish our financial data openly, in CSV form, in the [finances repository](https://github.com/SomethingNewUK/finances). That repository is pulled in under the `_data` directory, so that we can render it nicely, provide download links, etc.

See the [repository's own README](https://github.com/SomethingNewUK/finances) for more details on the file structure itself, but in summary, there is a master `datapackage.json` file which contains a list of all other files within it, plus schema details.

The `/about/finances/index.md` file renders the content of that datapackage, including a list of all available files. 

Then, there is a file in `/about/finances` corresponding to each CSV file. These files are **empty**, and only exist so that an output file is created. The `finances`  layout does all the actual rendering of the CSV data.

### _data/popolo-data

We also publish structured data on candidates, elections, and so on, using the [Popolo](http://popoloproject.com/) standard. This data is in the [SomethingNewUK/popolo-data](https://github.com/SomethingNewUK/popolo-data) repository, and is included as a submodule under `_data`.

The popolo data is the **canonical source of truth** about the party, who runs it, and who our candidates are. For that reason, it is used to drive various parts of the site, so that we know the site and the data cannot diverge.

It is used to generate results and candidate lists, in `/results.html` and `candidates.html` respectively. It's also used to generate some information on the various people pages, under `_people`. See the details on that collection below.

The manipulation of this data is very messy, and involves a lot of hacking with [Liquid](http://liquidmarkup.org/), Jekyll's embedded code language (including a few bug workarounds). We're always trying to make it easier, but this is definitely the most complex part of the site.

## Data Sources

As well as the Popolo and finance data files discussed above, there are a number of others.

*to be written*

## Collections

*to be written*

## Tests

Because the site is complex, it has some tests written with RSpec, as well as a post-compile test that uses HTMLProofer to test correctness, dead links, etc.

*to be written*