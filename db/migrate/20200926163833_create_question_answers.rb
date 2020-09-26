class CreateQuestionAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :question_answers do |t|
      t.string  :answer
      t.references  :question, foreign_key: true
      t.references  :survey, foreign_key: true
      
      t.timestamps
    end
  end
end
