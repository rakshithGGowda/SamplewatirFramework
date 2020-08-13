require 'page-object'
require 'watir'
require 'rspec'
require 'selenium-webdriver'
require_relative '../../site/pages/GooglePage'
require_relative '../../site/pages/AmazonPage'
require_relative '../../site/pages/NissanHomePage'
require_relative '../../site/pages/RealTimeBooking'
require_relative '../../site/pages/SampleGetDirection'
require 'pry'
require 'date'
require 'rest-client'

PageObject.javascript_framework = :jquery

Before do
  @browser.close if @browser
  case ENV['BROWSER']
   when 'chrome' then
      @browser = Watir::Browser.new :chrome, :switches => ['--ignore-certificate-errors', '--disable-popup-blocking', '--disable-translate']
    @browser.window.maximize
   end
  end
World(PageObject::PageFactory)