require 'rails_helper'

RSpec.describe Organization, type: :model do

  attributes_array = [
    :name,                :status,          :phone, 
    :email,               :primary_name,    :secondary_name,
    :secondary_phone     
  ]

  describe "attributes" do
    attributes_array.each do |attribute|
      it {is_expected.to respond_to(attribute) }
    end
  end 
# END Attributes

  describe 'associations' do
    it 'has many tickets' do
      expect(subject).to have_many(:tickets)
    end

    it 'has many users' do
      expect(subject).to have_many(:users)
    end

    it 'has and belongs to many \'resource categories\'' do
      expect(subject).to have_and_belong_to_many(:resource_categories)
    end
  end 
# END Associations

  describe 'validations' do
  # validate presence
    attributes_array.each do |attribute|
      it { is_expected.to validate_presence_of(attribute) } 
    end 
  # validate length 
    [:name, :email ].each do |attribute|
      it { is_expected.to validate_length_of(attribute).is_at_least(1).is_at_most(255)
        .on(:create) 
      } 
    end 
  # TODO: validate {uniqueness_of :name, case_sensitive: false}
  end
# END Validations

end
# END TEST
