require_relative 'Ship.rb'

class LargeShip < Ship 

	attr_accessor :hit
	
	def initialize
		@hit = false
	end
	
	def shoot

		if self.hit
			"sink"
		else
			self.hit = true
			"hit"
		end
	end
end
