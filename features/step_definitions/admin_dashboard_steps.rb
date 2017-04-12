Given(/^I am on the admin dashboard page$/) do
  visit admin_dashboard_path
end

When(/^I click on the ADMIN HOME link$/) do
  click_link 'ADMIN HOME'
end

Then(/^I want to go back to the dashboard$/) do
  expect(page).to have_content 'Admin Home'
end

When(/^I click on the POST WORKS link$/) do
  click_link "POST WORKS"
end

Then(/^I want to see a form that lets me post a new work$/) do
  expect(page).to have_content 'Upload A Work'
end

When(/^I click the POST BOOKS link$/) do
  click_link 'POST BOOKS'
end

Then(/^I want to see a form that lets me post new book pages$/) do
  expect(page).to have_content 'Upload A Book Page'
end

When(/^I click the POST RNL ISSUE link$/) do
  click_link 'POST RNL ISSUE'
end

Then(/^I want to see a form that lets me post info about a new issue of RNL$/) do
  expect(page).to have_content 'Upload RNL Issue Info'
end

When(/^I click the POST NEWS link$/) do
  click_link 'POST NEWS'
end

Then(/^I want to see a form that lets me post a news item$/) do
  expect(page).to have_content 'Upload A News Item'
end

Given(/^I am on the POST WORKS page$/) do
  click_link 'POST WORKS'
end

When(/^I fill in the form with valid data$/) do
  fill_in('Title', with: 'Test Work')
  select('2017', from: 'Year')
  fill_in('Medium', with: 'Digital C-Print')
  fill_in('Dimensions', with: '100 in. x 100 in.')
  fill_in('Work type', with: '2D')
end

When(/^press the 'Submit' button$/) do
  click_button('Submit')
end

Then(/^I want to see a message that says the new work was created$/) do
  expect(page).to have_content 'New work was added successfully.'
end
