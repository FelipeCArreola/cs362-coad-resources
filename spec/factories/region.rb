FactoryBot.define do

  factory :region do
    name {'region_name'}
    
    # trait :to_s do
    #   name
    # end
    def to_s
      name
    end 
  end

end