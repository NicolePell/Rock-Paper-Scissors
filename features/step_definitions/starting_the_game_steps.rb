Given(/^I am on the homepage$/) do
  visit ('/')
end

When(/^I see "(.*?)"$/) do |arg1|
  expect(page).to have_content "It's time to settle this"
end

Then(/^I click 'Start a new game'$/) do
  click_button "Start game"
end

Given(/^I am on the new game page$/) do
  visit ('/new_game')
end

When(/^I have submitted my name$/) do
  fill_in 'name', with: 'Trevor'
  click_on "Let's go"
end

Then(/^I see 'Welcome Trevor'$/) do
  expect(page).to have_content "Welcome Trevor"
end