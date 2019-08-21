module Workarea
  module StyledSelects
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      isolate_namespace Workarea::StyledSelects

      config.to_prepare do
        Storefront::ApplicationController.helper(Storefront::StyledSelectHelper)
      end
    end
  end
end
