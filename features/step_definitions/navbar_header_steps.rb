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
  fill_in 'Email', with: ENV["MY_EMAIL_ADDRESS"]
  fill_in 'Password', with: ENV["MY_PASSWORD"], match: :prefer_exact
  fill_in 'Password confirmation', with: ENV["MY_PASSWORD"]
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

Given(/^an admin user already exists$/) do
  visit new_admin_registration_path
  fill_in 'Email', with: ENV["MY_EMAIL_ADDRESS"]
  fill_in 'Password', with: ENV["MY_PASSWORD"], match: :prefer_exact
  fill_in 'Password confirmation', with: ENV["MY_PASSWORD"]
  click_button 'Sign up'
end

When(/^I try to create another admin account$/) do
  click_link 'Artist'
  click_link 'Sign Out'
  visit new_admin_registration_path
  fill_in 'Email', with: 'jesse@example.com'
  fill_in 'Password', with: 'password', match: :prefer_exact
  fill_in 'Password confirmation', with: 'password'
  click_button 'Sign up'
end

Then(/^I am told that I do not have permission to do that$/) do
  expect(page).to have_content 'You do not have permission to do that.'
end

Given(/^I delete my admin account$/) do
  click_link 'Artist'
  visit edit_admin_registration_path
  click_link 'Cancel my account'
end

When(/^I create a new one that uses my actual email address$/) do
  visit new_admin_registration_path
  fill_in 'Email', with: ENV["MY_EMAIL_ADDRESS"]
  fill_in 'Password', with: ENV["MY_PASSWORD"], match: :prefer_exact
  fill_in 'Password confirmation', with: ENV["MY_PASSWORD"]
  click_button 'Sign up'
end

Then(/^I am able to sign in as an admin again$/) do
  visit artist_home_path
  expect(page).to have_content 'Admin Dashboard'
end

