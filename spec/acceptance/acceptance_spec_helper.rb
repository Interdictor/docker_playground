require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.app = Sinatra::Application
Capybara.default_driver = :chrome
Capybara.app_host = "http://localhost:4567"

RSpec.configure do |config|
  config.warnings = false
  config.include Capybara::DSL
end
