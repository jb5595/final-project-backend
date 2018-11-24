class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :question_details
  has_many :answers
  belongs_to :user
end
