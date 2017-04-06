Then(/^I should see an icon link for email in the footer$/) do
  expect(page).to have_link('Email')
end

Then(/^I should not see any other links$/) do
  artist_footer_links = %w(Instagram Bandcamp Facebook)
  artist_footer_links.each { |link| expect(page).not_to have_link(link) }
end

When(/^I visit the artist home page$/) do
  visit artist_home_path
end

Then(/^I should see the artist icon links in the footer$/) do
  artist_footer_links = %w(Instagram Bandcamp Facebook)
  artist_footer_links.each { |link| expect(page).to have_link(link) }
end

Then(/^I should still see the email link$/) do
  expect(page).to have_link('Email')
end
