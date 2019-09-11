Given(/^I am on the main page$/) do
  visit root_path
end

Then(/^I should see the headline "([^"]*)"$/) do |arg|
  assert page.has_content? arg
end

And(/^I should see the link "([^"]*)"$/) do |arg|
  assert page.has_content? arg
end