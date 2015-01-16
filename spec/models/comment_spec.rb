require "rails_helper"

RSpec.describe Comment, :type => :model do
  it {should validate_presence_of(:body)}
  it {should validate_presence_of(:user_id)}
  it  {should belong_to(:user)}
  it  {should have_many(:votes)}
  it {should belong_to(:commentable)}
  it {should allow value("Good job with this question").for(:body)}
end
