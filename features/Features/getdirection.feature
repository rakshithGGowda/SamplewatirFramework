@debug
Feature: verify the location of dealer is correct
  Scenario: verify through form the link href
    Given i am on tankyou or somepage
    When I click on a Get Directions link
    Then I navigate to a google map page

