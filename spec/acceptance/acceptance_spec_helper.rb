require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'
require 'selenium-webdriver'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, {
      url: 'http://selenium_container:4444/wd/hub',
      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome
    }
  )
end

Capybara.default_driver = :chrome
Capybara.app_host = "http://sinatrilla_container:4567"

RSpec.configure do |config|
  config.warnings = false
  config.include Capybara::DSL
end
