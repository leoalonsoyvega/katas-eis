require_relative 'Ship.rb'

class Water < Ship

	def is_empty?
		true
	end

	def shoot
		"water"
	end
end
