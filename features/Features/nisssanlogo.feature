@nissan_logo
Feature: performing nissan logo check

  @ns_logo
  Scenario: check if logo present in Home page
    Given I am on Nissan page
    Then logo id should match
