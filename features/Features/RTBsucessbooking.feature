@RTBsucess
Feature: Booking the Test Drive Sucessfully
  @RTbsucess1
  Scenario: Enter all Valid details and submit the form
    Given I am on the RTB Page
    Then I select proper model name
    And I Search proper city and select dealer
    And I select proper date
    And I provide all the valid details
    And I accept all the privacy and policy check box
    And Submit the form
    Then I should landing on Test Drive requested page