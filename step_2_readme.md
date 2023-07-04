## Specifications

First, familiarize yourself with the current application setup. We have a Rails app with one model `Line` and its attribute `content`. The `LinesController` uses the [Pagy](https://github.com/ddnexus/pagy "Pagy") gem to fetch data in groups of 10 lines. For views, we have four files in the `lines` folder:

- `index.html.erb` with title and rendering 2 partials
- The partial `_lines.html.erb` which renders each line and its content
- The partial `_pager.html.erb` which contains the link that, when clicked, loads more lines using Turbo Streams
- `index.turbo_stream.erb` uses Turbo Streams to append new lines to the "lines" target and replace the "pager" target with updated content (again the focus of this quest is on IO, so you dont need to have a deep understanding of turbo streams for this quest, but we do recommend taking getting to grips with it on your coding journey).

### Stimulus Controller:

Stimulus Controller: Set up a new Stimulus controller in your Rails application. This will allow you to manage JavaScript behavior within the application. This can be done with the following command in your terminal:

```bash
rails g stimulus IntersectionController
```

### Intersection Observer API

Within the Stimulus controller, use the Intersection Observer API to monitor the `load more lines` link. Set the observer to trigger an action when the link comes into the viewport.

With the Intersection Observer API set up within the Stimulus controller, implement the functionality. When you scroll down the page, the next 10 lines should automatically load when you reach the 'load more lines' link.

### Test and Submit
Once you're done, run `yarn test`! If everything is green and you pass all the tests, submit your solutions by adding, committing and pushing your code to your repo!

```bash
git add .

git commit -m "solution for quest completed; passed test"

git push origin main
```

In a couple of minutes, we should receive your test results (Hit refresh if it doesn't load automatically). You will see the Mark as complete button again if you passed!
