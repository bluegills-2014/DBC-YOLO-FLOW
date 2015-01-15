require 'rails-helper'

RSpec.describe User, :type => :model do
  it{ should validate_presence_of(:username) }
  it{ should validate_presence_of(:email) }
  it{ should validate_presence_of(:password) }
  it{ should have_many(:votes)}
  it{ should have_many(:comments)}
  it{ should have_many(:questions)}
  it{ should have_many(:answers)}
  it{ should have_many(:tags)}
  it{ should allow_value("banesrdjevic@gmail.com").for(:email) }
  it{ should_not allow_value("bears").for(:email) }
  it{ should have_secure_password}
  it{ should allow_value("bearchap").for(:password) }
  it{ should_not allow_value("b").for(:password) }
end
