require 'rspec'
require_relative '../model/tablero_tanis.rb'

describe 'TableroTenis' do 

	it 'initialize' do
		set = SetT.new
		game = Game.new(set)
		point = Point.new(game)
		tablero_t = TableroTenis(point,game,set)
		tablero_t.set.should be set
		tablero_t.game.should be game
		tablero_t.point.should be point
	end

end
