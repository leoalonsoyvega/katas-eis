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

  it 'create smallship in location 3:3 and @board.is_empty? 3:3 => false' do
    @board.create_small_ship 3,3
    expect(@board.is_empty? 3,3).to eq false
  end

  it 'create large in location 2:2, @board.is_empty? 2:2 => false and @board.is_empty? 2:3 => false' do 
    @board.create_large_ship 2,2
    expect(@board.is_empty? 2,2).to eq false
    expect(@board.is_empty? 2,3).to eq false
  end

  it 'should @board.ship_shoot_at_position 2:2 => hit and @boad.ship_shoot_at_position 2:3 => sink' do 
    @board.create_large_ship 2,2
    expect(@board.ship_shoot_at_position 2,2).to eq "hit"
    expect(@board.ship_shoot_at_position 2,3).to eq "sink"
  end

  it 'should @board.ship_shoot_at_position 1:1 => water' do
    expect(@board.ship_shoot_at_position 1,1).to eq "water"
  end

  it 'should @board.invalid_position? 14:12 => true' do
      expect(@board.invalid_position? 14,12).to eq false
  end
end