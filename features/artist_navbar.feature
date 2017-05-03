Feature: Artist Navbar
  As a normal user
  I want to have navigation links for viewing content
  In order to see works by and information about the artist

  Background: 
    Given I am a normal user
    And I am on the main Artist page
  
  Scenario: Brand link
    When I click the link 'JESSE FARBER'
    Then I should be taken back to the start page

  Scenario: 2D link
    When I click the link for 2D works
    Then I should be taken to the 2D work page
    And I should see a grid of 2D artworks

  Scenario: 3D link
    When I click the link for 3D works
    Then I should be taken to the 3D work page
    And I should see a grid of 3D artworks