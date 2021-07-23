FactoryBot.define do
  factory :article do
    title { Faker::Lorem.paragraph }
    body { Faker::Lorem.paragraph }
    url { Faker::Internet.url }
  end
end
