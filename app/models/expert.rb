class Expert < ApplicationRecord
  # Relations
  has_many :work_experiences
  has_many :educations
  has_many :answers

  # Auth
  has_secure_password

  # Validations
  validates :user_name, uniqueness: { case_sensitive: false }

end
