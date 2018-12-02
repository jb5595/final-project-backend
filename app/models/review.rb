class Review < ApplicationRecord
  belongs_to :user
  belongs_to :expert

  def author_username
    self.user.user_name
  end
end
