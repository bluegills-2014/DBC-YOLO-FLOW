class Question < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tags
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
end
