require 'rails_helper'

RSpec.describe Ticket, type: :model do

  describe "attributes" do
    it {is_expected.to respond_to(:name) }
    it {is_expected.to respond_to(:description) }
    it {is_expected.to respond_to(:phone) }
  end 
  # END Attributes

  describe 'associations' do
    [:region, :resource_category, :organization].each do |association|
      it { is_expected.to belong_to(association)} 
    end 
  end
  # END Associations

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_length_of(:name).is_at_least(1).is_at_most(255)
      .on(:create) 
    }
    # TODO: validate {uniqueness_of :name, case_sensitive: false}

  end
  # END Validations
  
end
# END TEST

