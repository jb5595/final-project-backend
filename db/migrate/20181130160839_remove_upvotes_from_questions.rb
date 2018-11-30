class RemoveUpvotesFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :upvotes
  end
end
