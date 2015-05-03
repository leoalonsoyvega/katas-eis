require_relative 'Ship.rb'

class LargeShip < Ship 

	attr_accessor :hit
	
	def initialize
		@hit = 0
	end
	
	def shoot

		if self.hit == 1
			"Sink"
		else
			self.hit += 1
			"Hit"
		end
	end
end
