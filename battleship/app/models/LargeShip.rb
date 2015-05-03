require_relative 'Ship.rb'

class LargeShip < Ship 

	def shoot

		@hit = 0

		if @hit == 1
			"Sink"
		else
			@hit += 1
			"Hit"
		end
	end
end
