
# Background

**Task:**
- Harry Potter is in trouble with Dolores Umbridge again, and he’s been forced to write out 200 lines of “I must not tell lies”. 
- You’re task is to help Harry magically load more lines as he scrolls down the page.

**How we’re going to help Harry achieve this:**
- Currently, when Harry clicks ‘load more lines’ the next set of 10 lines is loaded using Turbo Streams - but this is too slow.
- So to help him, we’re going to be using the Intersection Oberserver API via the Stimulus controller to autoload the content when he scrolls, without having to click anything
- The idea is that: the intersection observer will be constantly monitoring the viewport (i.e. what the user sees on the screen) and if the link for ‘load more lines’ is in the viewport, this will trigger an action. In our case, the action will be to load the next 10 lines.
- Given the link is at the bottom of the lines, each time we scroll down the list, the link to will come in to view and get triggered again, Harry scolls down some more, process repeats until there are no more lines.

*Essentially, the Intersection Observer API allows you to monitor elements on a web page and detect when they come into or go out of view within the viewport, and so you might be able to see why they can be so powerful.*

## Key Learning Points:
- How do you set up stimulus controllers in Rails?
- What are the use cases of Intersection Observers?
- How can you integrate the Intersection Observer API with Stimulus controllers to create dynamic behaviour in Rails?



# Bonus Information
**Understanding what you’re starting with:**
- The app is split into one model: line with one attribute: content (text)
- The Lines Controller has only one method, index which uses the pagy gem (read more about the gem here)
- We’ve handled the pagy set up already for you (as the focus of this quest is the intersection observer - but its an incredibly useful gem for pagination and is very simple to set up - link here)
    - @pagy, @lines = pagy(Line, items: 10)
    - the pagy gem essentially fetches data in groups of a certain number (in this case 10)
- Views - set up in 4 files:
    - main index with title and rendering 2 partials
    - partial 1 = _lines.html.erb which renders each line and its content
    - partial 2 = _pager.html.erb which contains the link that, when clicked, loads more lines using Turbo Streams
    - file 4 = index.turbo_stream.erb uses Turbo Streams to append new lines to the "lines" target and replace the "pager" target with updated content (again the focus of this quest is on IO, so you dont need to have a deep understanding of turbo streams for this quest, but we do recommend taking getting to grips with it on your coding journey).
