class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text  :question
      t.references :survey, foriegn_key: true
      t.timestamps
    end
  end
end
