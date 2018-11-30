class QuestionUpvote < ApplicationRecord
  belongs_to :upvoter, polymorphic: true
  belongs_to :question
  validates_uniqueness_of :question_id, scope: [:upvoter_type, :upvoter_id]


end
