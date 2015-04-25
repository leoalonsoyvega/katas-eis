require 'rspec'
require_relative '../model/tablero_tenis.rb'

describe 'TableroTenis' do 

	it 'initialize' do
		set = SetT.new
		game = Game.new(set)
		point = Point.new(game)
		tablero_t = TableroTenis.new(set,game,point)
		tablero_t.set.should be set
		tablero_t.game.should be game
		tablero_t.point.should be point
	end

	it 'pointA() y PointB() -> contabilizar tanto para jugador1 --point--' do 
		set = SetT.new
		game = Game.new(set)
		point = Point.new(game)
		tablero_t = TableroTenis.new(set,game,point)
		tablero_t.point.elem1.should be 0
		tablero_t.point.elem2.should be 0
		tablero_t.pointB()
		tablero_t.point.elem2.should be 15 # modifica elem2 a 15
		tablero_t.pointA()
		tablero_t.point.elem1.should be 15 # modifica elem1 a 15
		tablero_t.pointA()
		tablero_t.point.elem1.should be 30
		tablero_t.pointA()
		tablero_t.point.elem1.should be 40
		tablero_t.pointA()
		tablero_t.point.elem1.should be 0 # elem1 y elem2 == 0 , 0
		tablero_t.point.elem1.should be 0 
		
	end

end
