Given /^I am on the Biblioteca home page$/ do
  visit path_to("the home page")
end

Then /^I should view the home page$/ do
 page.should have_xpath("//title", :text => "Biblioteca")
 page.should have_content("Welcome to Biblioteca Home page!!")
end
