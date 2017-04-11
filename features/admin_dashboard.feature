Feature: Admin Dashboard
  As an admin user
  I want to have links for upoading and managing content
  In order to build the content on the artist site

Background: 
  Given I am signed in as an admin user
  And I am on the admin dashboard page

  Scenario: Admin Home link
    When I click on the ADMIN HOME link
    Then I want to go back to the dashboard

  Scenario: POST WORKS link
    When I click on the POST WORKS link
    Then I want to see a form that lets me post a new work
  
  Scenario: POST BOOKS link
    When I click the POST BOOKS link
    Then I want to see a form that lets me post new book pages

  Scenario: POST RNL ISSUE link
    When I click the POST RNL ISSUE link
    Then I want to see a form that lets me post info about a new issue of RNL