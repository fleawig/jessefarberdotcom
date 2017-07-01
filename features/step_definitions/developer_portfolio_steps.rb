When(/^I press the 'Developer' link$/) do
  click_link '∎ DEVELOPER ∎'
end

Then(/^I should land on the Developer portfolio page$/) do
  expect(page).to have_current_path(developer_portfolio_path)
end
