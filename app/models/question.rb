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

  def user_name
    self.user.user_name
  end

  def user_industry
    self.user.industry
  end
  def number_of_answers
    self.answers.length
  end
end
