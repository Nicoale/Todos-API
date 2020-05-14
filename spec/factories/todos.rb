FactoryBot.define do
  factory :todo do
    title { "MyString" }
    date { "2020-05-14" }
    description { "MyText" }
    user { nil }
  end
end
