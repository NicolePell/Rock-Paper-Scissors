class Game

	attr_accessor :players, :goodie, :baddie

	def initialize(goodie, baddie)
		@goodie = goodie
		@baddie = baddie
	end

	VERSUS = { rock: :scissors, scissors: :paper, paper: :rock }

	def winner(goodie_choice, baddie_choice)
		return "Draw" if goodie_choice == baddie_choice
		return "Goodie wins" if VERSUS[goodie_choice] == baddie_choice
		return "Baddie wins"

	end



end