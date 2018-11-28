class CreateExpertTags < ActiveRecord::Migration[5.2]
  def change
    create_table :expert_tags do |t|
      t.integer :tag_id
      t.integer :expert_id
      t.timestamps
    end
  end
end
