require 'rails_helper'

RSpec.describe Tag, :type => :model do
  it{ should validate_uniqueness_of(:name)}
  it{ should have_many(:questions_tags)}
  it{ should have_many(:questions)}
  it{ should allow_value("bears").for(:name)}
  it{ should_not allow_value(true).for(:name)}
end
