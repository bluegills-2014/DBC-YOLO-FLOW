require 'rails_helper'

RSpec.describe Question do 
	it { should allow_value("0123456789").for(:body)}
	it { should_not allow_value("1").for(:body) }
	it { should allow_value("01234").for(:title)}
	it { should_not allow_value("1").for(:title) }
	it { should validate_presence_of(:user_id)}
	it { should belong_to(:user) }
	it { should have_many(:answers)}
	it { should have_many(:questions_tags)}
	it { should have_many(:tags)}
	it { should have_many(:votes)}
	it { should have_many(:comments)}
end