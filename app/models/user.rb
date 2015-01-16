class User < ActiveRecord::Base
  validates :username, presence: true
  validates :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, message: "That is not a valid e-mail address" }
  validates :password, presence: true
  validates :password, length: {minimum: 4, maximum: 10}






  has_many :votes
  has_many :comments
  has_many :questions
  has_many :answers
  has_many :tags, through: :questions
  has_secure_password

  
end
