FactoryBot.define do
  factory :profile do
    avatar { "MyString" }
    name { "MyString" }
    bio { "MyText" }
    state { nil }
    city { nil }
    user { nil }
  end
end
