class Game

	attr_accessor :players

	def initialize
		@players = []
	end

	def add(player)
		players << player unless no_more_players?
	end

	def add_enemy(enemy)
		enemy
	end

	def players_count
		players.count
	end

	def no_more_players?
		players_count == 2
	end

	# def winner
	# 	if player.weapon == 'rock' && enemy.choice == 'scissors'
	# 		player
	# 	end
	# end
end