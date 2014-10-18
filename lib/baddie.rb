class Baddie

	def weapons
		[:rock, :paper, :scissors]
	end

	def choice
		weapons.sample
	end
	
end


# if goodie_choice = goodie.choose(weapon)
# 	baddie_choice = baddie.choice
# return game.winner(goodie_choice, baddie_choice)