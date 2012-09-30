Feature: Internationalization
  In order to have international users
  As a page visitor
  I want to be able to access the home page in different languages
  
  Scenario: Access the home page in english
    Given I am not authenticated
    When I am on the "en" locale home page
    Then I should see "[en]home#index"
    
  Scenario: Access the home page in german
    Given I am not authenticated
    When I am on the "de" locale home page
    Then I should see "[de]home#index"
