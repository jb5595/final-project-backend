class AddUpvoteToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :upvotes, :integer, default: 0 
  end
end
