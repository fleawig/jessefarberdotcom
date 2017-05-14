Feature:
  As an admin user
  I want to see descriptive titles
  In order to help my navigation

Background: 
  Given I am signed in as an admin user
  And I am on the admin dashboard page

  Scenario: Admin home 
    Then I should see the title "Admin Home | Jesse Farber"

  Scenario: MANAGE WORKS
    When I click on the MANAGE WORKS link
    Then I should see the title "Admin Manage Works | Jesse Farber"

  Scenario: MANAGE BOOKS
    When I click the MANAGE BOOKS link
    Then I should see the title "Admin Manage Books | Jesse Farber"

  Scenario: MANAGE RNL ISSUES
    When I click the MANAGE RNL ISSUES link
    Then I should see the title "Admin Manage RNL Issues | Jesse Farber"

  Scenario: MANAGE NEWS
    When I click the MANAGE NEWS link
    Then I should see the title "Admin Manage News | Jesse Farber"