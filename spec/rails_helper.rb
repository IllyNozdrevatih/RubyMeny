require 'factory_bot_rails'
require 'devise'
require 'spec_helper'
require 'capybara/rspec'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  Capybara.javascript_driver = :selenium
  Capybara.ignore_hidden_elements = true
  Capybara.exact = true
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :firefox)
  end
  config.include Capybara::DSL

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!

  config.use_transactional_fixtures = false

  # FACTORY BOT
  config.include FactoryBot::Syntax::Methods

  # DEVISE HELPER
  config.include Devise::Test::ControllerHelpers, type: :controller
end