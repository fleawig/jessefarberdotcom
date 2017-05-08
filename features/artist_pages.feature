Feature: Artist Pages
  As a normal user
  I want to view pages that show different kinds of artwork and information
  In order to learn more about Jesse Farber's art

  Scenario: 2D works page    
    Given there are some 2D works in the database
    And I am on the 2D page
    When I click on a work
    Then I should see text which gives more info about the work