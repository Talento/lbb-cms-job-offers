ENV['RAILS_ENV'] ||= 'test'

require File.expand_path("../dummy/config/environment.rb", __FILE__)

require 'rails/test_help'

require 'minitest/rails'
require 'minitest/rails/capybara'
require 'minitest/reporters'
require 'database_cleaner'
require 'factory_girl_rails'
require 'faker'

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

Minitest::Reporters.use!
DatabaseCleaner.strategy = :transaction

class MiniTest::Spec
  include FactoryGirl::Syntax::Methods

  before :each do
    DatabaseCleaner.start
  end

  after :each do
    DatabaseCleaner.clean
  end
end
