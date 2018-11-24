class User < ApplicationRecord
  # Relations
  has_many :questions

  # Auth
  has_secure_password

  # Validations
  validates :user_name, uniqueness: { case_sensitive: false }


end
