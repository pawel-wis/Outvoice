FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.email }
    username { Faker::Internet.unique.username(specifier: 5..20) }
    password { "password123" }
    password_confirmation { "password123" }
  end
end
