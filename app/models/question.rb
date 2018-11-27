class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :tag_questions
  has_many :tags, through: :tag_questions


  def self.search_preview_results(search_term)
    Question.all.select {|question| question.question.downcase.include?(search_term.downcase)}.slice(0,3)
  end
end
