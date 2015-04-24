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
end