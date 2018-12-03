class AddProfilePictureUrlToExpert < ActiveRecord::Migration[5.2]
  def change
    add_column :experts, :profile_picture_url, :string, default: "https://via.placeholder.com/851x351?text=851x351+Banner%20+Photo" 

  end
end
