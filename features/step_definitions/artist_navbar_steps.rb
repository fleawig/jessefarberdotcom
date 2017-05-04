Given(/^I am on the main Artist page$/) do
  visit artist_home_path
end

When(/^I click the link 'JESSE FARBER'$/) do
  click_link 'JESSE FARBER'
end

Then(/^I should be taken back to the start page$/) do
  expect(page).to have_link 'Developer'
end


When(/^I click the link for (\d+)D works$/) do |arg1|
  click_link "#{arg1}D"
end

Then(/^I should be taken to the (\d+)D work page$/) do |arg1|
  if arg1 == "2"
    expect(page).to have_current_path(artist_two_d_works_path)
  elsif arg1 == "3"
    expect(page).to have_current_path(artist_three_d_works_path)
  end
end

Then(/^I should see a grid of (\d+)D artworks$/) do |arg1|
  if arg1 == "2"
    expect(page).to have_css('.two-d')
  elsif arg1 == "3"
    expect(page).to have_css('.three-d')
  end
end

When(/^I click the link for books$/) do
  click_link "BK"
end

Then(/^I should be taken to the books page$/) do
  expect(page).to have_current_path(artist_books_path)
end

Then(/^I should see a grid of book covers$/) do
  expect(page).to have_css('.book-cover-grid')
end

Then(/^I should be taken to the CEPH and audio page$/) do
  expect(page).to have_current_path(artist_audio_works_path)
end

Then(/^I should see information about CEPH and audio works$/) do
  expect(page).to have_content 'CEPH'
end

Then(/^I should be taken to the RNL page$/) do
  expect(page).to have_current_path(artist_rnl_path)
end

Then(/^I should see information about RNL issues$/) do
  expect(page).to have_content 'RNL'
end
