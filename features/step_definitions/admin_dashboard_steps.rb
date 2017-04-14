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

Given(/^I am on the POST BOOKS page$/) do
  click_link 'POST BOOKS'
end

When(/^I fill in the form with valid book data$/) do
  fill_in('Book title', with: 'Test Book')
  fill_in('Page number', with: '2')
  select('2017', from: 'Year')
  fill_in('Dimensions', with: '6 in. x 6 in.')
  check('Portfolio')
end

Then(/^I want to see a message that says the new book was created$/) do
  expect(page).to have_content 'New book page was added successfully.'
end

Given(/^I am on the POST RNL ISSUE page$/) do
  click_link 'POST RNL ISSUE'
end

When(/^I fill in the form with valid RNL issue data$/) do
  fill_in('Issue number', with: '2')
  fill_in('Title', with: 'Riotous Noxious Lethargy')
  fill_in('Description', with: 'This is a description for the latest issue of RNL.
                                In this issue we explore various things and stuff.')
end

Then(/^I want to see a message that says the new issue was created$/) do
  expect(page).to have_content 'New RNL issue was added successfully.'
end

Given(/^I am on the POST NEWS page$/) do
  click_link 'POST NEWS'
end

When(/^I fill in the form with valid news data$/) do
  fill_in('Headline', with: 'MOMA buys out my entire studio')
  fill_in('Content', with: 'You\'re not going to believe this, folks...')
end

Then(/^I want to see a message that says the new news item was created$/) do
  expect(page).to have_content 'New news item was added successfully.'
end

Given(/^there are some works in the database$/) do
  click_link 'MANAGE WORKS'
  click_link 'Post a new work'
  fill_in('Title', with: 'First Test Work')
  select('2017', from: 'Year')
  fill_in('Medium', with: 'Digital C-Print')
  fill_in('Dimensions', with: '100 in. x 100 in.')
  fill_in('Work type', with: '2D')
  click_button('Submit')
  click_link 'MANAGE WORKS'
  click_link 'Post a new work'
  fill_in('Title', with: 'Test Sculpture')
  select('2017', from: 'Year')
  fill_in('Medium', with: 'Mixed Media')
  fill_in('Dimensions', with: '100 in. x 100 in. x 100 in.')
  fill_in('Work type', with: '3D')
  click_button('Submit')
end

When(/^I click the MANAGE WORKS link$/) do
  click_link 'MANAGE WORKS'
end

Then(/^I want to see a page that displays all those works$/) do
  (expect(page).to have_content 'First Test Work') && (expect(page).to have_content 'Test Sculpture')
end

Then(/^each work should have a button to edit or remove the work$/) do
  (expect(page).to have_css(".fa-pencil")) && (expect(page).to have_css(".fa-remove"))
end

Given(/^I am on the MANAGE WORKS page$/) do
  click_link 'MANAGE WORKS'
end

When(/^I click the edit button for a work$/) do
    first('.btn-warning').click

end

Then(/^I want to see the form to edit the work$/) do
  (expect(page).to have_content 'Edit A Work') && (expect(find_field('Title').value).to eq 'First Test Work')
end

