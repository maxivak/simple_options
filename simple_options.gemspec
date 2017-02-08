$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_options/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_options"
  s.version     = SimpleOptions::VERSION
  s.authors     = ["Max Ivak"]
  s.email       = ["maxivak@gmail.com"]
  s.homepage    = "https://github.com/maxivak/simple_options"
  s.summary     = "Edit settings of the application"
  s.description = "Edit settings (options)"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 4.2"

  s.add_development_dependency "sqlite3"
end
