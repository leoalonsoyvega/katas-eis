require 'rspec'
require_relative '../model/point.rb'

describe 'Point' do 
	it'initialize' do
		set = SetT.new
		game = Game.new(set)
		point = Point(game)
		point.elem1.should be 0
		point.elem2.should be 0
		point.game.should be game
	end
end