class Vote < ActiveRecord::Base
  validates :user_id, presence: true
  validates :voteable_id, presence: true
  validates :vote_direction, presence: true
  validates_inclusion_of :vote_direction, :in => [1,-1]
  validates_uniqueness_of :user_id, scope: [:voteable_id, :voteable_type]

  belongs_to :user
  belongs_to :voteable, polymorphic: true
end
