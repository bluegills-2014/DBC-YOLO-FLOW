require 'rails_helper'

Rspec.describe QuestionsTag, :type => :model do 
	it { should belong_to(:question) }
	it { should belong_to(:tag) }
end