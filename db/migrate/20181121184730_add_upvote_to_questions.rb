class AddUpvoteToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :upvotes, :integer, default: 0

  end
end
