Feature: Links
  In order to interact with links
  Testers will need access and interrogation ability

  Note:
    Watir supports href

  Background:
    Given I am on the static elements page
  
  Scenario: Selecting a link
    When I select the link labeled "Google Search"
    Then the page should contain the text "Google"

  Scenario Outline: Locating links on the Page
    When I search for the link by "<search_by>"
    Then I should be able to select the link

  Scenarios:
    | search_by |
    | id        |
    | class     |
    | name      |
    | xpath     |
    | link      |
    | link_text |
    | text      |

  @watir_only
  Scenario: Locating links by their href
    When I search for the link by "href"
    Then I should be able to select the link
    
  @watir_only
  Scenario: Should be able to find a link by index
    When I search for the link by "link"
    Then I should be able to select the link
    