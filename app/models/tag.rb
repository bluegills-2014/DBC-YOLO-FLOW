class Tag < ActiveRecord::Base
  validates  :name, length: {minimum: 1, maximum: 200}
  validates  :name, uniqueness: true

  has_many :questions_tags
  has_many :questions, through: :questions_tags
end
