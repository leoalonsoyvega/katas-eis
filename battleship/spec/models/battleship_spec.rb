require_relative '../../app/models/Board.rb'
require_relative '../spec_helper.rb'

describe 'Battleship' do

  before (:each) do
    @board = Board.new 5,5
  end

  it 'create a Board' do
    expect(@board.kind_of? Board).to eq true
  end

  it 'should create a 5x5 Board' do
    expect(@board.size[0]).to eq 5
    expect(@board.size[1]).to eq 5
  end

  it 'create smallship in location 3:3' do
    @board.create_small_ship 3,3
    expect(@board.is_empty? 3,3).to eq false
  end

  it 'create large in location 3:3' do 
    @board.create_large_ship 3,3
    expect(@board.is_empty? 3,3).to eq false
  end

  it 'shoot board large_ship 2:2' do 
    @board.create_large_ship 2,2
    expect(@board.shoot 2,2).to eq "Hit"
  end

  it 'shoot board water 1:1' do
    expect(@board.shoot 1,1).to eq "Water"
  end

end