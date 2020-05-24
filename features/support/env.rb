require "capybara"
require "capybara/rspec"
require "selenium-webdriver"
require 'faker'
require 'rspec'
require 'httparty'

Capybara.configure do |config|
  include Capybara::DSL
  # @driver = :selenium_chrome
  # config.default_driver = @driver
  config.default_max_wait_time = 15
    #  page.current_window.maximize
  config.app_host = "https://www.sicredi.com.br/html/ferramenta"
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
    chromeOptions: { args: %w(headless no-sandbox) }
  )

  if ENV['SELENIUM_DRIVER_URL'].present?
    Capybara::Selenium::Driver.new(
      app,
      browser: :remote,
      url: ENV.fetch('SELENIUM_DRIVER_URL'),
      desired_capabilities: capabilities
    )   
  else
    Capybara::Selenium::Driver.new app,
      browser: :chrome,
      desired_capabilities: capabilities
  end 
end

Capybara.javascript_driver = :headless_chrome