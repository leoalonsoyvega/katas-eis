require_relative '../../app/models/Board.rb'

Given(/^a board with dimensions "(.*?)" x "(.*?)"$/) do |arg1, arg2|
  @board = Board.new arg1.to_i, arg2.to_i
end

Given(/^I create a small ship in position "(.*?):(.*?)"$/) do |arg1, arg2|
  @board.create_small_ship arg1.to_i ,arg2.to_i
end

Then(/^position "(.*?):(.*?)" is not empty$/) do |arg1, arg2|
  expect(@board.is_empty? arg1.to_i, arg2.to_i).to eq false

end
