Feature: Footer
  As a normal visitor
  I want to see a footer
  In order to follow additional contextual links

  Scenario: Home page
    Given I am a normal user
    When I visit the homepage
    Then I should see an icon link for email in the footer
    And I should not see any other links

  Scenario: Artist pages
    Given I am a normal user
    When I visit the artist home page
    Then I should see the artist icon links in the footer