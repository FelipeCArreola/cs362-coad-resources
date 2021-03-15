require 'rails_helper'

RSpec.describe Region, type: :model do

  let(:region_test) {Region.new(name: 'region_name')}
  let(:region) {build(:region)}

  describe "attributes" do
    it {is_expected.to respond_to(:name) }
  end 
  # END Attributes

  describe 'association' do
    it 'has many tickets' do
      expect(Region.new).to have_many(:tickets)
    end
  end
  # END Associations

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_least(1).is_at_most(255)
      .on(:create) 
    }
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive() }
  end
  # END Validations

  describe 'member function(s):' do
    it 'has return name of region' do
       expect(region_test.to_s).to eq('region_name') 
    end  
  end
  # END Member Functions

  describe 'static (class) function(s):' do
    it 'has declares unspecified region' do
      expect(Region.unspecified.name).to eq('Unspecified') 
    end
  end
  # #END Static (Class) Functions
  
  
end
# END TEST
