class Question < ActiveRecord::Base
  belongs_to :user
  has_many :questions_tags
  has_many :tags, through: :questions_tags
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
end
