When(/^I am on the home page$/) do
  visit root_path
end

Then(/^I should see the navbar$/) do
  expect(page).to have_css("nav")
end

Then(/^I should not see any artist links in the navbar$/) do
  artist_links = ['2D WORKS', '3D WORKS', 'BOOK WORKS', 'CEPH', 'RNL', 'CV', 'NEWS']
  artist_links.each { |link| expect(page).not_to have_link(link) }
end

When(/^I am on the main artist page$/) do
  visit artist_home_path
end

Then(/^I should see the artist links in the navbar$/) do
  artist_links = ['2D WORKS', '3D WORKS', 'BOOK WORKS', 'CEPH', 'RNL', 'CV', 'NEWS']
  artist_links.each { |link| expect(page).to have_link(link) }
end

Given(/^I am signed in as an admin user$/) do
  visit new_admin_registration_path
  fill_in 'Email', with: 'jesse@example.com'
  fill_in 'Password', with: 'password', match: :prefer_exact
  fill_in 'Password confirmation', with: 'password'
  click_button 'Sign up'
  # admin is now signed up
end

Then(/^I should see a link for the admin dashboard$/) do
  expect(page).to have_link 'Admin Dashboard'
end

Then(/^I should see a link for signing out$/) do
  expect(page).to have_link 'Sign Out'
end

When(/^I click the sign out link$/) do
  click_link 'Sign Out'
end

Then(/^I should not see the link for the admin dashboard$/) do
  expect(page).not_to have_link 'Admin Dashboard'
end

Then(/^I should not see a link for signing out$/) do
  expect(page).not_to have_link 'Sign Out'
end

When(/^I click on the Admin Dashboard link$/) do
  click_link 'Admin Dashboard'
end

Then(/^I should see the Admin Dashboard page$/) do
  expect(page).to have_content 'Admin Home'
end

Then(/^the navbar should switch to the admin navbar$/) do
  expect(page).to have_css '.navbar-admin'
end
