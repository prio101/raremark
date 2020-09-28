class QuestionAnswer < ApplicationRecord
  belongs_to  :question
  belongs_to  :survey

  with_options unless: :skipped? do
    validates_presence_of :answer
  end

  private

  def skipped?
    self.skipped
  end
end
