require 'rubygems'
require 'rspec'
require 'watir'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
include Selenium

Before do

  @browser = Watir::Browser.new :chrome
  @browser.window.maximize

end

Capybara.configure do |c|
    c.default_driver = :selenium
   #c.default_driver = Selenium::WebDriver.for :chrome
   #driver = Selenium::WebDriver.for :firefox
Capybara.default_max_wait_time = 20

end