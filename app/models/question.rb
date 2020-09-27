class Question < ApplicationRecord
  belongs_to  :survey
  has_many  :question_answers

  validates_presence_of :question
end
