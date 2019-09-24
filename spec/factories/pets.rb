FactoryBot.define do
  factory :pet do
    name { "MyString" }
    birthdate { "2019-09-24" }
    pet_type { nil }
    pet_race { nil }
    size { "MyString" }
    gender { "MyString" }
    vacined { false }
    castred { false }
    vermifuged { false }
    chiped { false }
    adopted { false }
    description { "MyText" }
    user { nil }
  end
end
