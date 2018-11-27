class Expert < ApplicationRecord
  # Relations
  has_many :work_experiences
  has_many :educations
  has_many :answers
  has_many :questions, through: :answers

  # Auth
  has_secure_password

  # Validations
  validates :user_name, presence: true
  validates :user_name, uniqueness: { case_sensitive: false }
  validates :full_name, presence: true
  # Ensures experts and users do not share usernames
  # so they will be able to both login from login button
  validate :no_user_shares_user_name



  def no_user_shares_user_name

    if User.all.any?{|user| self.user_name == user.user_name}
      self.errors[:base] << "Username has already been taken"
    end
  end

  def self.search_preview_results(search_term)
    Expert.all.select {|expert| expert.full_name.downcase.include?(search_term.downcase)}.slice(0,3)
  end

end
