require 'rspec'
require_relative '../model/partes_tablero.rb'

describe 'PartesTablero' do
	it 'initialize' do
		partes = PartesTablero.new
		partes.elem1.should be 0
		partes.elem2.should be 0
	end
end