Given(/^there are some (\d+)D works in the database$/) do |arg1|
  visit new_admin_registration_path
  fill_in 'Email', with: ENV["MY_EMAIL_ADDRESS"]
  fill_in 'Password', with: ENV["MY_PASSWORD"], match: :prefer_exact
  fill_in 'Password confirmation', with: ENV["MY_PASSWORD"]
  click_button 'Sign up'
  visit admin_dashboard_path
  click_link 'MANAGE WORKS'
  click_link 'Post a new work'
  fill_in('Title', with: 'First Test Work')
  select('2017', from: 'Year')
  fill_in('Medium', with: 'Mixed Media')
  fill_in('Dimensions', with: '100 in. x 100 (and maybe x 100) in.')
  fill_in('Work type', with: arg1 + 'D')
  click_button('Submit')
  click_link 'Post a new work'
  fill_in('Title', with: 'Second Test Work')
  select('2017', from: 'Year')
  fill_in('Medium', with: 'Mixed Media')
  fill_in('Dimensions', with: '100 in. x 100 (and maybe x 100) in.')
  fill_in('Work type', with: arg1 + 'D')
  click_button('Submit')
  click_link 'Sign Out'
  click_link 'Artist'
end

Given(/^I am on the (\d+)D page$/) do |arg1|
  click_link "#{arg1}D"
end

When(/^I click on a work$/) do
  first('.img-fluid').click
end

Then(/^I should see text which gives more info about the work$/) do
  expect(page).to have_text 'First Test Work'
end
