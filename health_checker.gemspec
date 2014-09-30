$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "health_checker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "health_checker"
  s.version     = HealthChecker::VERSION
  s.authors     = ["mewlist"]
  s.email       = ["mewlist[mewlist.com"]
  s.homepage    = ""
  s.summary     = "Simple health-checker as rack middleware"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 3.2.2"
end
