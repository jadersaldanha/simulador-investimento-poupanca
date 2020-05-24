require "capybara"
require "capybara/rspec"
require "selenium-webdriver"
require 'faker'
require 'rspec'
require 'httparty'

Capybara.configure do |config|
  include Capybara::DSL
  @driver = :selenium_chrome
  config.default_driver = @driver
  config.default_max_wait_time = 15
    #  page.current_window.maximize
  config.app_host = "https://www.sicredi.com.br/html/ferramenta"
end