FactoryGirl.define do
  factory :question_option do
    option  Faker::Lorem.word
    question
  end
end
