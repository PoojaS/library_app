require 'spec_helper'

describe BooksController do

   describe "GET 'index'" do

    it "should be successful" do
      get 'index'
      response.should be_success
    end

    it "should display books list" do

     Book.should_receive(:all).and_return(books=mock(:books))
     get :index
     assigns[:books].should==books

    end
  end

end
