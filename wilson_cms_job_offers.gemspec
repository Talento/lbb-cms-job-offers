$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wilson_cms_job_offers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wilson_cms_job_offers"
  s.version     = WilsonCmsJobOffers::VERSION
  s.authors     = ["Antonio J Rossi", "Alejandro León"]
  s.email       = ["antonio.rossi@the-cocktail.com", "alejandro.leon@the-cocktail.com"]
  s.homepage    = ""
  s.summary     = "Rails engine for job offers"
  s.description = "Rails engine for job offers"
  s.license     = ""

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.6"

  s.add_dependency "globalize", "~> 4.0.2"
  s.add_dependency "globalize-accessors", "~> 0.1.5"
  s.add_dependency "simple_form", "~> 3.1.0"
  s.add_dependency "nested_form", "~> 0.3.2"
  s.add_dependency "inherited_resources", "~> 1.5.0"
  s.add_dependency "paperclip", "~> 4.2.0"
  s.add_dependency "kaminari", "~> 0.16.1"
  s.add_dependency "audited-activerecord", "~> 4.0.0"
  s.add_dependency "friendly_id", "~> 5.0.4"
  s.add_dependency "friendly_id-globalize", "~> 1.0.0.alpha1"
  s.add_dependency "route_translator", "~> 3.2.4"
  s.add_dependency "jquery-rails", "~> 3.1.2"
  s.add_dependency "ckeditor", "~> 4.1.0"
  s.add_dependency "rails-i18n", "~> 4.0.3"

  s.add_development_dependency "mysql2", "~> 0.3.16"
  s.add_development_dependency "pry", "~> 0.10.1"
  s.add_development_dependency "pry-remote", "~> 0.1.8"
  s.add_development_dependency "binding_of_caller", "~> 0.7.2"
  s.add_development_dependency "minitest-rails-capybara", "~> 2.1.1"
  s.add_development_dependency "minitest-reporters", "~> 1.0.5"
  s.add_development_dependency "database_cleaner", "~> 1.3.0"
  s.add_development_dependency "faker", "~> 1.4.3"
  s.add_development_dependency "factory_girl_rails", "~> 4.0"




end
