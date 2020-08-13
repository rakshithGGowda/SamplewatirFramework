Given(/^I am on Nissan page$/)do
  Nissanlogo = NissanHomePage.new(@browser)
  Nissanlogo.page_url("https://www.nissan.in/")
end

Then(/^logo id should match$/) do
    expect(Nissanlogo).to exist
end