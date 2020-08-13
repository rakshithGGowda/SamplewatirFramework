class RealTimePage
  include PageObject
  element(:model_name,:id =>'models')
  element(:text,:value => "28876")
  text_field(:location,:id=>'Location-3')
  element(:add,:xpath=> '//*[@id="container"]/div[3]/div/div/div/div/div/div/form/fieldset/div/div[1]/div/div[2]/div/div[2]/div[1]/div/span/span/button[1]')
  element(:dealersel,:xpath=>'//*[@id="container"]/div[3]/div/div/div/div/div/div/form/fieldset/div/div[1]/div/div[2]/div/div[2]/div[5]/div/ol/li[1]/div/div[2]/button')
  element(:calender,:xpath=>'//*[@id="container"]/div[3]/div/div/div/div/div/div/form/fieldset/div/div[1]/div/div[3]/div/div/div/button')
  element(:date,:xpath=>'//*[@id="ui-datepicker-div"]/table/tbody/tr[5]/td[2]')
  text_field(:nombre,:id => 'textfield_6381')
  text_field(:lname,:id => 'textfield_6322')
  text_field(:motherlname,:id => 'textfield_c138')
  text_field(:pincode,:id => 'textfield_f0cb')
  text_field(:mail,:id => 'textfield_d659')
  text_field(:phone,:id => 'textfield_2031')
  element(:contact,:id =>'dropdown_5650')
  element(:contactoption,:value=>"SMS")
  checkbox(:privacy,:id =>'checkbox_62a2')
  element(:submit,:xpath => '//*[@id="container"]/div[3]/div/div/div/div/div/div/form/div[4]/button')
  element(:errorname,:xpath=>'//*[@id="container"]/div[3]/div/div/div/div/div/div/form/fieldset/div/div[3]/div/div/span/font/font')
  element(:error,:xpath=>'//*[@id="container"]/div[3]/div/div/div/div/div/div/form/fieldset/div/div[4]/div/div/span/font/font')
  # element(:calwidget,:xpath => '//*[@id="ui-datepicker-div"]/table/tbody')
  element(:headline,:xpath=>'//*[@id="container"]/div[2]/div/div[1]/div/div/div/div/h1/span')

  def page_url(ir)
    goto ir
  end

end