class AmazonPage
  include PageObject

  text_field(:amazon_search,:css =>'input#twotabsearchtextbox')
  element(:result_value,:css=>'span.a-color-state.a-text-bold')

  def page_url(ir)
    goto ir
  end

end