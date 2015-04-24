require_relative 'partes_tablero.rb'

class Game < PartesTablero 
	def initialize(set)
		super()
		@set = set
	end

	attr_reader :set
end
