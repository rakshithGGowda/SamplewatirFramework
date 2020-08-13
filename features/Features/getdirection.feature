@debug
Feature: verify the location of dealer is correct
  Scenario: verify through form the link href
    Given i am on tankyou or somepage
    When I click on a Get Directions link
    Then I navigate to a google map page

#adding content to check things
@123
Feature:verify the location of dealer is incorrect 
Scenario: verify its not correct 
Given i am on thank you page 
When I click on Get direction link
Then I navigate to a google map page
