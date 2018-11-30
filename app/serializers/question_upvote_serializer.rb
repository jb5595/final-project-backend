class QuestionUpvoteSerializer < ActiveModel::Serializer
  attributes :id, :upvoter_id, :upvoter_type, :score
end
