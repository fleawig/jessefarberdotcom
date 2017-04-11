Feature: Navbar
  As a normal visitor
  I want to see a navbar
  In order to have access to navigation links

  Scenario: Home page
    Given I am a normal user
    When I am on the home page
    Then I should see the navbar
    And I should not see any artist links in the navbar

  Scenario: Artist main page
    Given I am a normal user
    When I am on the main artist page
    Then I should see the artist links in the navbar
    And I should still see the email link

  Scenario: Admin is signed in
    Given I am signed in as an admin user
    When I am on the main artist page
    Then I should see a link for the admin dashboard
    And I should see a link for signing out