Feature:
  As a user of any kind
  I want to see descriptive titles
  In order to help my navigation

Background: 
  Given I am on the artist home page
  And I am any kind of user

  Scenario: Artist home
    When I am on the artist home page
    Then I should see the title "Artist | Jesse Farber"

  Scenario: 2D works
    When I am on the 2D page
    Then I should see the title "2D | Jesse Farber"

  Scenario: 3D works
    When I am on the 3D page
    Then I should see the title "3D | Jesse Farber"

  Scenario: 4D works
    When I am on the 4D page
    Then I should see the title "4D | Jesse Farber"

  Scenario: 5D works
    When I am on the 5D page
    Then I should see the title "5D | Jesse Farber"

  Scenario: BK works
    When I am on the BK page
    Then I should see the title "BK | Jesse Farber"

  Scenario: CV
    When I am on the CV page
    Then I should see the title "CV | Jesse Farber"

  Scenario: NEWS
    When I am on the NEWS page
    Then I should see the title "NEWS | Jesse Farber"