require_relative 'partes_tablero.rb'

class Game < PartesTablero 
	def initialize(set)
		super()
		@set = set
	end

	attr_reader :set

	def next(num)
		self.setElem(num, self.getElem(num) + 1)
		if self.getElem(num) == 6
			self.reset()
			self.set.next(num)
		end
	end
	
end
