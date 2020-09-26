class Survey < ApplicationRecord
  has_many  :questions
  has_many  :question_types
  has_many  :question_answers
end
