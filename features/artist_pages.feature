Feature: Artist Pages
  As a normal user
  I want to view pages that show different kinds of artwork and information
  In order to learn more about Jesse Farber's art

  @javascript
  Scenario: 2D works page    
    Given there are some 2D works in the database
    And I am on the 2D page
    When I click on a work
    Then I should see text which gives more info about the work

  @javascript
  Scenario: 3D works page
    Given there are some 3D works in the database
    And I am on the 3D page
    When I click on a work
    Then I should see text which gives more info about the work

  @javascript
  Scenario: Books page
    Given there are some books and/or portfolios in the database
    And I am on the books page
    When I click on a book cover or main portfolio image
    Then I should see the full book or portfolio

  Scenario: 4D page
    Given I am in the artist site
    When I click the 4D link
    Then I want to see info about audio works, CEPH, and a bandcamp link