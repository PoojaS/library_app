require 'spec_helper'

describe Book do
  before (:each) do
    @book_attr= {:title => "ExampleBook",:author =>"ExampleAuthor",:no_of_copies_available=>1, :user_id => 1}
  end

  it "should create a new row with specified attributes" do
    Book.create!(@book_attr)
  end

  it "should require a title" do
    no_title_book = Book.new(@book_attr.merge(:title => ""))
    no_title_book.should_not be_valid
  end

  it "should require an author" do
    no_author_book=Book.new(@book_attr.merge(:author => ""))
    no_author_book.should_not be_valid
  end

end
