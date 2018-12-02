class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :expert_id
      t.integer :user_id
      t.integer :score
      t.string :title
      t.string :details
      t.timestamps
    end
  end
end
