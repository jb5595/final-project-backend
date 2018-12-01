class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content, :expert, :answer_upvotes, :upvote_score
end
