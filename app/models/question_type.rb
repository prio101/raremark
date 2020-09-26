class QuestionType < ApplicationRecord
  belongs_to  :question
  belongs_to  :survey

  enum question_type: [ :text, :single, :multiple ]

  validate_presence_of  :question_type
end
