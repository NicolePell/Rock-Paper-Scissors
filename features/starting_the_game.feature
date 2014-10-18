Feature: Starting the game
	In order to play Rock Paper Scissors
	As a person who wants to play
	I want to start a new game

	Scenario: Registering Part 1
		Given I am on the homepage
		When I see "It's time to settle this"
		Then I click 'Start a new game'

	Scenario: Registering Part 2
		Given I am on the new game page
		When am asked "What is your name?"
		And I have filled in my name
		When I have submitted my name
		Then I see 'Welcome Trevor'

	Scenario: Registering with no name
		Given I am on the new game page
		And I submit with no name
		Then I should see 'Welcome Player'