FactoryGirl.define do
  factory :manufacturer do
    sequence(:name) { |n| "Generic Manufacturer #{n}" }
    country 'Japan'
  end

  factory :car do
    manufacturer_id 1
    sequence(:color) { |n| "Generic Color #{n}" }
    year 2000
    mileage 1000
    description 'Generic Description'
  end
end
