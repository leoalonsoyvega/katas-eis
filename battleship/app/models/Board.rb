require_relative 'Water.rb'
require_relative 'SmallShip.rb'
require_relative 'LargeShip.rb'

class Board
  attr_reader :size
  attr_accessor :ships
  
  def initialize(x,y)
    @size = [x,y]
    @ships = Array.new(x).map!{Array.new(y) {Water.new}}
  end

  def is_empty? x,y
	self.ships[x][y].kind_of? Water
  end

  def create_small_ship x,y
	self.ships[x][y] = SmallShip.new
  end

  def create_large_ship x,y
  	large_ship = LargeShip.new
  	self.ships[x][y] = large_ship
  	self.ships[x][y+1] = large_ship
  end

  def shoot x,y
  	self.ships[x][y].shoot
  end

end