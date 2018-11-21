class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :question
      t.string :question_details

      t.timestamps
    end
  end
end
