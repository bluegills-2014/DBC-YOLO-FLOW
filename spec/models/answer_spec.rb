require 'rails_helper'

RSpec.describe Answer, :type => :model do
  it{ should validate_presence_of(:user_id)}
  it{ should validate_presence_of(:question_id)}
  it{ should belong_to(:user)}
  it{ should belong_to(:question)}
  it{ should have_many(:votes)}
  it{ should have_many(:comments)}
  it{ should allow_value("babababababababa").for(:body)}
  it{ should_not allow_value("b").for(:body)}

end
