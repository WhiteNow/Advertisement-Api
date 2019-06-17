FactoryBot.define do
    factory :item do
      title { Faker::StarWars.character }
      description { Faker::Lorem.word }
      photo_url { Faker::Lorem.word }
      max { Faker::Number.number(10) }
      unlimited { false }
      used { Faker::Number.number(10) }
      category { Faker::StarWars.character }
      exp_date { Faker::StarWars.character }
      company_id { nil }
    end
  end