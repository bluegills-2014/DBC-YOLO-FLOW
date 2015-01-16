class Question < ActiveRecord::Base
  validates :body, length:{minimum: 10, maximum: 1000}
  validates :title, length:{minimum: 5, maximum: 300}
  # validates :user_id, presence: true



  belongs_to :user
  has_many :answers
  has_many :questions_tags
  has_many :tags, through: :questions_tags
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable
end
