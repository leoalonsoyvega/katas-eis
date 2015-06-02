require_relative '../../app/models/Board.rb'

Given(/^a board with dimensions "(\d+)" x "(\d+)"$/) do |arg1, arg2|
  visit '/'
    fill_in(:x_board, :with => arg1)
    fill_in(:y_board, :with => arg1)
    click_button "submit_board"
end

Given(/^I create a small ship in position "(\d+):(\d+)"$/) do |arg1, arg2|
  fill_in(:x_s, :with => arg1)
  fill_in(:y_s, :with => arg2)
  click_button "submit_small_ship"
end

Then(/^position "(\d+):(\d+)" is not empty$/) do |arg1, arg2|
  fill_in(:x_e, :with => arg1)
  fill_in(:y_e, :with => arg2)
  click_button "submit_is_empty"
  expect(page.has_content? false).to eq(true)

end

Given(/^I create a large ship in position "(\d+):(\d+)"$/) do |arg1, arg2|
  fill_in(:x_l, :with => arg1)
  fill_in(:y_l, :with => arg2)
  click_button "submit_large_ship"
end

