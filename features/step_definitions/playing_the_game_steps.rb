Given(/^I am on the game page$/) do
  visit ('/game')
end

When(/^I see my weapon options$/) do
  expect(page).to have_content("Rock")
end

Then(/^I select my weapon$/) do
	choose("rock")
  
end

Then(/^I click on "(.*?)"$/) do |arg1|
  click_on 'Fight!'
end

Given(/^I am on the result page$/) do
  visit '/game/result'
end

Then(/^I should see the winner of the game$/) do
  expect(page).to have_content("winner")
end