FactoryBot.define do
  factory :cat do
    name { Faker::Name.name }
  end
end
