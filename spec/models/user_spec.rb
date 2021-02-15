require 'rails_helper'

RSpec.describe User, type: :model do

  describe "attributes" do
    it {is_expected.to respond_to(:role) }
    it {is_expected.to respond_to(:email) }
  end 
  # END Attributes

  describe 'association' do
    it 'belongs to' do
      expect(User.new).to belong_to(:organization)
    end
  end
  # END Associations

  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_length_of(:email).is_at_least(1).is_at_most(255)
      .on(:create) 
    }
    # not sure if correct utilization of allow_value for verifying format
    it { is_expected.to allow_value('dog_cat21@gmail.com').for(:email)}
    
    # TODO: validate ...

  end
  # END Validations
  
end
# END TEST
