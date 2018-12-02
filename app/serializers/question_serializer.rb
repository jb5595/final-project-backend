class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :question_details, :upvote_score
  has_many :answers
  has_many :tags
  belongs_to :user
end
