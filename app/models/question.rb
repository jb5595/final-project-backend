class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :question_upvotes
  has_many :tag_questions
  has_many :tags, through: :tag_questions
  has_many :reviews


  def self.search_preview_results(search_term)
    Question.all.select {|question| question.question.downcase.include?(search_term.downcase)}.slice(0,3)
  end

  def upvote_score
    self.question_upvotes.sum{|upvote| upvote.score}
  end
end
