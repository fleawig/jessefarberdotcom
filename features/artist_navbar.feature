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

  Scenario: Books link
    When I click the link for books
    Then I should be taken to the books page
    And I should see a grid of book covers

  Scenario: 4D (CEPH and Audio) link
    When I click the link for 4D works
    Then I should be taken to the CEPH and audio page
    And I should see information about CEPH and audio works

  Scenario: 5D (RNL Magazine) link
    When I click the link for 5D works
    Then I should be taken to the RNL page
    And I should see information about RNL issues

  Scenario: CV link
    When I click the link for CV
    Then I should be taken to the CV page
    And I should see the CV information

  Scenario: NEWS link
    When I click the link for NEWS
    Then I should be taken to the News blog page
    And I should see the News posts