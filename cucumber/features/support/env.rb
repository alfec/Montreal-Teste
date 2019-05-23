require 'watir'
require 'capybara'
require 'page-object'


Before do


  @browser = Watir::Browser.new :chrome


  @browser.window.maximize


end