@amazon_search
  Feature: performing amazon search

    @amsearch
    Scenario: search for phones in search window
      Given I am on Amazon page
      When I search for phones
      Then search results should match
