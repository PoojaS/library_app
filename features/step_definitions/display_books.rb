When /^I choose "([^"]*)"$/ do |page|
  click_link(page)
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end
