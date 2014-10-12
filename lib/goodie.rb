class Goodie

	attr_accessor :name, :weapon

	def initialize(name)
		@name = name
	end

	def choose(weapon)
		weapon
	end
end