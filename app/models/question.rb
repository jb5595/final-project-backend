class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :tag_questions
  has_many :tags, through: :tag_questions
end
