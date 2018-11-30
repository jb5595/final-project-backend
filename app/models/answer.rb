class Answer < ApplicationRecord
  belongs_to :expert
  belongs_to :question
  has_many :answer_upvotes
end
