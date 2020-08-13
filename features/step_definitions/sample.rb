


Given(/^i am on tankyou or somepage$/) do
  Thepage = SampleGetDirection.new(@browser)
  Thepage.page_url("file:///C:/Users/rakg/Desktop/rakshithApi/js_testing/html_js_testing/getdirection.html")
end

When(/^I click on a Get Directions link$/) do
  sleep(3)
  @get_direction = Thepage.link
  @google_map_url= Thepage.link.href
  @get_direction.click
  p "Get Directions link clicked"
end


Then(/^I navigate to a google map page$/) do
  @browser.windows.last.use
  @current_page_url= @browser.url.split('/maps')[0]
  expect(@google_map_url).to include 'google.com/maps'
  p "Google map has opened"
end