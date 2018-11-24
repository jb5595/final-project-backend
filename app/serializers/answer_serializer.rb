class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :content, :expert, :upvotes
end
