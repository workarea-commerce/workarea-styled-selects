Workarea Styled Selects
================================================================================

Styled Selects plugin for the Workarea platform.

This plugin adds a necessary styling hook for select inputs, along with a basic stylesheet to help jump-start styling the select elements within your application.

Getting Started
--------------------------------------------------------------------------------

Add the gem to your application's Gemfile:

```ruby
# ...
gem 'workarea-styled_selects'
# ...
```

Update your application's bundle.

```bash
cd path/to/application
bundle
```

Usage
--------------------------------------------------------------------------------

Installing this plugin will override the `select_tag` haml helper, wrapping it in a content tag with the `.styled-select` class.

Any select tags created by any means other than the select_tag helper, for example using a JST or `%select` will not automatically receive styles from this plugin. In order to style those elements you will need to update the relevant view files to wrap the select in

```html
<div class="styled-select">
    <!-- Your existing markup here -->
</div>
```

Some default styles have been included in this plugin, however it is expected that you will need to override the stylesheet to update these styles to match your design, you can do this using the following override generator command

```bash
bundle exec rails g workarea:override stylesheets workarea/styled_selects components/\_styled_select.scss
```

Workarea Commerce Documentation
--------------------------------------------------------------------------------

See [https://developer.workarea.com](https://developer.workarea.com) for Workarea Commerce documentation.

License
--------------------------------------------------------------------------------

Workarea Styled Selects is released under the [Business Software License](LICENSE)
