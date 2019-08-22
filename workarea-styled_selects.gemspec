$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "workarea/styled_selects/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "workarea-styled_selects"
  s.version     = Workarea::StyledSelects::VERSION
  s.authors     = ["Jake Beresford"]
  s.email       = ["jberesford@weblinc.com"]
  s.homepage    = "https://stash.tools.weblinc.com/projects/WP/repos/workarea-styled-selects/browse"
  s.summary     = "Styled select input UI for the Workarea platform"
  s.description = "Easily customize the styling of the <select> input type in a workarea application"

  s.files = `git ls-files`.split("\n")

  s.license = 'Business Software License'

  s.add_dependency "workarea", "~> 3.x"
end
