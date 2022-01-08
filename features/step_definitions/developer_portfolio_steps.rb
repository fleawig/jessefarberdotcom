When(/^I visit the developer page$/) do
  visit developer_portfolio_path
end

Then(/^I should see text about Jesse Farber as a software developer$/) do
  expect(page.body).to have_text 'SOFTWARE DEVELOPER'
end
