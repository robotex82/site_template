Feature: Basic page access
  In order to access the web page
  As a page visitor
  I want to be able to access the home page

  Scenario: Access the home page
    Given I am not authenticated
    When I am on the home page
    Then I should see "Home (de)"

