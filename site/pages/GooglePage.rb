class GooglePage
  include PageObject

  text_field(:search_field, :name=>"q")
  text_field(:submit_button, :name =>'btnK')

  def page_url(ir)
    goto ir
  end

end