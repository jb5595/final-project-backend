class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "user_name"
      t.string "email"
      t.string "password_digest"
      t.string "revenue_range"
      t.string "size_range"
      t.string "profile_picture"
      t.string "location"
      t.timestamps
    end
  end
end
