require 'rspec'
require_relative '../model/set_t.rb'

describe 'SetT' do 
	
	it 'initialize' do
		set = SetT.new
		set.elem1.should be 0
		set.elem2.should be 0	
	end

	
end