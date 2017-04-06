When(/^I am on the home page$/) do
  visit root_path
end

Then(/^I should see the navbar$/) do
  expect(page).to have_css("nav")
end

Then(/^I should not see any artist links in the navbar$/) do
  artist_links = ["2D WORKS", "3D WORKS", "BOOK WORKS", "CEPH", "RNL", "CV", "NEWS"]
  artist_links.each { |link| expect(page).not_to have_link(link) }
end

When(/^I am on the main artist page$/) do
  visit artist_home_path
end

Then(/^I should see the artist links in the navbar$/) do
  artist_links = ["2D WORKS", "3D WORKS", "BOOK WORKS", "CEPH", "RNL", "CV", "NEWS"]
  artist_links.each { |link| expect(page).to have_link(link) }
end