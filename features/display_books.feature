Feature: Display list of Books in the Library
  As a user
  I want to be able to see a list of books in the library
  So that I can see if the book I want is offered by the library

Scenario: View the list of books being offered by the library
  Given I am on the Biblioteca home page
  When I choose "Display the list of Books"
  Then I should see "List of Books offered by the Library"