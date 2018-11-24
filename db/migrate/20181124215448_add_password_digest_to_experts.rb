class AddPasswordDigestToExperts < ActiveRecord::Migration[5.2]
  def change
    add_column :experts, :password_digest, :string
  end
end
