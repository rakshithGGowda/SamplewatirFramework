Given(/^I am on the RTB Page$/) do
  Realtime = RealTimePage.new(@browser)
  Realtime.page_url("https://es-mx.dark.stream19.qa.heliosnissan.net/testdrive.html")
end

Then(/^I select proper model name$/) do
  sleep(5)
  Realtime.model_name_element.click
  Realtime.text_element.click

end

Then(/^I Search proper city and select dealer$/) do
  Realtime.location = "A"
  Realtime.add_element.click
  sleep(3)
end

Then(/^I select proper date$/) do
  Realtime.dealersel_element.click
  sleep(3)
  Realtime.calender_element.click
  Realtime.date_element.click
end

Then(/^I provide all the valid details$/) do
  Realtime.nombre = "Rakshith"
  Realtime.lname = "Gas"
  Realtime.motherlname = "sjvd"
  Realtime.pincode = "12345"
  Realtime.mail = "rakshithgowdag89@gmail.com"
  Realtime.phone = "1234567687"
  Realtime.contact_element.click
  Realtime.contactoption_element.click
end

Then(/^I accept all the privacy and policy check box$/) do
  Realtime.privacy.set
  sleep(3)
end

Then(/^Submit the form$/) do
  Realtime.submit_element.click
  sleep(5)

end

Then(/^I should landing on Test Drive requested page$/) do
  expect(Realtime.headline_element.text).equal? "SU DISCO DE PRUEBA SE HA SOLICITADO"
end
