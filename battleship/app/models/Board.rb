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
	   self.ships[x-1][y-1].is_empty?
  end

  def invalid_position? x,y
    x-1 < self.size[0] && y-1 < self.size[1] && x-1 >= 0 && y-1 >= 0
  end

  def create_small_ship x,y
	  if self.invalid_position?(x,y)
      self.ships[x-1][y-1] = SmallShip.new
    end

  end

  def create_large_ship x,y
    if self.invalid_position?(x,y)
      large_ship = LargeShip.new
  	  self.ships[x-1][y-1] = large_ship 
      self.ships[x-1][y] = large_ship
    end
  end

  def ship_shoot_at_position x,y
    if invalid_position?(x,y)
      self.ships[x-1][y-1].shoot
    else
      raise "Out of board!"
    end
  end
end