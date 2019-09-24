FactoryBot.define do
  factory :pet_race do
    name { "MyString" }
    description { "MyText" }
    pet_type { nil }
    slug { "MyString" }
    user { nil }
  end
end
