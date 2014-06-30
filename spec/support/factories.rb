FactoryGirl.define do
  factory :manufacturer do
    name 'Toyota'
    country 'Japan'
  end

  factory :car do
    sequence(:manufacturer_id) { |n| n}
    sequence(:color) { |n| "Generic Color #{n}" }
    year 2000
    mileage 1000
    description 'Generic Description'

    manufacturer
  end
end
