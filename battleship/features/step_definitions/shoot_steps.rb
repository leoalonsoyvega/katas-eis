require_relative '../../app/models/Board.rb'


Given(/^a large ship in position: “(\d+):(\d+)”$/) do |arg1, arg2|
  @board = Board.new 5,5
  @board.create_large_ship 3,3
end

