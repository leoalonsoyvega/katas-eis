require_relative 'partes_tablero.rb'

class SetT < PartesTablero 
	def initialize
		super()
	end

	def next(num)
		self.setElem(num, self.getElem(num) + 1)
		if self.elem1 == 2 || self.elem2 == 2
			self.reset()
			puts "Win player " + num.to_s
		end
	end
end
