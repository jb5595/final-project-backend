class CreateWebsiteClicks < ActiveRecord::Migration[5.2]
  def change
    create_table :website_clicks do |t|
      t.integer :expert_id

      t.timestamps
    end
  end
end
