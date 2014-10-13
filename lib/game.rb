class Game

	attr_accessor :players, :player1, :player2

	def initialize(player1, player2)
		@players = []
		@player1 = player1
		@player2 = player2
	end

	def add(player)
		players << player unless no_more_players?
	end

	def players_count
		players.count
	end

	def no_more_players?
		players_count == 2
	end

	def winner
	return 'draw'	if player1.weapon == player2.weapon
	return player1 if player1.weapon == 'rock' && player2.weapon == 'scissors'
	return player2 if player2.weapon == 'rock' && player1.weapon == 'scissors'
	return player2 if player1.weapon == 'rock' && player2.weapon == 'paper'
	return player1 if player2.weapon == 'rock' && player1.weapon == 'paper'
	return player2 if player1.weapon == 'paper' && player2.weapon == 'scissors'
	return player1 if player2.weapon == 'paper' && player1.weapon == 'scissors'
	end
end