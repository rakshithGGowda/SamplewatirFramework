class NissanHomePage
  include PageObject
  element(:logo,:css=>'Nissan_Badge_1_')

  def page_url(ir)
    goto ir
  end

end