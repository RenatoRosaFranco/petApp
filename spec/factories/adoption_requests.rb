FactoryBot.define do
  factory :adoption_request do
    accepted_adoption { false }
    pet { nil }
    user { nil }
  end
end
