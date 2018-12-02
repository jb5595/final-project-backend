class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :question_details, :upvote_score, :created_at
  has_many :answers
  has_many :tags
  belongs_to :user
end
