require 'rspec'
require_relative '../model/set_t.rb'

describe 'SetT' do 

	it 'initialize' do
		set = SetT.new
		set.elem1.should be 0
		set.elem2.should be 0	
	end

	it 'next(1) modifica elem1, le suma uno' do
		set = SetT.new
		set.elem1.should be 0
		set.elem2.should be 0
		set.next(1)
		set.elem1.should be 1
		set.next(2)
		set.elem2.should be 1
		set.next(1)
		set.elem1.should be 0
		set.elem2.should be 0


end