Feature: Playing the game
	In order to play the game
	As a registered player
	I want to select a weapon

	Scenario: Pick a weapon
		Given I am on the game page
		When I see my weapon options
		When I select my weapon
		Then I click on "Fight!"

	Scenario: Seeing a result
		Given I am on the result page
		Then I should see the winner of the game
