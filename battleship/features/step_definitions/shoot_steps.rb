require_relative '../../app/models/Board.rb'


Given(/^a large ship in position: “(\d+):(\d+)”$/) do |arg1, arg2|
  fill_in(:x_l, :with => arg1)
  fill_in(:y_l, :with => arg2)
  click_button "submit_large_ship"
end

Given(/^I shoot to position “(\d+):(\d+)”$/) do |arg1, arg2|
  fill_in(:x_s, :with => arg1)
  fill_in(:y_s, :with => arg2)
  click_button "submit_shoot"
end

Then(/^I get hit$/) do
  expect(page.has_content? "hit").to eq(false)
end

Then(/^I get water$/) do
   expect(page.has_content? "water").to eq(true)
end

Then(/^I get sink$/) do
  expect(page.has_content? "sink").to eq(false)
end

When(/^I create a large ship in position "(.*?)" it should fail with "(.*?)"$/) do |arg1, arg2|
  fill_in(:x_l, :with => arg1)
  fill_in(:y_l, :with => arg2)
  click_button "submit_large_ship"

  expect(page.has_content? 'Out of board !!!').to eq(true)
end
