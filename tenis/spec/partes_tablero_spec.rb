require 'rspec'
require_relative '../model/partes_tablero.rb'

describe 'PartesTablero' do
	it 'initialize' do
		partes = PartesTablero.new
		partes.elem1.should be 0
		partes.elem2.should be 0
	end

	it 'getElem(1) devuelve 0 y getElem(2) devuelve 0' do

		partes = PartesTablero.new
		partes.getElem(1).should be 0
		partes.getElem(2).should be 0
	end

	it 'set Elem(1,30) devuelve 30 en el primer elem1 y setElem(2,15) devuelve 15 en el segundo elem2' do
		partes = PartesTablero.new
		partes.elem1.should be 0
		partes.elem2.should be 0
		partes.setElem(1,30)
		partes.setElem(2,15)
		partes.elem1.should be 30
		partes.elem2.should be 15
	end
end