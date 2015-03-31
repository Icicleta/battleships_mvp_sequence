Given(/^I am in homepage$/) do
  visit('/')
end

When(/^I enter coordinates$/) do
  fill_in('coords', :with => 'A1')
end

And(/^I click the "([^"]*)" button$/) do |arg1|
  click_button(arg1)
end

Then(/^I see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end
