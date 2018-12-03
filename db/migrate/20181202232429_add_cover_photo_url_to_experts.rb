class AddCoverPhotoUrlToExperts < ActiveRecord::Migration[5.2]
  def change

    add_column :experts, :cover_photo_url, :string, default: "https://via.placeholder.com/851x351?text=Banner%20+Photo" 

  end
end
