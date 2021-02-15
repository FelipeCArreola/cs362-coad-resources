require 'rails_helper'

RSpec.describe ResourceCategory, type: :model do

it 'has a name' do 
  expect(ResourceCategory.new).to respond_to(:name)
end

it 'has an \'active\' attribute' do
  expect(ResourceCategory.new).to respond_to(:active)
end

describe 'associations' do
  it 'has many tickets' do
    expect(ResourceCategory.new).to have_many(:tickets)
  end

  it 'has and belongs to many organizations' do
    expect(ResourceCategory.new).to have_and_belong_to_many(:organizations)
  end
end

describe 'validations' do
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_least(1).is_at_most(255)
    .on(:create) 
  }
  # TODO: validate {uniqueness_of :name, case_sensitive: false}
end


end
