class Vote < ActiveRecord::Base
  validates :user_id, presence: true
  validates :voteable_id, presence: true
  validates :vote_direction, presence: true
  validates_inclusion_of :vote_direction, :in => [1,-1]

  belongs_to :user
  belongs_to :voteable, polymorphic: true
end
