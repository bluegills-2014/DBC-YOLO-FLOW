require 'rails_helper'

RSpec.describe SessionsHelper do

  describe "#current_user" do
    it 'should return current user or nil' do
      expect(helper.current_user).to eq(nil)
    end
  end

  describe "#logged_in?" do
    it "should return true or false if session is created" do
      expect(helper.logged_in?).to eq(false)
    end
  end
end
