class Answer < ActiveRecord::Base
  validates :body, length: {minimum: 10, maximum: 3000}
  validates :user_id, presence: true
  validates :question_id, presence: true


  belongs_to :user
  belongs_to :question
  has_many :votes, as: :voteable
  has_many :comments, as: :commentable

  def vote_sum
    sum = self.votes.map{|vote| vote.vote_direction}.reduce(:+)
    sum ? sum : 0
  end
end
