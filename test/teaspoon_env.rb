require "workarea/testing/teaspoon"

Teaspoon.configure do |config|
  config.root = Workarea::StyledSelects::Engine.root
  Workarea::Teaspoon.apply(config)
end
