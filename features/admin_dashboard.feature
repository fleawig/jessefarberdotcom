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

  Scenario: POST NEWS link
    When I click the POST NEWS link
    Then I want to see a form that lets me post a news item

  Scenario: Posting a new work
    Given I am on the POST WORKS page
    When I fill in the form with valid data
    And press the 'Submit' button
    Then I want to see a message that says the new work was created

  Scenario: Posting a new book
    Given I am on the POST BOOKS page
    When I fill in the form with valid book data
    And press the 'Submit' button
    Then I want to see a message that says the new book was created

  Scenario: Posting a new RNL issue
    Given I am on the POST RNL ISSUE page
    When I fill in the form with valid RNL issue data
    And press the 'Submit' button
    Then I want to see a message that says the new issue was created

  Scenario: Posting a new news item
    Given I am on the POST NEWS page
    When I fill in the form with valid news data
    And press the 'Submit' button
    Then I want to see a message that says the new news item was created

  Scenario: Managing Works
    Given there are some works in the database
    When I click the MANAGE WORKS link
    Then I want to see a page that displays all those works
    And each work should have a button to edit or remove the work

    Scenario: Editing a work
    Given there are some works in the database
    And I am on the MANAGE WORKS page
    When I click the edit button for a work
    Then I want to see the form to edit the work

    Scenario: Deleting a work
    Given there are some works in the database
    And I am on the MANAGE WORKS page
    When I click the delete button for a work
    Then I want the work to be removed from the page

