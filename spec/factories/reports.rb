FactoryBot.define do
  factory :report do
    reportable_id { 1 }
    reportable_type { "MyString" }
    motive { "MyText" }
    user { nil }
  end
end
