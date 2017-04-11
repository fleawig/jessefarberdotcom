Given(/^I am on the admin dashboard page$/) do
  visit admin_dashboard_path
end

When(/^I click on the POST WORKS link$/) do
  click_link "POST WORKS"
end

Then(/^I want to see a form that lets me post a new work$/) do
  expect(page).to have_content 'Upload A Work'
end

When(/^I click on the ADMIN HOME link$/) do
  click_link 'ADMIN HOME'
end

Then(/^I want to go back to the dashboard$/) do
  expect(page).to have_content 'Admin Home'
end

When(/^I click the POST BOOKS link$/) do
  click_link 'POST BOOKS'
end

Then(/^I want to see a form that lets me post new book pages$/) do
  expect(page).to have_content 'Upload A Book Page'
end
