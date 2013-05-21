$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "subscribem/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "subscribem"
  s.version     = Subscribem::VERSION
  s.authors     = ["TODO"]
  s.email       = ["TODO"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Subscribem."
  s.description = "TODO: Description of Subscribem."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"

  # testing environment
  s.add_development_dependency 'rspec-rails', '2.12.2'
  s.add_development_dependency 'capybara', '2.0.2'

  # has_secure_password
  s.add_development_dependency 'bcrypt-ruby', '3.0.1'
  s.add_development_dependency 'warden', '1.2.1'

  # dynamic form
  s.add_development_dependency 'dynamic_form', '1.1.4'

  # factory girl
  s.add_development_dependency 'factory_girl', '4.1.0'
end
