Feature: Issue books from the library
  As a user
  I want to be able to go to the issue page of the library
  So that i can issue books from the library

Scenario: View the issue page
  Given I am on the Biblioteca home page
  When I choose "Issue a Book"
  Then I should see "Book Issue"
