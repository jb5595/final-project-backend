class CreateAnswerUpvotes < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_upvotes do |t|
      t.references :upvoter, polymorphic: true, index: true
      t.integer :answer_id
      t.integer :score, :integer, default: 0
      t.timestamps
    end
  end
end
