FactoryBot.define do
  factory :user do
    username { Faker::AquaTeenHungerForce.character }
    password { "dinkleberg" }
  end
end