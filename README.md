Workarea Styled Selects
================================================================================

Styled Selects plugin for the Workarea platform.

This plugin adds a necessary styling hook for select inputs, along with a basic stylesheet to help
jump-start styling the select elements within your application.

Installing this plugin will override the select_tag haml helped, wrapping it in a content tag with the .styled-select class.

Any select tags created by any means other than the select_tag helper, for example using a JST or %select will not automatically recieve styles from this plugin. In order to style those elements you will need to update the relevant view files to wrap the select in

    <div class="styled-select">
        # Your existing markup here
    </div>

Some default styles have been included in this plugin, however it is expected that you will need to override the stylesheet to update these styles to match your design, you can do this using the following override generator command

    bundle exec rails g workarea:override stylesheets workarea/styled_selects/components/_styled_select.scss

Getting Started
--------------------------------------------------------------------------------

This gem contains a rails engine that must be mounted onto a host Rails application.

To access Workarea gems and source code, you must be an employee of WebLinc or a licensed retailer or partner.

Workarea gems are hosted privately at https://gems.weblinc.com/.
You must have individual or team credentials to install gems from this server. Add your gems server credentials to Bundler:

    bundle config gems.weblinc.com my_username:my_password

Or set the appropriate environment variable in a shell startup file:

    export BUNDLE_GEMS__WEBLINC__COM='my_username:my_password'

Then add the gem to your application's Gemfile specifying the source:

    # ...
    gem 'workarea-styled_selects', source: 'https://gems.weblinc.com'
    # ...

Or use a source block:

    # ...
    source 'https://gems.weblinc.com' do
      gem 'workarea-styled_selects'
    end
    # ...

Update your application's bundle.

    cd path/to/application
    bundle

Workarea Platform Documentation
--------------------------------------------------------------------------------

See [http://developer.weblinc.com](http://developer.weblinc.com) for Workarea platform documentation.

Copyright & Licensing
--------------------------------------------------------------------------------

Copyright WebLinc 2018. All rights reserved.

For licensing, contact sales@workarea.com.
