Given(/^I am on the game page$/) do
  visit ('/game')
end

When(/^I see my weapon options$/) do
  expect(page).to have_content("Rock")
end

And(/^I select my weapon$/) do
  page.find('#rock').click
end

Then(/^I should see the result$/) do
  expect(page).to have_content('winner')
end
