Feature: Playing the game
	In order to play the game
	As a player
	I want to select a weapon

	Scenario: Pick a weapon
	Given I am on the game page
	When I see my weapon options
	Then I select my weapon

	Scenario: Computer's turn
	Given player has selected a weapon
	When the computer makes her weapon choice
	Then I see the result
