FactoryGirl.define do
  factory :question_type do
    question_type [ 1, 2, 3 ].sample
    question
    survey
  end
end
