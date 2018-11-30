class AddScoreToQuestionUpvotes < ActiveRecord::Migration[5.2]
  def change
    add_column :question_upvotes, :score, :integer, default: 0 
  end
end
