require 'spec_helper'

describe User do
    before (:each) do
    @user_attr= {:first_name => "Pooja",:last_name => "Subramanian"}
  end

  it "should create a new row with specified attributes" do
    User.create!(@user_attr)
  end

  it "should require a Fisrt name" do
    no_first_name_attr = User.new(@user_attr.merge(:first_name => ""))
    no_first_name_attr.should_not be_valid
  end

  it "should require a last name" do
    no_last_name_attr=User.new(@user_attr.merge(:last_name => ""))
    no_last_name_attr.should_not be_valid
  end
end
