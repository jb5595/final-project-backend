class AnswerUpvote < ApplicationRecord
  belongs_to :upvoter, polymorphic: true
  belongs_to :answer
  validates_uniqueness_of :answer_id, scope: [:upvoter_type, :upvoter_id]
end
