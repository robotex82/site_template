Feature: The front page has certain required links

  The front page, header and footer all have certain required links
  which are boring and tedious to keep track of implementing and
  ensuring correct targeting. This feature simply ensures those
  links exist and point at the right pages.

  Scenario Outline: Reader visits header links on english page
    Given I am not authenticated
    And I am on the "en" locale home page
    When I click "<anchor>"
    Then the request should be successful
    And I should be on the "<page_path>" page

    Scenarios: Let's go visit header links
    | anchor  | page_path   |
    | about   | /en/about   |
    | home    | /en         |
    | imprint | /en/imprint |

  Scenario Outline: Reader visits header links on german page
    Given I am not authenticated
    And I am on the "de" locale home page
    When I click "<anchor>"
    Then the request should be successful
    And I should be on the "<page_path>" page

    Scenarios: Let's go visit header links
    | anchor    | page_path     |
    | Über      | /de/ueber     |
    | Home      | /de           |
    | Impressum | /de/impressum |
