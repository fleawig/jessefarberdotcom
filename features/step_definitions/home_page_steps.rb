Given(/^I am a normal user$/) do
  
end

When(/^I visit the homepage$/) do
  visit root_path
end

Then(/^I should see a link for the main artist page$/) do
  expect(page).to have_link('Artist')
end

And(/^I should see a link for the main developer page$/) do
  expect(page).to have_link('Developer')
end

When(/^I click the 'Artist' link$/) do
  visit root_path
  click_link('Artist')
end

Then(/^I should go to the main artist page$/) do
  expect(page).to have_current_path(artist_home_path)
end

Then(/^I should see the page title "([^"]*)"$/) do |arg1|
  expect(page).to have_title "#{arg1}"
end
