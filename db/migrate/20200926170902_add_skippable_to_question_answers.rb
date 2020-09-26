class AddSkippableToQuestionAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column  :question_answers, :skipped, :boolean, default: false
  end
end
