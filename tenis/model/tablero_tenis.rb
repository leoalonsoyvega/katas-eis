require_relative '../model/set_t.rb'
require_relative '../model/game.rb'
require_relative '../model/point.rb'

class TableroTenis
	def initialize(set,game,point)
		@set = set
		@game = game
		@point = point
	end

	attr_reader :set, :game, :point

end