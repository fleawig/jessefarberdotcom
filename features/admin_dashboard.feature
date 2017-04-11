Feature: Admin Dashboard
  As an admin user
  I want to have links for upoading and managing content
  In order to build the content on the artist site

  Scenario: Admin Home
    Given I am signed in as an admin user
    And I am on the admin dashboard page
    When I click on the POST WORKS link
    Then I want to see a form that lets me post a new work

    When I click on the ADMIN HOME link
    Then I want to go back to the dashboard

    When I click the POST BOOKS link
    Then I want to see a form that lets me post new book pages