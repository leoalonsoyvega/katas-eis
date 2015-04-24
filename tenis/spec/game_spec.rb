require 'rspec'
require_relative '../model/game.rb'

describe 'Game' do
	
	it 'initilize' do
		set = SetT.new
		game = Game.new(set)
		game.elem1.should be 0
		game.elem2.should be 0
		game.set.should be set
	end

	it 'next(1) sumo uno a elem1 y next(2) suma uno a elem2, cuando llega a 6 ejecuta reset haciendo set.next()' do
		set = SetT.new
		game = Game.new(set)
		game.elem1.should be 0
		game.elem2.should be 0
		game.next(1)
		game.elem1.should be 1
		game.next(2)
		game.elem2.should be 1
		game.elem1 = 5
		game.set.elem1.should be 0  # ferifica que set elem1 este en 0
		game.next(1)
		game.elem1.should be 0	   	 
		game.elem2.should be 0
		game.set.elem1.should be 1 	# ferifica que set elem1 este en 1
	end
end