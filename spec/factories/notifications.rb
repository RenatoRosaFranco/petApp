FactoryBot.define do
  factory :notification do
    body { "MyString" }
    readed { false }
    user { nil }
  end
end
