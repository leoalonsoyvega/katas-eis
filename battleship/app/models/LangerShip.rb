require_relative 'Ship.rb'

class LangerShip < Ship 

	def shot

		@hit = 0

		if @hit == 1
			"Sunk"
		else
			@hit += 1
			"Hit"
		end
	end
end
