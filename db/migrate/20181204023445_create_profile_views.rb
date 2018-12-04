class CreateProfileViews < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_views do |t|
      t.integer :expert_id

      t.timestamps
    end
  end
end
