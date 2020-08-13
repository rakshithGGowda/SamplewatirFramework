Given(/^As a PACE user I land on book a test drive form with real time booking component configured$/)do
  Realtime = RealTimePage.new(@browser)
  Realtime.page_url("https://es-mx.dark.stream19.qa.heliosnissan.net/testdrive.html")
end

When(/^I have selected preferred model dealer and a real time date slot from date slot picker$/) do
    sleep(5)
    Realtime.model_name_element.click
    Realtime.text_element.click
    Realtime.location = "A"
    Realtime.add_element.click
    sleep(3)
    Realtime.dealersel_element.click
    sleep(3)
    Realtime.calender_element.click
    Realtime.date_element.click
    Realtime.nombre = "Rakshith"
end

And(/^I have not provided valid input for all mandatory form fields available in the form$/) do
    Realtime.nombre = ""
    Realtime.lname = ""
    Realtime.motherlname = ""
    Realtime.pincode = ""
    Realtime.mail = ""
    Realtime.phone = ""


    expect(Realtime.nombre).equal? ""
    expect(Realtime.lname).equal? ""
    expect(Realtime.motherlname).equal? ""
    expect(Realtime.pincode).equal? ""
    expect(Realtime.mail).equal? ""
    expect(Realtime.phone).equal? ""
end



And(/^I have not selected mandatory checkbox for terms and conditions$/) do
    Realtime.privacy_element.clear
    sleep(3)
end

And(/^I click on Book Test Drive CTA CTA label as per configurations in AEM$/) do
    Realtime.submit_element.click
    sleep(5)
end


Then(/^form submission should not be progressed$/) do
    expect(Realtime.title).equal? "Book a Test Drive Sanity"
end

And(/^I should be displayed with error message for all mandatory form fields that do not have input$/) do


end