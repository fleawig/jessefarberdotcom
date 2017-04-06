Feature: Home Page
  As a normal visitor
  I want to see a main homepage
  In order to follow links to the artist or developer pages

  Scenario: Visiting the page
    Given I am a normal user
    When I visit the homepage
    Then I should see a link for the main artist page
    And I should see a link for the main developer page

  Scenario: Following Artist link
    Given I am a normal user
    When I click the 'Artist' link
    Then I should go to the main artist page