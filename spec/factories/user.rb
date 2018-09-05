require 'faker'
FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "noz5@mail.ru" }
    role { "user" }
    created_at { "2018-08-31 12:06:31" }
    updated_at { "2018-08-31 12:06:31" }
  end
end
