FactoryBot.define do
  factory :user do
    username { Faker::AquaTeenHungerForce.character }
    password { "dinkleberg" }
  end

  factory :user_hw do
    username { "hello_world" }
  end

end