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

  Scenario: Admin signs out
    Given I am signed in as an admin user
    And I am on the main artist page
    When I click the sign out link
    Then I should not see the link for the admin dashboard
    And I should not see a link for signing out

  Scenario: Admin visits Admin Dashboard
    Given I am signed in as an admin user
    And I am on the main artist page
    When I click on the Admin Dashboard link
    Then I should see the Admin Dashboard page
    And the navbar should switch to the admin navbar

  Scenario: Limiting Admin Signup
    Given an admin user already exists
    When I try to create another admin account
    Then I am told that I do not have permission to do that

  Scenario: Deleting and recreating Admin account
    Given an admin user already exists
    And I delete my admin account
    When I create a new one that uses my actual email address
    Then I am able to sign in as an admin again
    