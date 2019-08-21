module Workarea
  module Storefront
    module StyledSelectHelper
      def select_tag(name, option_tags = nil, options = {})
        classes = ['styled-select']
        classes << options.delete(:modifier)
        content_tag :div, super, class: classes.compact.join(' ')
      end
    end
  end
end
