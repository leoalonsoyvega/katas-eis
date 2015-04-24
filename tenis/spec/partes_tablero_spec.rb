require 'rspec'
require_relative "../model/partes_tablero.rb"

describe 'PartesTablero' do
	it 'initialize' do
		partes_tablero = PartesTablero.new
		partes_tablero.elem1.should be 0
		partes_tablero.elem2.should be 0
	end
	
	
end