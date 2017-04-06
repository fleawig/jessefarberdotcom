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
