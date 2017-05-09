Given(/^I am any kind of user$/) do
  
end

When(/^I am on the artist home page$/) do
  visit artist_home_path
end

Then(/^I should see the title "([^"]*)"$/) do |arg1|
  expect(page).to have_title("#{arg1}")
end

When(/^I am on the BK page$/) do
  visit artist_books_path
end

When(/^I am on the CV page$/) do
  visit artist_cv_path
end

When(/^I am on the NEWS page$/) do
  visit artist_news_path
end
