class CreateQuestionOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :question_options do |t|
      t.string  :option
      t.references  :question, foreign_key: true

      t.timestamps
    end
  end
end
