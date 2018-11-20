class Expert < ApplicationRecord
  has_many :work_experiences
  has_many :educations
end
