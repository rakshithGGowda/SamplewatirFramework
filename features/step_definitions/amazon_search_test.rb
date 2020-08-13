Given(/^I am on Amazon page$/)do
  Amazonsearch = AmazonPage.new(@browser)
  Amazonsearch.page_url("https://www.amazon.in")
end

When(/^I search for phones$/) do
  @search_text = "phones"
  Amazonsearch.amazon_search = @search_text
  @browser.send_keys :enter
end

Then(/^search results should match$/) do

  print_value = Amazonsearch.result_value_element.text

  expect(print_value).equal? @search_text
end