class User < ApplicationRecord
  # Relations
  has_many :questions

  # Auth
  has_secure_password

  # Validations
  validates :user_name, uniqueness: { case_sensitive: false }
  # Ensures experts and users do not share usernames
  # so they will be able to both login from login button
  validate :no_expert_shares_user_name

  def no_expert_shares_user_name
    if Expert.all.any?{|expert| expert.user_name == self.user_name}
      self.errors[:base] << "Username has already been taken"
    end
  end


end
