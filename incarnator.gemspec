$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "incarnator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "incarnator"
  s.version     = Incarnator::VERSION
  s.authors     = ["Nickolay Kondratenko"]
  s.email       = ["devmarkup@gmail.com"]
  s.homepage    = "https://github.com/kont-noor"
  s.summary     = "Versatile authencitatable user models set"
  s.description = s.summary
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2"
  s.add_dependency "devise", "~> 3.4"
  s.add_dependency "gravtastic"

  s.add_development_dependency "pg", "~> 0.17"
end
