FactoryBot.define do
    factory :comment_article do
        content { Faker::Lorem.characters(number: 300) }
    end
end