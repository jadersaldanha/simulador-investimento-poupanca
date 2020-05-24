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
  config.default_driver = BROWSER = (ENV['DRIVER'] || 'chrome').to_sym
end

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('start-maximized')
  options.add_argument('disable-infobars')
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options
  )
end