FactoryBot.define do
  factory :favorite do
    favoritable_id { 1 }
    favoritable_type { "MyString" }
    user { nil }
  end
end
