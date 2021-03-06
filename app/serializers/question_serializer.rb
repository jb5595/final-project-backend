class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :question_details, :upvote_score, :created_at, :number_of_answers
  has_many :tags
  has_many :answers
  belongs_to :user
end
