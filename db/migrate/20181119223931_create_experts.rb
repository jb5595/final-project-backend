class CreateExperts < ActiveRecord::Migration[5.2]
  def change
    create_table :experts do |t|
      t.string :user_name
      t.string :full_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :website_url
      t.string :about
      t.string :profile_picture

      t.timestamps
    end
  end
end
