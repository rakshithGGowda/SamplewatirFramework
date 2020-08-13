class SampleGetDirection
  include PageObject
  # element(:search,:xpath=> '//*[@id="places-search-box"]')
  # element(:onedealer,:xpath=>'//*[@id="container"]/div[3]/div/div/div/div/div/div/div[1]/div/div[4]/div/div[2]/div[1]/div/div[4]/ul/li[1]/div[2]/h3')
  link(:link,:id=>"a");
  def page_url(ir)
    goto ir
  end

end