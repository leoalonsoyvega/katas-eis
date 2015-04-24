require_relative 'partes_tablero.rb'

class Point < PartesTablero 
	def initialize(game)
		super()
		@game = game
	end
	attr_reader :game
end
