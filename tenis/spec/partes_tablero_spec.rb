require 'rspec'
require_relative '../model/partes_tablero.rb'

describe 'PartesTablero' do
	it 'initialize' do
		partes = PartesTablero.new
		partes.elem1.should be 0
		partes.elem2.should be 0
	end

	it 'getElem(1) devuelve 0 y getElem(2) devuelve 0' do

		partes + PartesTablero.new
		partes.getElem(1).should be 0
		partes.getElem(2).should be 0
	end
end