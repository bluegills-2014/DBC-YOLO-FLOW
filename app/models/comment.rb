class Comment < ActiveRecord::Base
  validates :body, presence: true
  validates :body, length:{maximum: 2000}
  validates :user_id, presence: true
  validates :commentable_id, presence: true

  belongs_to :user
  has_many :votes, as: :voteable
  belongs_to :commentable, polymorphic: true
end
