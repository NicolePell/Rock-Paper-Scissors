Given(/^I am on the homepage$/) do
  visit ('/')
end

When(/^I see "(.*?)"$/) do |arg1|
  expect(page).to have_content "It's time to settle this"
end

Then(/^I click 'Start a new game'$/) do
  click_on "Start game"
end

Given(/^I am on the new game page$/) do
  visit ('/new_game')
end

When(/^am asked "(.*?)"$/) do |arg1|
  expect(page).to have_content "What is your name?"
end

When(/^I have filled in my name$/) do
  fill_in 'name', with: 'Trevor'
end

When(/^I have submitted my name$/) do
  click_on "Let's go"
end

Then(/^I see 'Welcome Trevor'$/) do
  expect(page).to have_content "Welcome Trevor"
end

Given(/^I submit with no name$/) do
  click_on "Let's go"
end

Then(/^I should see 'Welcome Player'$/) do
  expect(page).to have_content "Welcome Player"
end