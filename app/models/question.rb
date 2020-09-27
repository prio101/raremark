class Question < ApplicationRecord
  belongs_to  :survey
  has_many  :question_answers
  has_one :question_type
end
