require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'
require 'selenium-webdriver'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, {
      browser: :remote,
      url: 'http://selenium:4444/wd/hub',
      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome
    }
  )
end

Capybara.default_driver = :chrome
Capybara.app_host = "http://web:4567"

RSpec.configure do |config|
  config.warnings = false
  config.include Capybara::DSL
end
