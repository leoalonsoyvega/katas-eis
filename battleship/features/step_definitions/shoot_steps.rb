require_relative '../../app/models/Board.rb'


Given(/^a large ship in position: “(\d+):(\d+)”$/) do |arg1, arg2|
  @result_1 = @board.ship_shoot_at_position arg1.to_i, arg1.to_i
  @board.create_large_ship arg1.to_i, arg2.to_i
end

Given(/^I shoot to position “(\d+):(\d+)”$/) do |arg1, arg2|
  @result_2 = @board.ship_shoot_at_position arg1.to_i, arg1.to_i
end

Then(/^I get hit$/) do
  expect(@result_2).to eq "hit"
end

Then(/^I get water$/) do
  expect(@result_1).to eq "water"
end

Then(/^I get sink$/) do
  expect(@result_2).to eq "sink"
end
