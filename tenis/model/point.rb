require_relative 'partes_tablero.rb'

class Point < PartesTablero 
	def initialize(game)
		super()
		@game = game
	end
	attr_reader :game

	def next(num)
		case self.getElem(num)
		when 40
			self.reset()
			self.game.next(num)
		when 30
			self.setElem(num, 40)
		else
			self.setElem(num, self.getElem(num)+ 15)
		end
	end
end
