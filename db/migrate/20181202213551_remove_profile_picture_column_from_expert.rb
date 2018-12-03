class RemoveProfilePictureColumnFromExpert < ActiveRecord::Migration[5.2]
  def change
    remove_column :experts, :profile_picture

  end
end
