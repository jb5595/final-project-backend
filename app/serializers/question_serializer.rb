class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :question_details
  has_many :answers
  has_many :tags
  has_many :question_upvotes
  belongs_to :user
end
