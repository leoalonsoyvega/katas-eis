require 'rspec'
require_relative '../model/point.rb'

describe 'Point' do 
	it'initialize' do
		set = SetT.new
		game = Game.new(set)
		point = Point.new(game)
		point.elem1.should be 0
		point.elem2.should be 0
		point.game.should be game
	end

	it 'next modifica elem, si es 0->15, 15->30, 30->40 y 40-> reset y game.next' do
		set = SetT.new
		game = Game.new(set)
		point = Point.new(game)
		point.elem1.should be 0
		point.elem2.should be 0
		point.game.elem1.should be 0 # comprueba que game elem1 este en 0
		point.next(1)
		point.elem1.should be 15
		point.next(1)
		point.elem1.should be 30
		point.next(1)
		point.elem1.should be 40
		point.next(2)
		point.elem2.should be 15
		point.next(2)
		point.elem2.should be 30
		point.next(1)
		point.elem1.should be 0
		point.elem2.should be 0
		point.game.elem1.should be 1 # comprueba que game elem1 este en 1

	end
end