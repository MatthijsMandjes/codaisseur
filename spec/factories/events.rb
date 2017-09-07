FactoryGirl.define do
  factory :event do
    name              "event 1"
    description       { Faker::Lorem.sentence }
    location          { Faker::Address.city }
    price             3
    capacity          50
    includes_food     true
    includes_drinks   false
    starts_at         true
    ends_at           false
    user              { build(:user) }
    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
