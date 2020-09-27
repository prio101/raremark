class QuestionType < ApplicationRecord
  belongs_to  :question
  belongs_to  :survey

  enum question_type: [ :text, :single, :multiple ]

  validates_presence_of  :question_type
end
