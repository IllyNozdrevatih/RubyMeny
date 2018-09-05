FactoryBot.define do
  factory :dish do
    title { "Сельдь под шубой" }
    measure { "гр" }
    weight { "100" }
    price { "12" }
    category_id { "1" }
  end
end
