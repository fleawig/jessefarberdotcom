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

    Scenario: MANAGE WORKS link
      When I click on the MANAGE WORKS link
      And I click on the 'Post a new work' link
      Then I want to see a form that lets me post a new work
    
    Scenario: MANAGE BOOKS link
      When I click the MANAGE BOOKS link
      And I click on the 'Post a new book page' link
      Then I want to see a form that lets me post new book pages

    Scenario: MANAGE RNL ISSUES link
      When I click the MANAGE RNL ISSUES link
      And I click the 'Post a new issue' link
      Then I want to see a form that lets me post info about a new issue of RNL

    Scenario: MANAGE NEWS link
      When I click the MANAGE NEWS link
      And I click the 'Post a new news item' link
      Then I want to see a form that lets me post a news item

    Scenario: Posting a new work
      Given I am on the MANAGE WORKS page
      And I click on the 'Post a new work' link
      When I fill in the form with valid data
      And press the 'Submit' button
      Then I want to see a message that says the new work was created

    Scenario: Posting a new book
      Given I am on the MANAGE BOOKS page
      And I click on the 'Post a new book page' link
      When I fill in the form with valid book data
      And press the 'Submit' button
      Then I want to see a message that says the new book was created

    Scenario: Posting a new RNL issue
      Given I am on the MANAGE RNL ISSUES page
      And I click the 'Post a new issue' link
      When I fill in the form with valid RNL issue data
      And press the 'Submit' button
      Then I want to see a message that says the new issue was created

    Scenario: Posting a new news item
      Given I am on the MANAGE NEWS page
      And I click the 'Post a new news item' link
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

    Scenario: Managing books
      Given there are some book pages in the database
      When I click the MANAGE BOOKS link
      Then I want to see a page that displays the covers for those books
      And each book cover should have a button to edit or remove the book

    Scenario: Editing a book page
      Given there are some book pages in the database
      And I am on the MANAGE BOOKS link
      When I click the edit button for a book
      Then I want to see the form to edit the book page

    Scenario: Deleting a book page
      Given there are some book pages in the database
      And I am on the MANAGE BOOKS link
      When I click the delete button for a book page
      Then I want the book page to be removed from the page

    Scenario: Managing RNL Issues
      Given there are some RNL issues in the database
      When I click the MANAGE RNL ISSUES link
      Then I want to see a page that displays all those issues
      And each issue should have a button to edit or remove the issue

    Scenario: Editing RNL Issues
      Given there are some RNL issues in the database
      And I am on the MANAGE RNL ISSUES page
      When I click the edit button for an issue
      Then I want to see the form to edit the issue

    Scenario: Deleting RNL Issues
      Given there are some RNL issues in the database
      And I am on the MANAGE RNL ISSUES page
      When I click the delete button for an issue
      Then I want the issue to be removed from the page

    Scenario: Managing News Posts
      Given there are some news posts in the database
      When I click the MANAGE NEWS link
      Then I want to see a page that displays all those news posts
      And each post should have a button to edit or remove the post

    Scenario: Editing News Posts
      Given there are some news posts in the database
      And I am on the MANAGE NEWS link
      When I click the edit button for a post
      Then I want to see the form to edit the post

    Scenario: Deleting RNL Issues
      Given there are some news posts in the database
      And I am on the MANAGE NEWS link
      When I click the delete button for a post
      Then I want the post to be removed from the page

    Scenario: 2D Works Section
      Given I am on the MANAGE WORKS page
      When I submit some 2D works in the database
      Then I want to see them in the 2D section
      And not in the 3D section

    Scenario: 3D Works section
      Given I am on the MANAGE WORKS page
      When I submit some 3D works in the database
      Then I want to see them in the 3D section
      And not in the 2D section

    @javascript
    Scenario: Reordering works
      Given I am on the MANAGE WORKS page
      When I submit some 2D works in the database
      And I change their order using drag and drop
      Then the works should appear in the new order
      And the new order should be preserved when the page is reloaded 

    Scenario: Viewing Book Pages from Cover Images
      Given I am on the MANAGE BOOKS page
      And there is a book with multiple pages in the database
      When I click on a book cover image
      Then I should see all the pages from the book

      