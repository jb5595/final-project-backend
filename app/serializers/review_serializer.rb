class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :details, :score, :author_username
end
