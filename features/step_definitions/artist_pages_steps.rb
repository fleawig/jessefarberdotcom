Given(/^there are some (\d+)D works in the database$/) do |arg1|
  visit new_admin_registration_path
  fill_in 'Email', with: Figaro.env.MY_EMAIL_ADDRESS
  fill_in 'Password', with: Figaro.env.MY_PASSWORD, match: :prefer_exact
  fill_in 'Password confirmation', with: Figaro.env.MY_PASSWORD
  click_button 'Sign up'
  visit admin_dashboard_path
  click_link 'MANAGE WORKS'
  click_link 'Post a new work'
  fill_in('Title', with: 'First Test Work')
  select('2017', from: 'Year')
  fill_in('Medium', with: 'Mixed Media')
  fill_in('Dimensions', with: '100 in. x 100 (and maybe x 100) in.')
  select(arg1 + 'D', from: 'Work type')
  click_button('Submit')
  click_link 'Post a new work'
  fill_in('Title', with: 'Second Test Work')
  select('2017', from: 'Year')
  fill_in('Medium', with: 'Mixed Media')
  fill_in('Dimensions', with: '100 in. x 100 (and maybe x 100) in.')
  select(arg1 + 'D', from: 'Work type')
  click_button('Submit')
  click_link 'Sign Out'
  click_link '∎ ARTIST ∎'
end

Given(/^I am on the (\d+)D page$/) do |arg1|
  click_link "#{arg1}D"
end

When(/^I click on a work$/) do
  first('.img-fluid').click
end

Then(/^I should see text which gives more info about the work$/) do
  sleep 4
  expect(page.body).to have_text 'First Test Work'
end

Given(/^there are some books and\/or portfolios in the database$/) do
  visit new_admin_registration_path
  fill_in 'Email', with: Figaro.env.MY_EMAIL_ADDRESS
  fill_in 'Password', with: Figaro.env.MY_PASSWORD, match: :prefer_exact
  fill_in 'Password confirmation', with: Figaro.env.MY_PASSWORD
  click_button 'Sign up'
  visit admin_dashboard_path
  click_link 'MANAGE BOOKS'
  click_link 'Post a new book page'
  fill_in('Book title', with: 'First Test Book')
  fill_in('Page number', with: '0')
  select('2017', from: 'Year')
  fill_in('Dimensions', with: '10 in. x 10 in.')
  click_button('Submit')
  click_link 'Post a new book page'
  fill_in('Book title', with: 'First Test Book')
  fill_in('Page number', with: '1')
  select('2017', from: 'Year')
  fill_in('Dimensions', with: '10 in. x 10 in.')
  click_button('Submit')
  click_link 'Post a new book page'
  fill_in('Book title', with: 'First Test Book')
  fill_in('Page number', with: '2')
  select('2017', from: 'Year')
  fill_in('Dimensions', with: '10 in. x 10 in.')
  click_button('Submit')
  click_link 'Sign Out'
  click_link '∎ ARTIST ∎'
end

Given(/^I am on the books page$/) do
  click_link 'BK'
end

When(/^I click on a book cover or main portfolio image$/) do
  first('.img-fluid').click
end

Then(/^I should see the full book or portfolio$/) do
  sleep 4
  expect(page).to have_text "1\nFirst Test Book, 2017"
end

Given(/^I am in the artist site$/) do
  visit artist_home_path
end

When(/^I click the (\d+)D link$/) do |arg1|
  click_link "#{arg1}D"
end

Then(/^I want to see info about audio works, CEPH, and a bandcamp link$/) do
  expect(page).to have_css('iframe')
end

