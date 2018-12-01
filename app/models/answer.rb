class Answer < ApplicationRecord
  belongs_to :expert
  belongs_to :question
  has_many :answer_upvotes

  def upvote_score
    self.answer_upvotes.sum{|upvote| upvote.score}
  end
end
