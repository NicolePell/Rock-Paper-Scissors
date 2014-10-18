Given(/^I am on the game page$/) do
  visit ('/game')
end

When(/^I see my weapon options$/) do
  expect(page).to have_content("Rock")
end

Then(/^I select my weapon$/) do
  click_on 'Fight!'
end

Given(/^player has selected a weapon$/) do
  visit('/comp_turn')
end

When(/^the computer makes her weapon choice$/) do
  expect(page).to have_content "Computer chose"
end

Then(/^I see the result$/) do
	expect(page).to have_content "win"
end