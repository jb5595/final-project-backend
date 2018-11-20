class CreateWorkExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :work_experiences do |t|
      t.string :title
      t.string :company
      t.string :location
      t.string :start_month
      t.string :start_year
      t.string :end_month
      t.string :end_year

      t.timestamps
    end
  end
end
