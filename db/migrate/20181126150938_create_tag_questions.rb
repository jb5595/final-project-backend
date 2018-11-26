class CreateTagQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_questions do |t|
      t.integer :tag_id
      t.integer :question_id

      t.timestamps
    end
  end
end
