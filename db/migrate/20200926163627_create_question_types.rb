class CreateQuestionTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :question_types do |t|
      t.references  :question, foreign_key: true
      t.references  :survey, foreign_key: true
      t.timestamps
    end
  end
end
