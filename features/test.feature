Feature: Test Cucumber

  Scenario: Visit main page
    Given I am on the main page
    Then I should see the headline "Projects"
    And I should see the link "New Project"