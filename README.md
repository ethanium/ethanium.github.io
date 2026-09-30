# Ethanium website

This site is built with Jekyll and the GitHub Pages gem. GitHub Pages can publish it directly from the repository root.

## Local preview

Install Ruby and Bundler, then run:

```powershell
bundle install
bundle exec jekyll serve
```

Open the local URL printed by Jekyll. To create a production build without serving it, run `bundle exec jekyll build`; generated files are written to `_site/`.

## Update the portfolio

Edit `_data/projects.yml`. Each project entry provides its title, category, description, screenshot, alt text, and external site URL. The homepage renders cards from that data.

## Enable Google tag

In `_config.yml`, set `google_tag_id` to the tag ID provided by Google, such as `G-XXXXXXXXXX` for Google Analytics or `AW-XXXXXXXXX` for Google Ads. The tag is then added to every page through the shared layout.

## Publish a blog post

Create a Markdown file under `_posts/` named `YYYY-MM-DD-short-title.md`. Add front matter for `title`, `date`, and `description`; post layout and permalink are configured by Jekyll. The archive is at `/blog/`, and `jekyll-feed` generates `/feed.xml`.
