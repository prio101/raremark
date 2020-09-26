class QuestionAnswer < ApplicationRecord
  belongs_to  :question
  belongs_to  :survey

  with_options :not_skipped do
    validates_presence_of :answer
  end

  private

  def not_skipped
    true unless self.skipped
  end
end
