FactoryGirl.define do
  factory :question_answer do
    answer  Faker::Lorem.word
    skipped [ true, false ].sample
    question
    survey
    
  end
end
