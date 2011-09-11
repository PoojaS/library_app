class Book < ActiveRecord::Base
  attr_accessible :title, :author ,:no_of_copies_available , :user_id
  validates(:title,:presence => true)
  validates(:author,:presence => true)
  belongs_to :user
end
