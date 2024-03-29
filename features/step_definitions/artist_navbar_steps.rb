Given(/^I am a normal user$/) do
  
end

Given(/^I am on the main Artist page$/) do
  visit root_path
end

When(/^I click the link 'JESSE FARBER'$/) do
  click_link 'JESSE FARBER'
end

Then(/^I should be taken back to the start page$/) do
  # expect(page).to have_link '∎ DEVELOPER ∎'
  expect(page).to have_current_path(root_path)
end

When(/^I click the link for (\d+)D works$/) do |arg1|
  click_link "#{arg1}D"
end

Then(/^I should be taken to the (\d+)D work page$/) do |arg1|
  if arg1 == '2'
    expect(page).to have_current_path(two_d_works_path)
  elsif arg1 == '3'
    expect(page).to have_current_path(three_d_works_path)
  end
end

Then(/^I should see a grid of (\d+)D artworks$/) do |arg1|
  if arg1 == '2'
    expect(page).to have_css('.two-d')
  elsif arg1 == '3'
    expect(page).to have_css('.three-d')
  end
end

When(/^I click the link for books$/) do
  click_link 'BK'
end

Then(/^I should be taken to the books page$/) do
  expect(page).to have_current_path(books_path)
end

Then(/^I should see a grid of book covers$/) do
  expect(page).to have_css('.book-grid')
end

Then(/^I should be taken to the CEPH and audio page$/) do
  expect(page).to have_current_path(audio_works_path)
end

Then(/^I should see information about CEPH and audio works$/) do
  expect(page).to have_content 'CEPH'
end

Then(/^I should be taken to the RNL page$/) do
  expect(page).to have_current_path(rnl_path)
end

Then(/^I should see information about RNL issues$/) do
  expect(page).to have_content 'RNL'
end

When(/^I click the link for CV$/) do
  click_link 'CV'
end

Then(/^I should be taken to the CV page$/) do
  expect(page).to have_current_path(cv_path)
end

Then(/^I should see the CV information$/) do
  headers = %w[Education Exhibitions Awards]
  headers.each { |header| expect(page).to have_content "#{header}" }
end

When(/^I click the link for NEWS$/) do
  click_link 'NEWS'
end

Then(/^I should be taken to the News blog page$/) do
  expect(page).to have_current_path(news_path)
end

Then(/^I should see the News posts$/) do
  expect(page).to have_content 'NEWS'
end
