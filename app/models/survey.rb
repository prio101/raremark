class Survey < ApplicationRecord
  has_many  :questions
  has_many  :question_types
  has_many  :question_answers

  validates_presence_of :name
end
