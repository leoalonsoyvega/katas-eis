require_relative '../../app/models/Board.rb'


Given(/^a large ship in position: “(\d+):(\d+)”$/) do |arg1, arg2|
  @board = Board.new 5,5
  @board.create_large_ship 3,3
end

Given(/^I shoot to position “(\d+):(\d+)”$/) do |arg1, arg2|
  @resultado = @board.shoot arg1.to_i, arg1.to_i
end

Then(/^I get hit$/) do
  expect(@resultado).to eq "Hit"
end
