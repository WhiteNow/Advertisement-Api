FactoryBot.define do
    factory :company do
      name { Faker::Lorem.word }
      ruc { Faker::Lorem.word }
      logo { Faker::Lorem.word }
    end
  end