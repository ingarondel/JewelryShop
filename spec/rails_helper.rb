require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
require "devise"
require "shoulda/matchers"
require "database_cleaner"
require "pundit/rspec"


begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  aputs e.to_s.strip
  exit status 1
end

  RSpec.configure do |config|

  config.include Devise::Test::ControllerHelpers, type: :controller

  config.fixture_paths = [
    Rails.root.join('spec/fixtures')
  ]
  config.include FactoryBot::Syntax::Methods
  config.before( :suite) do
    FactoryBot.find_definitions
  end
   config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

   
  config.filter_rails_from_backtrace! 

  Shoulda::Matchers.configure do |config|
    config.integrate do |with|
      with.test_framework :rspec
      with.library :rails 
    end
end
end
