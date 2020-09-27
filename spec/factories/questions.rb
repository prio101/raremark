FactoryGirl.define do
  factory :question do
    question  Faker::Lorem.sentence
    survey
  end
end
