
Given(/^I am on Google page$/) do
   Googlepage = GooglePage.new(@browser)
   Googlepage.page_url("https://www.google.com")
end

Then(/^I can see search results$/) do
  field = Googlepage.search_field
  expect(field).to exist
end
