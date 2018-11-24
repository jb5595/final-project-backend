class Answer < ApplicationRecord
  belongs_to :expert
  belongs_to :question
end
