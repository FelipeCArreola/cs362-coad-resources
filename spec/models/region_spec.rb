require 'rails_helper'

RSpec.describe Region, type: :model do

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
    # TODO: validate {uniqueness_of :name, case_sensitive: false}

  end
  # END Validations
  
end
# END TEST
