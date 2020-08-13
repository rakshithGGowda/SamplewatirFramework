@real_time
Feature: real time booking submit check with name empty
  Scenario: real time booking submit check with name empty
    Given As a PACE user I land on book a test drive form with real time booking component configured
    When I have selected preferred model dealer and a real time date slot from date slot picker
    And I have not provided valid input for all mandatory form fields available in the form
    And I have not selected mandatory checkbox for terms and conditions
    And I click on Book Test Drive CTA CTA label as per configurations in AEM
    Then form submission should not be progressed
    And I should be displayed with error message for all mandatory form fields that do not have input